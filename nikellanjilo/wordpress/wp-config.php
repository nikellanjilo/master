<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'test');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'qYh?eHUw){[p@*b|` S]sX#&twgdWCXJnevTKe?]J+k#q?.dm}Ttl8MJ;.!}N(FO');
define('SECURE_AUTH_KEY',  'A!Pu5pJ)Hk&,kCu>v#WHepxg|^&5k)Qea&i%/Gmr;%-r~~p6,Dac>YzQM8.ztKT]');
define('LOGGED_IN_KEY',    '7wqlD$ WU &R _HAk :-m$@L/M&.}Z&,=t*-OxsduJAh~M]1dEDf6%tO$&?=?F.I');
define('NONCE_KEY',        '$bz K< kPzV&c.%=}tF5c{s3JR=w4{mqDX0}2/re|@^v32ubKH6P/OUKh/b!^4{:');
define('AUTH_SALT',        'I9g:!-zT:x03bD!deKN@G0|@Cn%.3qG.^qoEH-Ajr7+A:=-D.YPwm_vmZSxb<HAV');
define('SECURE_AUTH_SALT', '3r1Mp]Tk;J0Pb#{nQ%P$%y]J)K^?g9XybcI%_?!ev[=[I^1qKHLME>E_3eS$%RCZ');
define('LOGGED_IN_SALT',   'cl] 0FPhFB {)-A|}V(whsfyVrS?sMS%Waevg[=Y_f+$oi=bo,I6J3Z-,p<4=km$');
define('NONCE_SALT',       'yUIersu3&3:3%O:YpfgA^C%m=m<&+R0#MB9]S2S6um}Rv8$0e$PqYmPbp[g|]Y<`');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
