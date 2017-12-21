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

/* GET home page. */
router.get('/', function(req, res, next) {
	console.log(req.cookies)
	if(req.cookies.users !== null){
		console.log(req.cookies.users)
		req.users = req.cookies.users
	}else{
		console.log(s)
	}
  res.render('index',req);
});
//主页
router.get('/admin',function(req,res,next){
	
	res.render('admin',{title:'百度新闻'})
	
});


//添加新闻
router.post('/addNews',function(req,res,next){
	
	var newsTitle = req.body.newsTitle;
	var pictureLink = req.body.pictureLink;
	var newsSource = req.body.newsSource;
	var newsDate = req.body.newsDate;
	var newsType = req.body.newsType;
	
	var sql = "INSERT INTO users (newsTitle, pictureLink, newsSource, newsDate, newsType, dataType) VALUES (?,?,?,?,?,?)"
	
	con.query(sql,[newsTitle,pictureLink,newsSource,newsDate,newsType,"数据"],function(err){
		
		if(!err){
			
			res.json({states:'ok',message:'插入一条新闻成功'})
			
		}
		
	})
	
}); 

//读取新闻
router.get('/readNews',function(req,res,next){
	con.query("SELECT id, newsTitle, pictureLink, newsSource, newsDate, newsType, img1, img2, img3, dataType FROM users WHERE dataType='数据'",function(err,results,f){
		if(!err){
			res.json({states:'ok',results:results})
		}
	})
});

//删除新闻
router.post('/delNews',function(req,res,next){
	var ind = req.body.ind;
	console.log(ind)
	var sql = "DELETE FROM users WHERE id=?";
	con.query(sql,[ind],function(err){
		if(!err){
			res.json({states:'ok',message:'删除成功'})
		}
	})
});

//点击获取
router.post('/showNews',function(req,res,next){
	var idMe = req.body.idMe;
	var sql = "SELECT * FROM users WHERE id=?";
	con.query(sql,[idMe],function(err,results,f){
		if(!err){
			res.json({states:'ok',message:'更新成功',results:results})
		}
	})
});
//点击修改
router.post('/reNews',function(req,res,next){
	var inds1 = req.body.indy;
	console.log(req.body)
	var newsTitle = req.body.newsTitle;
	var pictureLink = req.body.pictureLink;
	var newsSource = req.body.newsSource;
	var newsDate = req.body.newsDate;
	var newsType = req.body.newsType;
	var sql = "UPDATE users SET newsTitle=?,pictureLink=?,newsSource=?,newsDate=?,newsType=? WHERE id=?";
	con.query(sql,[newsTitle,pictureLink,newsSource,newsDate,newsType,inds1],function(err){
		if(!err){
			res.json({states:'ok',message:'此条新闻更新成功'})
		}
	})
})
//登录页
router.get('/login',function(req,res,next){
	
	res.render('login',{title:'百度新闻'})
	
});
//注册
router.post('/loginZhuce',function(req,res,next){
	console.log(req.body)
	var loginName = req.body.loginName;
	var loginPassword = req.body.loginPassword;
	sql = "INSERT INTO users ( dataType , loginName, loginPassword) VALUES (?,?,?)";
	con.query(sql,['登录',loginName,loginPassword],function(err){
		if(!err){
			res.json({states:'ok',message:'注册成功，请登录',error:'该用户名已注册'})
		}
	})
})
//登录
router.post('/loginDenglu',function(req,res,next){
	var loginName = req.body.loginName;
	var loginPassword = req.body.loginPassword;
	var sql = "SELECT * FROM users WHERE dataType='登录'";
	con.query(sql,function(err,results,f){
		var json = {
			'results':results
		}
		var ss = json.results;
		ss.forEach(function(ele,index){
			if(loginName == ele.loginName && loginPassword == ele.loginPassword){
				console.log('成功');
				res.cookie('users',{'username':loginName},{maxAge:60000,httpOnly:false});
				res.send({states:'ok',message:'登录成功'})
			}else{
				console.log('失败')
			}
		})
	})
	
})
module.exports = router;
