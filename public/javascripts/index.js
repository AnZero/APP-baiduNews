//导航
		var mySwiper2 = new Swiper('.swiper-1', {});

		$(document).ready(function() {
			//鼠标点击 导航加边框 改字体颜色

			$('#newsNav').on('click', 'a', function(e) {
				//阻止默认行为
				e.preventDefault();
				$(this).addClass('newsActive').siblings().removeClass('newsActive');
				console.log($(this).text());
				var json = {
					togeType: $(this).text()
				}
				//获取轮播图
				$.ajax({
					url: "/users/getMysqlData",
					type: 'post',
					data: json,
					success: function(data) {
						if(data.states == 'ok') {
							console.log(data.results[0])
							console.log(data.message);
							$('#lunBoTu-type').html('');
							var content = `<div class="swiper-wrapper" id="newsLunbo">
												<div class="swiper-slide"><img src="${data.results[0].img1}" /><p>${data.results[0].lunboType1}</p></div>
												<div class="swiper-slide"><img src="${data.results[0].img2}" /><p>${data.results[0].lunboType2}</p></div>
												<div class="swiper-slide"><img src="${data.results[0].img3}" /><p>${data.results[0].lunboType3}</p></div>
											</div>
											<div class="swiper-pagination"></div>`
							$('#lunBoTu-type').html(content);
							f1();
						}
					}
				})
				
				//获取数据
				$.ajax({
					url: "/users/getMysqlData2",
					type: 'post',
					data: json,
					success: function(data) {
						if(data.states == 'ok') {
							console.log([data.results]);
							$('#shuju-news').html('');
							var datas = data.results
							datas.forEach((ele,index)=>{
								console.log(ele.newsTitle)
								$('<dl></dl>').html(`<dt><img src="${ele.pictureLink}"/></dt>
													<dd>${ele.newsTitle}</dd>
													<dd>${ele.newsSource}</dd>
													<dd>${ele.newsDate.substr(0,10)}</dd>`).appendTo($('#shuju-news'));
																		
							})
		  				
							console.log(data.message);
							
						}
					}
				})
			})	
				
				
			

			//轮播图
			function f1(){
				var mySwiper2 = new Swiper('.swiper-2', {
				autoplay: 2000,
				loop: true,
				pagination: '.swiper-pagination',
				autoplayDisableOnInteraction: false
			});
			}
			f1()

		})