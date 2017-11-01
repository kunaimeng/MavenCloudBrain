			var audio = document.getElementById("player"); 
  			$("#datatable").on("click",".fa-play",function () {
  				$("#player").attr("src",$(this).attr("mp3"));	
  		    	audio.play();
  		    	//开始的时候全局的暂停隐藏，全部显示成待播放
  		    	$("#datatable .fa-pause").css('display','none');
  		    	$("#datatable .fa-play").css('display','block');
  		    	//播放的个数显示暂停按钮，播放按钮隐藏
  		    	$(this).css('display','none'); 
  		    	$(this).next().css('display','block');
  		    	$("#playername").html($(this).attr("mp3name"));
  			}); 
  			
  			$("#datatable").on("click",".fa-pause",function () {
  		    	audio.pause();
  				$(this).css('display','none'); 
  		    	$(this).prev().css('display','block'); 
  			}); 
  			
  			//picture num
  			function num(){
  		  		var index1=0,index2=0,index3=0,index4=0,index5=0,index6=0;
  			  	for(var i=1,t=6;i<=t;i++){
  			  		var oLi = $("#picture .col-sm-12 .pic-"+i+" .x_panel ul li").length;
  			  		if(i==1){
  			  			index1=oLi;
  			  		}
  			  		if(i==2){
  			  			index2=oLi;
  			  		}
  			  		if(i==3){
  			  			index3=oLi;
  			  		}
  			  		if(i==4){
  			  			index4=oLi;
  			  		}
  			  		if(i==5){
  			  			index5=oLi;
  			  		}
  			  		if(i==6){
  			  			index6=oLi;
  			  		}
  			  	}
  			  	var station = 1;
  			  	if(index1!=index2){
  			  		station=2;
  			  	}
  			  	if(index2!=index3){
  			  		station=3;
  			  	}
  			  	if(index3!=index4){
  			  		station=4;
  			  	}
  			  	if(index4!=index5){
  			  		station=5;
  			  	}
  			  	if(index5!=index6){
  			  		station=6;
  			  	}
  			  	return station;
  		  	}
  			
  			
  			
  		//JS布局
  			var imglen = $("#pic img").length;//长度 有几个
  			var lastIndex = Math.floor(imglen/2);//确定中间图片序列号
  			var imgleft =[];
  			//给每一个img添加初始样式
  			for(var i = 0; i<imglen;i++){//i++  i=i+1
  				if(i<lastIndex){
  					$("#pic img").eq(i).addClass("fron");
  				}else if(i>lastIndex){
  					$("#pic img").eq(i).addClass("back");
  				}else{
  					$("#pic img").eq(i).addClass("now");
  				}
  			}
  			//把图片排列起来
  			function mid(){
  				var owid = $("#pic").width();//窗口宽度
  				var mid = $(".now").index();//获取当前序列
  				$(".now").css("left",owid/2-150+"px");//当前图片位置
  				for(var i =0;i<imglen;i++){
  					$("#pic img").eq(i).css("left",owid/2-150+100*(i-mid)+"px");
  					imgleft[i]=parseInt($("#pic img").eq(i).css("left"));//存储left值到数组
  				}
  			}
  			mid();
  			$(window).resize(function(){mid();});//调整窗口再执行
  			//点击事件
  			$("#pic img").click(function(){
  				var nowmid = $(this).index();//获取当前序列
  				for(var i =0;i<imglen;i++){
  					imgleft[i] -= 100*(nowmid-lastIndex);
  					$("#pic img").eq(i).css("left",imgleft[i]);
  				}
  				for(var i = 0; i<imglen;i++){//i++  i=i+1
  					if(i<nowmid){
  						$("#pic img").eq(i).removeClass().addClass("fron")
  					}else if(i>nowmid){
  						$("#pic img").eq(i).removeClass().addClass("back")
  					}else{
  						$("#pic img").eq(i).removeClass().addClass("now")
  					}
  				}
  				lastIndex = nowmid;//替换当前图片序列
  			})
  		  	