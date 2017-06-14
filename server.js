const express = require('express');
const expressStatic = require('express-static');
const cookieParser = require('cookie-parser');
const cookieSession = require('cookie-session');
const bodyParser = require('body-parser');
const multer = require('multer');
const consolidate = require('consolidate');
const mysql = require('mysql');
const common = require('./libs/common');

var server = express();
server.listen(8080);

//createPool()是链接池，这样请求就不用重复通讯
// 而是直接先到池里找，找不到在找服务器，减少服务的压力
//createConnection()这是每次请求都要链接服务器不然内容是否一样
var db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'blog'
});

//1.解析cookie
server.use(cookieParser('sdfasl43kjoifguokn4lkhoifo4k3'));

//2.使用session
var arr = [];
for (var i = 0; i < 100000; i++) {
    arr.push('keys_' + Math.random());
}
server.use(cookieSession({name: 'zns_sess_id', keys: arr, maxAge: 20 * 3600 * 1000}));

//3.post数据
server.use(bodyParser.urlencoded({extended: false}));
server.use(multer({dest: './www/upload'}).any());

//4.配置模板引擎
//输出什么东西
server.set('view engine', 'html');
//模板文件放在哪儿
server.set('views', './template');
//哪种模板引擎
server.engine('html', consolidate.ejs);

//接收用户请求
server.get('/', (req, res, next) => {
    //查询banner
    db.query('SELECT*FROM banner_table', function (err, data) {
        if (err) {
            //状态码
            res.status(500).send('查询失败1').end();
        } else {
            res.banners = data;
            next();
        }
    });
});
server.get('/', (req, res, next) => {
    //查询新闻
    // console.log(res.banners);链式传值
    db.query('SELECT title,summary,ID FROM article_table', (err, data) => {
        if (err) {
            //状态码
            res.status(500).send('查询失败2').end();
        } else {
            res.article = data;
            next();
        }
    })
});
server.get('/', (req, res) => {
    res.render('index.ejs', {banners: res.banners, article: res.article})
});

// 我去下面一大堆回调地狱
server.get('/article', (req, res) => {
    if (req.query.id) {
        if (req.query.act = 'like') {
            //增加一个赞
            //sql 设置字段
            db.query(`UPDATE article_table SET n_like=n_like+1 WHERE ID=${req.query.id}`, (err, data) => {
                if (err) {
                    res.status(500).send('数据库出错了').end();
                    console.log(err);
                } else {
                    //显示文章
                    //指定表里的id用` xxx ` 反引号
                    db.query(`SELECT*FROM article_table WHERE ID=${req.query.id}`,
                        (err, data) => {
                            if (err) {
                                res.status(500).send('数据有问题').end();
                            } else {
                                if (data.length === 0) {
                                    res.status(404).send('没有文章').end();
                                } else {

                                    var articleData = data[0];
                                    articleData.sDate = common.time2date(articleData.post_time);
                                    //文章数据横首和横尾用正则加上<p></p>标签
                                    articleData.content = articleData.content.replace(/^/gm, '<p>').replace(/$/gm, '</p>');
                                    res.render('conText.ejs', {
                                        article_data: articleData
                                    });
                                }
                            }
                        })
                }
            });
        } else {
            //显示文章
            //指定表里的id用` xxx ` 反引号
            db.query(`SELECT*FROM article_table WHERE ID=${req.query.id}`,
                (err, data) => {
                    if (err) {
                        res.status(500).send('数据有问题').end();
                    } else {
                        if (data.length === 0) {
                            res.status(404).send('没有文章').end();
                        } else {

                            var articleData = data[0];
                            articleData.sDate = common.time2date(articleData.post_time);
                            //文章数据横首和横尾用正则加上<p></p>标签
                            articleData.content = articleData.content.replace(/^/gm, '<p>').replace(/$/gm, '</p>');
                            res.render('conText.ejs', {
                                article_data: articleData
                            });
                        }
                    }
                })
        }
    } else {
        res.status(404).send('找不到文章').end();
    }
    // res.render('conText.ejs', {})
});

//4.static数据
server.use(expressStatic('./www'));
