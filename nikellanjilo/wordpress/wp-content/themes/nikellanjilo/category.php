<script src="<?php echo get_template_directory_uri().'/js/jmobile_index.js'?>"></script>
<?php get_header(); ?>

	
  <div id = "category-page-content">
    
  <div id = "over-page-content">  
  
  <?php
	$categories = get_the_category();
	$category_id = $categories[0]->cat_ID;
    $args = array( 'category' => $category_id, 'post_type' =>  'post' ); 
    $postslist = get_posts( $args );    
    foreach ($postslist as $post) :  setup_postdata($post); 
    ?>  
 
<div class = "over-page-block" >
<a href = "<?php the_permalink(); ?>" />
	<img src = "http://s.fotorama.io/okonechnikov/19-lo.jpg" class = "over-page-block-image" align = "left" vspace="5" hspace="5" />
	<h1><?php the_title(); ?></h1>
	Hello.Сервлет является интерфейсом Java, реализация которого расширяет функциональные возможности сервера. Сервлет взаимодействует с клиентами посредством принципа запрос-ответ.
Хотя сервлеты могут обслуживать любые запросы, они обычно используются для расширения веб-серверов. Для таких приложений технология Java Servlet определяет HTTP-специфичные сервлет классы.
Пакеты javax.servlet и javax.servlet.http обеспечивают интерфейсы и классы для создания сервлетов.

Первая спецификация сервлетов была создана в Sun Microsystems (версия 1.0 была закончена в июне 1997). Начиная с версии 2.3, спецификация сервлетов разрабатывалась под руководством Java Community Process. Стандарт JSR 53 определял как Servlet 2.3, так и спецификацию JavaServer Page 1.2. JSR 154 включает в себя спецификации Servlet 2.4 и 2.5. Текущая спецификация на 13 июня 2013 года — Servlet 3.1 (описана в JSR-340). </a></div>
    <?php endforeach; ?> 
    </div>
    </div>
	
	

<?php get_footer(); ?>

	
</html>
