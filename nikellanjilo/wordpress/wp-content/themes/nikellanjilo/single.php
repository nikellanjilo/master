<?php get_header(); ?>	
	<div id="ads">
		<script type="text/javascript" src="//vk.com/js/api/openapi.js?146"></script>

		<!-- VK Widget -->
		<div id="vk_groups"></div>
		<script type="text/javascript">
		var c = document.querySelectorAll(".link_col")[0];
		if (document.body.clientWidth > 600)
		{
		VK.Widgets.Group("vk_groups", {mode: 3, width: c.offsetWidth, color1: 'F2F2F2', color2: '08088A'}, 87716343);
		}
		</script>
		
	</div>
	
	
  <div id="rightcol">
		<div id = "content">
			<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

 <?php the_title(); ?>
 <?php the_content(); ?>
 <?php echo get_the_date(); ?>

<?php endwhile; ?>
<?php endif; ?>
		</div>
  </div>
  <?php
		while ( have_posts() ) : the_post();
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;
		endwhile;
  ?>
  
	<div class = "other-articles">
	<?php
	$categories = get_the_category();
	$a = 0;
	$category_id = $categories[0]->cat_ID;
    $args = array( 'category' => $category_id, 'post_type' =>  'post' ); 
    $postslist = get_posts( $args );    
    foreach ($postslist as $post) :  setup_postdata($post);
		if ($a < 3 ) {
			$a = $a + 1;
    ?>  
		<div class = "article"> 
			<a href ="<?php the_permalink(); ?>"> 
				<img src = "http://forum.cxem.net/uploads/photos/profile/photo-173949.jpg" alt = "Image" class = "article-image" /> 
				<h1><?php the_title(); ?></h1>
				<?php the_content(); ?> 
			</a> 
		</div>
		 <?php
		}
		else 
			break;

		 endforeach; ?> 
	</div>
	
	
	<?php get_footer(); ?>

</html>
