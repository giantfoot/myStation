$(function(){
	
	$.fn.prepare_sliderMyCustomSpan3 = function(){	
		var x_pos = 0;
		var li_items_n = 0;	
		var right_clicks = 0;		
		var left_clicks = 0;					
		var li_col = $(".myCustomSpan3 .cms-home #slider_list > li");		
		var li_width = li_col.outerWidth(true);		
		var viewWindow = Math.round($('.myCustomSpan3 .cms-home .block-slider').width()/li_width);
		
		li_col.each(function(index){			
			x_pos += $(this).outerWidth(true);
			li_items_n++;								
		})	
		
		right_clicks = li_items_n - viewWindow;
		total_clicks = li_items_n - viewWindow;		
		
		$('.myCustomSpan3 .cms-home #slider_list').css('position','relative');
		$('.myCustomSpan3 .cms-home #slider_list').css('left','0px');
		$('.myCustomSpan3 .cms-home #slider_list').css('width', x_pos+'px');
		
		var is_playing = false;
		var completed = function() { is_playing = false; }
		
		$('.myCustomSpan3 .cms-home #left_but').click( function(){									
			cur_offset = $('.myCustomSpan3 .cms-home #slider_list').position().left;
			if (!is_playing){						
				if (left_clicks > 0) {
						is_playing = true; $('.myCustomSpan3 .cms-home #slider_list').animate({'left': cur_offset + li_width + 'px'}, 700, "linear", completed); 
						right_clicks++; 
						left_clicks--;
					} 
					else {
						is_playing = true;
						$('.myCustomSpan3 .cms-home #slider_list').animate({'left':    -li_width*total_clicks	+ 'px'}, 700, "linear", completed); 
						right_clicks = 0;
						left_clicks = total_clicks;
					}
			}
		});		

		$('.myCustomSpan3 .cms-home #right_but').click( function(){
			if (!is_playing){			
				cur_offset = $('.myCustomSpan3 .cms-home #slider_list').position().left;			
			 	if (right_clicks > 0) {
						is_playing = true; 
						$('.myCustomSpan3 .cms-home #slider_list').animate({'left': cur_offset - li_width + 'px'},700, "linear", completed );
						right_clicks--; left_clicks++; 
				} 
				else { 
						is_playing = true; $('.myCustomSpan3 .cms-home #slider_list').animate({'left':    0	+ 'px'},700, "linear", completed ); 
						left_clicks = 0;
						right_clicks = total_clicks;
					}			 
			}
		});	
		
	}




$.fn.prepare_sliderMyCustomSpan4 = function(){	
	var x_pos = 0;
	var li_items_n = 0;	
	var right_clicks = 0;		
	var left_clicks = 0;					
	var li_col = $(".myCustomSpan4 #slider_list > li");		
	var li_width = li_col.outerWidth(true);		
	var viewWindow = Math.round($('.myCustomSpan4 .block-slider').width()/li_width);
	
	li_col.each(function(index){			
		x_pos += $(this).outerWidth(true);
		li_items_n++;								
	})	
	
	right_clicks = li_items_n - viewWindow;
	total_clicks = li_items_n - viewWindow;		
	
	$('.myCustomSpan4 #slider_list').css('position','relative');
	$('.myCustomSpan4 #slider_list').css('left','0px');
	$('.myCustomSpan4 #slider_list').css('width', x_pos+'px');
	
	var is_playing = false;
	var completed = function() { is_playing = false; }
	
	$('.myCustomSpan4 #left_but').click( function(){									
		cur_offset = $('.myCustomSpan4 #slider_list').position().left;
		if (!is_playing){						
			if (left_clicks > 0) {
				is_playing = true; $('.myCustomSpan4 #slider_list').animate({'left': cur_offset + li_width + 'px'}, 700, "linear", completed); 
				right_clicks++; 
				left_clicks--;
			} 
			else {
				is_playing = true;
				$('.myCustomSpan4 #slider_list').animate({'left':    -li_width*total_clicks	+ 'px'}, 700, "linear", completed); 
				right_clicks = 0;
				left_clicks = total_clicks;
			}
		}
	});		
	
	$('.myCustomSpan4 #right_but').click( function(){
		if (!is_playing){			
			cur_offset = $('.myCustomSpan4 #slider_list').position().left;			
			if (right_clicks > 0) {
				is_playing = true; 
				$('.myCustomSpan4 #slider_list').animate({'left': cur_offset - li_width + 'px'},700, "linear", completed );
				right_clicks--; left_clicks++; 
			} 
			else { 
				is_playing = true; $('.myCustomSpan4 #slider_list').animate({'left':    0	+ 'px'},700, "linear", completed ); 
				left_clicks = 0;
				right_clicks = total_clicks;
			}			 
		}
	});	
	
}

$.fn.over = function(){						
	$(this).hover(
	   function () {
	 	 $(this).addClass("over");
	   },
	   function () {
	 	 $(this).removeClass("over");
	   }
	 );		
   }
});
