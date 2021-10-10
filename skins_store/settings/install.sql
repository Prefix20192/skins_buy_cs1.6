    CREATE TABLE `skins__purchases`  (
    `id` int(9) NOT NULL PRIMARY KEY,
    `user_id` int(9) NOT NULL,
    `skin_id` int(9) NOT NULL,
    `server_id` int(9) NOT NULL,
    `model_name` varchar(33) NOT NULL,
    `price` int(9) NOT NULL,
    `nickname` varchar(33) NOT NULL,
    `password` varchar(256) NOT NULL,
    `timeleft` int(15) NOT NULL,
    `enable` int(15) NOT NULL
    );

    CREATE TABLE `skins__store`  (
    `id` int(11) NOT NULL PRIMARY KEY ,
    `server_id` int(11) NULL,
    `name` varchar(255) NOT NULL,
    `price` int(11) NOT NULL,
    `model_name` varchar(255) NOT NULL,
    `image` text NOT NULL
    );


    INSERT INTO `modules` (`name`, `tpls`, `info`, `files`) VALUES ('skins_store', 'none', 'Данный модуль позволит Вам добавить дополнительный магазин для покупки игровых скинов на Ваших серверах.<br>Модуль позволяет создать скины под каждый сервер индивидуально.<br>
Ссылка на страницу продажи скинов: <a href="../skins_store" target="_blank">перейти</a><br><br>
<a class="btn btn-default btn-sm f-l mr-5" href="/admin/skins_store" target="_blank">Настройки модуля</a><br><br>', '<script src="{site_host}/modules_extra/skins_store/ajax/ajax.js?v={cache}"></script>
<link rel="stylesheet" href="{site_host}modules_extra/skins_store/templates/{template}/css/style.css?v={cache}">');
    SET @modile_id = LAST_INSERT_ID();
    
    INSERT INTO `pages` (`file`, `url`, `name`, `title`, `description`, `keywords`, `kind`, `image`, `robots`, `privacy`, `type`, `active`, `module`, `page`, `class`) VALUES
    ('modules_extra/skins_store/base/index.php', 'skins_store', 'skins_store', 'Магазин игровых скинов', 'Магазин игровых скинов', 'skins_store,store', 1, 'files/miniatures/standart.jpg', 1, 1, 1, 1, @modile_id, 0, 0);
    INSERT INTO `pages` (`file`, `url`, `name`, `title`, `description`, `keywords`, `kind`, `image`, `robots`, `privacy`, `type`, `active`, `module`, `page`, `class`) VALUES
    ('modules_extra/skins_store/base/admin/index.php', 'admin/skins_store', 'admin_skins_store', 'Настройка магазина', 'none', 'skins_store,store', 1, 'files/miniatures/standart.jpg', 0, 0, 2, 1, @modile_id, 0, 0);
