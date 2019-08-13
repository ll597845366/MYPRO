<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div class="portfolio">
		<div class="container">   
			<h2 class="agileits-title">event</h2> 
			<div class="gallery-agileinfo">
				<ul class="simplefilter">
					<li class="active" data-filter="all">所有活动</li>
					<li data-filter="1">六一儿童节活动</li>
					<li data-filter="2">篮球比赛活动</li>
					<li data-filter="3">开班照片</li>
				</ul>
				<div class="filtr-container">
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Busy streets">
						<div class="agileits-img">
							<a href="/staticKJ/images/ly1.png" class="swipebox" title="六一活动">
								<img class="img-responsive  " src="/staticKJ/images/ly1.png"  /> 
							</a> 
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="2" data-sort="Luminous night">
						<div class="agileits-img">
							<a href="/staticKJ/images/lq1.png" class="swipebox" title="天府中心篮球比赛">
								<img src="/staticKJ/images/lq1.png"  class="img-responsive" />
							</a>	
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="2" data-sort="City wonders">
						<div class="agileits-img">
							<a href="/staticKJ/images/lq2.png" class="swipebox" title="天府中心篮球比赛活动">
								<img src="/staticKJ/images/lq2.png" alt="" class="img-responsive  " />
							</a>	
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="3" data-sort="Industrial site">
						<div class="agileits-img">
							<a href="/staticKJ/images/kb1.png" class="swipebox" title="CGB-1903开班合照">
								<img src="/staticKJ/images/kb1.png" alt="" class="img-responsive " />
							</a>	
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="3" data-sort="In production">
						<div class="agileits-img">
							<a href="/staticKJ/images/kb2.jpg" class="swipebox" title="CGB-1905开班照片">
								<img src="/staticKJ/images/kb2.jpg" alt="" class="img-responsive  " />
							</a>	
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Peaceful lake">
						<div class="agileits-img">
							<a href="/staticKJ/images/ly2.png" class="swipebox" title="六一活动布置现场">
								<img src="/staticKJ/images/ly2.png" alt="" class="img-responsive  " />
							</a>	
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Peaceful lake">
						<div class="agileits-img">
							<a href="/staticKJ/images/ly3.png" class="swipebox" title="六一活动迎接学员">
								<img src="/staticKJ/images/ly3.png" alt="" class="img-responsive  " />
							</a>	
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Peaceful lake">
						<div class="agileits-img">
							<a href="/staticKJ/images/ly4.png" class="swipebox" title="六一活动迎接学员">
								<img src="/staticKJ/images/ly4.png" alt="" class="img-responsive  " />
							</a>	
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Peaceful lake">
						<div class="agileits-img">
							<a href="/staticKJ/images/ly5.png" class="swipebox" title="六一活动学员领取奖品">
								<img src="/staticKJ/images/ly5.png" alt="" class="img-responsive  " />
							</a>	
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Peaceful lake">
						<div class="agileits-img">
							<a href="/staticKJ/images/ly6.png" class="swipebox" title="六一活动迎接学员">
								<img src="/staticKJ/images/ly6.png" alt="" class="img-responsive  " />
							</a>	
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Peaceful lake">
						<div class="agileits-img">
							<a href="/staticKJ/images/ly7.png" class="swipebox" title="六一活动">
								<img src="/staticKJ/images/ly7.png" alt="" class="img-responsive  " />
							</a>	
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Peaceful lake">
						<div class="agileits-img">
							<a href="/staticKJ/images/ly8.png" class="swipebox" title="六一活动">
								<img src="/staticKJ/images/ly8.png" alt="" class="img-responsive  " />
							</a>	
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-6 filtr-item" data-category="1" data-sort="Peaceful lake">
						<div class="agileits-img">
							<a href="/staticKJ/images/ly9.png" class="swipebox" title="六一活动">
								<img src="/staticKJ/images/ly9.png" alt="" class="img-responsive  " />
							</a>	
						</div>
					</div>
				   <div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			//Initialize filterizr with default options
			$('.filtr-container').filterizr();
		});
	</script>	
	<!-- Kick off Filterizr -->
	<!-- swipe box js -->

	<script type="text/javascript">
			jQuery(function($) {
				$(".swipebox").swipebox();
			});
	</script> 
	
	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>

	<script type="text/javascript">
		
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>   


</body>
</html>