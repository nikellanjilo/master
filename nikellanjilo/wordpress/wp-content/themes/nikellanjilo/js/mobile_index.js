window.onload = function() {
		if (document.body.clientWidth < 600)
		{
			document.getElementById('leftcol').style.letterSpacing  = "0px";
			var a = document.querySelectorAll("#leftcol .link_col > a");
			var b = document.querySelectorAll(".fotorama .any ");
			var c = document.querySelectorAll(".over-page-block");
			var d = document.querySelectorAll(".over-page-block-image");
			
			for(var i = 0; i < a.length; i++){
				if (i == 3)
				{
					a[i].style.fontSize = "12px";
					a[i].style.lineHeight = "2.0";
				}
				else
					a[i].style.fontSize = "18px"; 
			}
			for (var j = 0; j < b.length; j++)
			{
				b[j].style.fontSize = "20px";
			}
				
			for	(var z = 0; z < c.length; z++)
			{
				c[z].style.width = "calc(100% - 40px)";
				c[z].style.height = "calc(100% - 40px)";
				c[z].style.overflow = "hidden ";
			}
			
			for (var j = 0; j < d.length; j++)
			{
				d[j].style.width = "50px";
				d[j].style.height = "50px";
			}
		}
		}