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
  
	<div class = "other-articles">
		<div class = "article"> 
			<a href =""> 
				<img src = "http://forum.cxem.net/uploads/photos/profile/photo-173949.jpg" alt = "Image" class = "article-image" /> 
				<h1>The Jupiter trojans</h1>
				The Jupiter trojans, commonly called Trojan asteroids or just Trojans, are a large group of asteroids that share the planet Jupiter's orbit around the Sun. Relative to Jupiter, each Trojan librates around one of Jupiter's two stable Lagrange points: L4, lying 60° ahead of the planet in its orbit, and L5, 60° behind. Jupiter trojans are distributed in two elongated, curved regions around these Lagrangian points with an average semi-major axis of about 5.2 AU.[1]
				The first Jupiter trojan discovered, 588 Achilles, was spotted in 1906 by German astronomer Max Wolf.[2] A total of 6,515 Jupiter trojans have been found as of May 2017.[3] By convention they are each named after a mythological figure from the Trojan War, hence the name "Trojan". The total number of Jupiter trojans larger than 1 km in diameter is believed to be about 1 million, approximately equal to the number of asteroids larger than 1 km in the asteroid belt.[1] Like main-belt asteroids, Jupiter trojans form families.[4]. 
			</a> 
		</div>
		
		<div class = "article">
			<a href =""> 
				<img src = "http://nashzeleniymir.ru/wp-content/uploads/2016/08/%D0%9B%D0%B8%D1%81%D0%B0-%D1%84%D0%BE%D1%82%D0%BE.jpg" alt = "Image" class = "article-image" /> 
				<h1>Neptune trojans</h1>
				Jupiter trojans are dark bodies with reddish, featureless spectra. No firm evidence of the presence of water, or any other specific compound on their surface has been obtained, but it is thought that they are coated in tholins, organic polymers formed by the Sun's radiation.[5] The Jupiter trojans' densities (as measured by studying binaries or rotational lightcurves) vary from 0.8 to 2.5 g·cm−3.[4] Jupiter trojans are thought to have been captured into their orbits during the early stages of the Solar System's formation or slightly later, during the migration of giant planets.[4]
				The term "trojan" has come to be used more generally to refer to other small Solar System bodies with similar relationships to larger bodies: for example, there are both Mars trojans and Neptune trojans, and Saturn has trojan moons.[Note 1] NASA has announced the discovery of an Earth trojan.[7][8] The term "Trojan asteroid" is normally understood to specifically mean the Jupiter trojans because the first Trojans were discovered near Jupiter's orbit and Jupiter currently has by far the most known Trojans.[3] 
			</a>
		</div>
		
		<div class = "article">
			<a href =""> 
				<img src = "http://cs9.pikabu.ru/post_img/2017/01/02/10/1483373230114762965.jpg" alt = "Image" class = "article-image" />
					<h1> Italian-born mathematician Joseph-Louis Lagrange</h1>
					In 1772, Italian-born mathematician Joseph-Louis Lagrange, in studying the restricted three-body problem, predicted that a small body sharing an orbit with a planet but lying 60° ahead or behind it will be trapped near these points.[2] The trapped body will librate slowly around the point of equilibrium in a tadpole or horseshoe orbit.[9] These leading and trailing points are called the L4 and L5 Lagrange points.[10][Note 2] The first asteroids trapped in Lagrange points were observed more than a century after Lagrange's hypothesis. Those associated with Jupiter were the first to be discovered.[2]
					E. E. Barnard made the first recorded observation of a trojan, (12126) 1999 RM11 (identified as A904 RD at the time), in 1904, but neither he nor others appreciated its significance at the time.[11] Barnard believed he had seen the recently discovered Saturnian satellite Phoebe, which was only two arc-minutes away in the sky at the time, or possibly an asteroid. The object's identity was not understood until its orbit was calculated in 1999.[11]
			</a>
		</div>
	</div>
	
	<?php get_footer(); ?>

</html>
