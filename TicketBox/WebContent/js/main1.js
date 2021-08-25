


var width=1201;
var $first=$(".first");
var $second=$(".second");
var imageArr=new Array("../image/111.png", "../image/222.png", "../image/333.png", "../image/444.png");
var count=1;
var timer=setInterval("move()", 4000);

function move(){
	$(".thumbs ul").stop().animate({left:"-="+width+"px"}, 0,
		function(){
			count=(count+1)%4;
			$first.css({left:"+="+(width*2)+"px"});
			$first.find("img").attr("src", imageArr[count]);

			if($first.attr("class") == "first"){
				$first=$(".second");
				$second=$(".first");
			}else{
				$first=$(".first");
				$second=$(".second");
			}
		}
	);
}