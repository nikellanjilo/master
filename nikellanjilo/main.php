<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<script>
		//document.write(document.getElementById('leftcol').clientWidth);
		
		//document.write(document.body.clientWidth);
		
		//	function showMy()
		//	{
		//		var td = document.getElementById('leftcol');
		//		alert("height - " + td.getAttribute('height') + " | width - " + td.getAttribute('width'));
		//	}		
		//	document.addEventListener("DOMContentLoaded", showMy)
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
	 </script
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name = "description" content = "Морской котик знает все ... об электронике, сайтах и путешествиях" >
  <link href="css/my_style.css" type="text/css" rel="stylesheet" media="all" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 1. Link to jQuery (1.8 or later), -->
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> <!-- 33 KB -->

  <!-- fotorama.css & fotorama.js. -->
  <link  href="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet"> <!-- 3 KB -->
  <script src="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script> <!-- 16 KB -->

  <title>Название страницы</title>
 </head>
 <body>
	 <div id = "header">
		 <a href = ""> N - Network</a> <br/>
		 Морской котик знает все о электронике, сайтах и путешествиях
    <form>
       <p>
			<input type="text" placeholder="Котик знает все, проверь" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Камооон...не бойся'" />
			<input type="submit" value="Найти">
		</p>
    </form>
	
	 </div>

 <div id="leftcol">
    <div class = "link_col"><a href="">Telegram</a><br>			</div>
    <div class = "link_col"><a href="">Altium Designer</a><br>  </div>
    <div class = "link_col"><a href="">Ubuntu</a><br>           </div>
    <div class = "link_col"><a href="">Схемотехника</a><br>     </div>
	<div class = "link_col"><a href="">Блог</a><br>             </div>
	<div class = "link_col"><a href="">Проекты</a><br>          </div>
	
	<div id="ads-main-page">
		
		
	</div>
  </div>
	
  <div id = "main-page-content">
    <div class="fotorama" data-loop="true" data-autoplay="true" data-nav="thumbs" data-fit="cover" data-width = "calc(100% - 20px)" data-minheight = "250px" >
	
      <div data-img="https://cdn.lifehacker.ru/wp-content/uploads/2017/04/Kak-perevesti-na-russkij-yazyk-Telegram_1491078388-1140x570.jpg" class="any inverse"><a href = "http://vk.com">Telegram </a></div>
      <div data-img="http://alphapcbdesigns.com/wp/wp-content/uploads/2014/02/bg1.jpg" class="any inverse"><strong>Altium Designer - самоучители и статьи</strong></div>
      <div data-img="http://www.nanoxplore.com/img/footer.jpg" class="any inverse"><em>Схемотехника.FPGA. Исходники</em></div>
	  
  </div>

  <div id = "over-page-content">
    <div class = "over-page-block" >
	<a href = "" />
	<img src = "http://s.fotorama.io/okonechnikov/19-lo.jpg" class = "over-page-block-image" align = "left" vspace="5" hspace="5" />
	<h1>Сервлет является интерфейсом Java, реализация которого расширяет</h1>
	Сервлет является интерфейсом Java, реализация которого расширяет функциональные возможности сервера. Сервлет взаимодействует с клиентами посредством принципа запрос-ответ.
Хотя сервлеты могут обслуживать любые запросы, они обычно используются для расширения веб-серверов. Для таких приложений технология Java Servlet определяет HTTP-специфичные сервлет классы.
Пакеты javax.servlet и javax.servlet.http обеспечивают интерфейсы и классы для создания сервлетов.

