<?php	
	
	function nikellanjilo_style()
	{
		wp_enqueue_style('nikellanjilo-', get_template_directory_uri().'/css/my_style.css' );		
	}
	add_action( 'wp_enqueue_scripts', 'nikellanjilo_style' );
	
	function wpb_custom_new_menu() {
		register_nav_menu('my-custom-menu',__( 'My Custom Menu' ));
	}
	add_action( 'init', 'wpb_custom_new_menu' );
?>