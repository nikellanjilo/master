<?php	
	
	function nikellanjilo_style()
	{
		wp_enqueue_style('nikellanjilo-', get_template_directory_uri().'/css/my_style.css' );		
	}
	add_action( 'wp_enqueue_scripts', 'nikellanjilo_style' );
?>