Первая спецификация сервлетов была создана в Sun Microsystems (версия 1.0 была закончена в июне 1997). Начиная с версии 2.3, спецификация сервлетов разрабатывалась под руководством Java Community Process. Стандарт JSR 53 определял как Servlet 2.3, так и спецификацию JavaServer Page 1.2. JSR 154 включает в себя спецификации Servlet 2.4 и 2.5. Текущая спецификация на 13 июня 2013 года — Servlet 3.1 (описана в JSR-340). </a></div>
    
	<div class = "over-page-block" >
	<a href = "" />
	<img src = "http://s.fotorama.io/okonechnikov/19-lo.jpg" class = "over-page-block-image" align = "left" vspace="5" hspace="5" />
	<h1>Сервлет является интерфейсом Java, реализация которого расширяет</h1>
	Сервлет является интерфейсом Java, реализация которого расширяет функциональные возможности сервера. Сервлет взаимодействует с клиентами посредством принципа запрос-ответ.
Хотя сервлеты могут обслуживать любые запросы, они обычно используются для расширения веб-серверов. Для таких приложений технология Java Servlet определяет HTTP-специфичные сервлет классы.
Пакеты javax.servlet и javax.servlet.http обеспечивают интерфейсы и классы для создания сервлетов.

Первая спецификация сервлетов была создана в Sun Microsystems (версия 1.0 была закончена в июне 1997). Начиная с версии 2.3, спецификация сервлетов разрабатывалась под руководством Java Community Process. Стандарт JSR 53 определял как Servlet 2.3, так и спецификацию JavaServer Page 1.2. JSR 154 включает в себя спецификации Servlet 2.4 и 2.5. Текущая спецификация на 13 июня 2013 года — Servlet 3.1 (описана в JSR-340). </a></div>

    <div class = "over-page-block" >
	<a href = "" />
	<img src = "http://s.fotorama.io/okonechnikov/19-lo.jpg" class = "over-page-block-image" align = "left" vspace="5" hspace="5" />
	<h1>Сервлет является интерфейсом Java, реализация которого расширяет</h1>
	Сервлет является интерфейсом Java, реализация которого расширяет функциональные возможности сервера. Сервлет взаимодействует с клиентами посредством принципа запрос-ответ.
Хотя сервлеты могут обслуживать любые запросы, они обычно используются для расширения веб-серверов. Для таких приложений технология Java Servlet определяет HTTP-специфичные сервлет классы.
Пакеты javax.servlet и javax.servlet.http обеспечивают интерфейсы и классы для создания сервлетов.

Первая спецификация сервлетов была создана в Sun Microsystems (версия 1.0 была закончена в июне 1997). Начиная с версии 2.3, спецификация сервлетов разрабатывалась под руководством Java Community Process. Стандарт JSR 53 определял как Servlet 2.3, так и спецификацию JavaServer Page 1.2. JSR 154 включает в себя спецификации Servlet 2.4 и 2.5. Текущая спецификация на 13 июня 2013 года — Servlet 3.1 (описана в JSR-340).</a> </div>

<div class = "over-page-block" >
<a href = "" />
	<img src = "http://s.fotorama.io/okonechnikov/19-lo.jpg" class = "over-page-block-image" align = "left" vspace="5" hspace="5" />
	<h1>Сервлет является интерфейсом Java, реализация которого расширяет</h1>
	Сервлет является интерфейсом Java, реализация которого расширяет функциональные возможности сервера. Сервлет взаимодействует с клиентами посредством принципа запрос-ответ.
Хотя сервлеты могут обслуживать любые запросы, они обычно используются для расширения веб-серверов. Для таких приложений технология Java Servlet определяет HTTP-специфичные сервлет классы.
Пакеты javax.servlet и javax.servlet.http обеспечивают интерфейсы и классы для создания сервлетов.

Первая спецификация сервлетов была создана в Sun Microsystems (версия 1.0 была закончена в июне 1997). Начиная с версии 2.3, спецификация сервлетов разрабатывалась под руководством Java Community Process. Стандарт JSR 53 определял как Servlet 2.3, так и спецификацию JavaServer Page 1.2. JSR 154 включает в себя спецификации Servlet 2.4 и 2.5. Текущая спецификация на 13 июня 2013 года — Servlet 3.1 (описана в JSR-340).</a> </div>

