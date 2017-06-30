window.onload = function() {
		if (document.body.clientWidth < 600)
		{
			document.getElementById('leftcol').style.letterSpacing  = "0px";
			var a = document.querySelectorAll("#leftcol .link_col > a");
			var b = document.querySelectorAll(".article");
			var c = document.querySelectorAll(".article h1");
			for(var i = 0; i < a.length; i++){
				if (i == 3)
				{
					a[i].style.fontSize = "12px";
					a[i].style.lineHeight = "2.0";
				}
				else
					a[i].style.fontSize = "18px"; 
			}
			for (var i = 0; i < b.length; i++)
			{
				b[i].style.fontSize = "12px";
			}
			for (var i = 0; i < c.length; i++)
			{
				c[i].style.fontSize = "13px";
			}
		}
}