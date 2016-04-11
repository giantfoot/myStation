/*$.noConflict();*/
$(function(){
	$(window).bind('load', function(){
		$().prepare_sliderMyCustomSpan3(); 
		$('.myCustomSpan3 .cms-home #slider_list > li').over();
		//Download by http://www.codefans.net
		//=======intro================
		var slider_link = $('.myCustomSpan3 .cms-home #right_but');
		var slider_link_index = 1;
		var slider_count = $('.myCustomSpan3 .cms-home #slider_list > li').size();	

		function slider_intro(){
			if(slider_link_index <= slider_count){
				slider_link.trigger('click');
				slider_link_index++;
				setTimeout(function(){slider_intro()}, 3000); //select change time
			}
		}
		setTimeout(function(){slider_intro()}, 3000)
	  //===============
		
		$('.myCustomSpan3 .cms-home #left_but').hover(
		   function () {
			 $(this).addClass("over");
		   },
		   function () {
			 $(this).removeClass("over");
		   })
		
		$('.myCustomSpan3 .cms-home #right_but').hover(
		   function () {
			 $(this).addClass("over");
		   },
		   function () {
			 $(this).removeClass("over");
		   })
		
		$('.myCustomSpan3 .cms-home .products-grid li').hover(
		   function () {
			 $(this).find('.product-name').stop(true, true).slideDown("slow");
		   },
		   function () {
			 $(this).find('.product-name').hide("slow");
		   })
	});	
	
	
	
	
	
	
	
	
	$(window).bind('load', function(){
		$().prepare_sliderMyCustomSpan4(); 
		$('.myCustomSpan4 .cms-home #slider_list > li').over();
		//Download by http://www.codefans.net
		//=======intro================
		var slider_link = $('.myCustomSpan4 .cms-home #right_but');
		var slider_link_index = 1;
		var slider_count = $('.myCustomSpan4 .cms-home #slider_list > li').size();	
		
		function slider_intro(){
			if(slider_link_index <= slider_count){
				slider_link.trigger('click');
				slider_link_index++;
				setTimeout(function(){slider_intro()}, 4000); //select change time
			}
		}
		setTimeout(function(){slider_intro()}, 4000)
		//===============
		
		$('.myCustomSpan4 .cms-home #left_but').hover(
				function () {
					$(this).addClass("over");
				},
				function () {
					$(this).removeClass("over");
				})
				
				$('.myCustomSpan4 .cms-home #right_but').hover(
						function () {
							$(this).addClass("over");
						},
						function () {
							$(this).removeClass("over");
						})
						
						$('.myCustomSpan4 .cms-home .products-grid li').hover(
								function () {
									$(this).find('.product-name').stop(true, true).slideDown("slow");
								},
								function () {
									$(this).find('.product-name').hide("slow");
								})
	});	
});
	