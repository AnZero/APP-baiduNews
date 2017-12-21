$(document).ready(function() {

	var inds = null;
	var flag = true;

	function fn() {
		//读取新闻
		$.ajax({
			url: '/readNews',
			type: 'get',
			success: function(data) {
				if(data.states == 'ok') {
					var datas = data.results;

					datas.forEach((ele, index) => {

						var str = `<span class="col-md-1 idName">${ele.id}</span>
								<span class="col-md-2 idName">${ele.newsType}</span>
								<span class="col-md-4" contenteditable="true">${ele.newsTitle}</span>
								<span class="col-md-3">${ele.newsDate.substr(0,10)}</span>
								<span class="col-md-2"><button>删除</button></span>`
						$('<a href="#" class="list-group-item newsListA"></a>').html(str).appendTo($('#content'));
					})
				}
			}

		})
	}
	fn()

	//点击获取
	$('#content').on('click', 'a', function(e) {
		var idMe = $(this).find('.idName').text();
		var json = {
			idMe: idMe
		}
		inds = idMe;
		$.ajax({
			url: '/showNews',
			type: 'post',
			data: json,
			success: function(data) {
				if(data.states == 'ok') {
					var str = data.results[0].newsDate;
					var str2 = str.substr(0, 10);
					$('#newsTitle').val(data.results[0].newsTitle);
					$('#pictureLink').val(data.results[0].pictureLink);
					$('#newsSource').val(data.results[0].newsSource);
					$('#newsDate').val(str2);
					$('#newsType').val(data.results[0].newsType);
					flag = false;
				}
			}
		})
	})

	$('#tijiao').click(function(e) {
		e.preventDefault();
		if(flag) {
			var json = {
				newsTitle: $('#newsTitle').val(),
				pictureLink: $('#pictureLink').val(),
				newsSource: $('#newsSource').val(),
				newsDate: $('#newsDate').val(),
				newsType: $('#newsType').val()
			}
			//添加新闻
			$.ajax({
				url: '/addNews',
				type: 'post',
				data: json,
				success: function(data) {
					if(data.states == 'ok') {
						$('#content').text('');
						fn();
						alert(data.message);
						$('#newsTitle').val('');
						$('#pictureLink').val('');
						$('#newsSource').val('');
						$('#newsDate').val('');
						$('#newsType').val('推荐');
					}
				}
			})
		} else {
			//修改新闻
			var json = {
				indy: inds,
				newsTitle: $('#newsTitle').val(),
				pictureLink: $('#pictureLink').val(),
				newsSource: $('#newsSource').val(),
				newsDate: $('#newsDate').val().substr(0, 10),
				newsType: $('#newsType').val()
			}
			console.log(json)
			$.ajax({
				url: '/reNews',
				type: 'post',
				data: json,
				success: function(data) {
					if(data.states == 'ok') {
						$('#content').text('');
						fn();
						alert(data.message);
						$('#newsTitle').val('');
						$('#pictureLink').val('');
						$('#newsSource').val('');
						$('#newsDate').val('');
						$('#newsType').val('推荐');
					}
				}
			})
		}

	})

	//点击删除
	$('#content').on('click', 'button', function(e) {
		e.preventDefault();
		var ind = $(this).parent().parent().find('.idName').text();
		var json = {
			ind: ind
		}
		var r = confirm('是否删除此新闻');
		if(r) {
			$.ajax({
				url: '/delNews',
				type: 'post',
				data: json,
				success: function(data) {
					if(data.states == 'ok') {
						$('#content').text('');
						fn()
						confirm(data.message)
					}
				}
			})
		}

	})

	
})