<div class = "over-page-block" >
<a href = "" />
	<img src = "http://s.fotorama.io/okonechnikov/19-lo.jpg" class = "over-page-block-image" align = "left" vspace="5" hspace="5" />
	<h1>Сервлет является интерфейсом Java, реализация которого расширяет</h1>
	Сервлет является интерфейсом Java, реализация которого расширяет функциональные возможности сервера. Сервлет взаимодействует с клиентами посредством принципа запрос-ответ.
Хотя сервлеты могут обслуживать любые запросы, они обычно используются для расширения веб-серверов. Для таких приложений технология Java Servlet определяет HTTP-специфичные сервлет классы.
Пакеты javax.servlet и javax.servlet.http обеспечивают интерфейсы и классы для создания сервлетов.

Первая спецификация сервлетов была создана в Sun Microsystems (версия 1.0 была закончена в июне 1997). Начиная с версии 2.3, спецификация сервлетов разрабатывалась под руководством Java Community Process. Стандарт JSR 53 определял как Servlet 2.3, так и спецификацию JavaServer Page 1.2. JSR 154 включает в себя спецификации Servlet 2.4 и 2.5. Текущая спецификация на 13 июня 2013 года — Servlet 3.1 (описана в JSR-340).</a> </div>

<div class = "over-page-block" >
<a href = "" />
	<img src = "http://s.fotorama.io/okonechnikov/19-lo.jpg" class = "over-page-block-image" align = "left" vspace="5" hspace="5" />
	<h1>Сервлет является интерфейсом Java, реализация которого расширяет</h1>
	Сервлет является интерфейсом Java, реализация которого расширяет функциональные возможности сервера. Сервлет взаимодействует с клиентами посредством принципа запрос-ответ.
Хотя сервлеты могут обслуживать любые запросы, они обычно используются для расширения веб-серверов. Для таких приложений технология Java Servlet определяет HTTP-специфичные сервлет классы.
Пакеты javax.servlet и javax.servlet.http обеспечивают интерфейсы и классы для создания сервлетов.

Первая спецификация сервлетов была создана в Sun Microsystems (версия 1.0 была закончена в июне 1997). Начиная с версии 2.3, спецификация сервлетов разрабатывалась под руководством Java Community Process. Стандарт JSR 53 определял как Servlet 2.3, так и спецификацию JavaServer Page 1.2. JSR 154 включает в себя спецификации Servlet 2.4 и 2.5. Текущая спецификация на 13 июня 2013 года — Servlet 3.1 (описана в JSR-340).</a> </div>

<div class = "over-page-block" >
<a href = "" />
	<img src = "http://s.fotorama.io/okonechnikov/19-lo.jpg" class = "over-page-block-image" align = "left" vspace="5" hspace="5" />
	<h1>Сервлет является интерфейсом Java, реализация которого расширяет</h1>
	Сервлет является интерфейсом Java, реализация которого расширяет функциональные возможности сервера. Сервлет взаимодействует с клиентами посредством принципа запрос-ответ.
Хотя сервлеты могут обслуживать любые запросы, они обычно используются для расширения веб-серверов. Для таких приложений технология Java Servlet определяет HTTP-специфичные сервлет классы.
Пакеты javax.servlet и javax.servlet.http обеспечивают интерфейсы и классы для создания сервлетов.

Первая спецификация сервлетов была создана в Sun Microsystems (версия 1.0 была закончена в июне 1997). Начиная с версии 2.3, спецификация сервлетов разрабатывалась под руководством Java Community Process. Стандарт JSR 53 определял как Servlet 2.3, так и спецификацию JavaServer Page 1.2. JSR 154 включает в себя спецификации Servlet 2.4 и 2.5. Текущая спецификация на 13 июня 2013 года — Servlet 3.1 (описана в JSR-340). </a></div>

    </div>
    </div>
	
	

  </div>

	<div id = "footer">
		Блог Никита Малышева. Все права защищены.
	</div>
 </body>
</html>
