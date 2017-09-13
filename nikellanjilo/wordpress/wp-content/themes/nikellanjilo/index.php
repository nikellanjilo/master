<?php get_header(); ?>

	
  <div id = "main-page-content">
    <div class="fotorama" data-loop="true" data-autoplay="true" data-nav="thumbs" data-fit="cover" data-width = "calc(100% - 20px)" data-minheight = "250px" >
	
      <div data-img="https://cdn.lifehacker.ru/wp-content/uploads/2017/04/Kak-perevesti-na-russkij-yazyk-Telegram_1491078388-1140x570.jpg" class="any inverse"><a href = "http://vk.com">Telegram </a></div>
      <div data-img="http://alphapcbdesigns.com/wp/wp-content/uploads/2014/02/bg1.jpg" class="any inverse"><strong>Altium Designer - самоучители и статьи</strong></div>
      <div data-img="http://www.nanoxplore.com/img/footer.jpg" class="any inverse"><em>Схемотехника.FPGA. Исходники</em></div>
	  
  </div>

  <div id = "over-page-content">  
  <?php
$my_posts = get_posts('numberposts=10&category=A,B,C');
foreach ($my_posts as $post) :
setup_postdata($post);
?>
<div class = "over-page-block" >
<a href = "<?php the_permalink(); ?>" />
	<img src = "http://s.fotorama.io/okonechnikov/19-lo.jpg" class = "over-page-block-image" align = "left" vspace="5" hspace="5" />
	<h1><?php the_title(); ?></h1>
	Сервлет является интерфейсом Java, реализация которого расширяет функциональные возможности сервера. Сервлет взаимодействует с клиентами посредством принципа запрос-ответ.
Хотя сервлеты могут обслуживать любые запросы, они обычно используются для расширения веб-серверов. Для таких приложений технология Java Servlet определяет HTTP-специфичные сервлет классы.
Пакеты javax.servlet и javax.servlet.http обеспечивают интерфейсы и классы для создания сервлетов.

Первая спецификация сервлетов была создана в Sun Microsystems (версия 1.0 была закончена в июне 1997). Начиная с версии 2.3, спецификация сервлетов разрабатывалась под руководством Java Community Process. Стандарт JSR 53 определял как Servlet 2.3, так и спецификацию JavaServer Page 1.2. JSR 154 включает в себя спецификации Servlet 2.4 и 2.5. Текущая спецификация на 13 июня 2013 года — Servlet 3.1 (описана в JSR-340). </a></div>
<?php endforeach; ?>
    </div>
    </div>
	
	

<?php get_footer(); ?>

	
</html>
