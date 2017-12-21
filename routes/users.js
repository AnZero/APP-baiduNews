var express = require('express');
var router = express.Router();
//引入数据库
var mysql = require('mysql');

var con = mysql.createConnection({
	host : "localhost",
	port : 8889,
	user : "root",
	password : 'root',
	database : 'news'
});

con.connect();
/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

//点击切换轮播图
router.post('/getMysqlData',function(req,res,next){
	var togeType = req.body.togeType;
	console.log(togeType);
	var sql1 = "SELECT img1, img2, img3, dataType, lunboType1, lunboType2, lunboType3 FROM users WHERE newsType=? AND dataType='轮播图'";
	con.query(sql1,[togeType],function(err,results,f){
		console.log(results)
		res.json({states:'ok',message:'获取成功',results:results})
	});

	
})
//点击加载数据
router.post('/getMysqlData2',function(req,res,next){
	var togeType = req.body.togeType;
	console.log(togeType);
	var sql2 = "SELECT newsTitle, pictureLink, newsSource, newsDate FROM users WHERE newsType=? AND dataType='数据'"	
	con.query(sql2,[togeType],function(err,results,f){
		console.log(results)
		res.json({states:'ok',message:'获取成功',results:results})
	})
	
})


module.exports = router;
