<?php
	$group_id = "80658171"; // ID группы
	$topic_id = "38343594"; // ID обсуждения
	$count = 100; // Количество комментариев, которое будет выведено
	$extended = 1; // Будут ли загружены профили
	$need_likes = 1; // Будут ли загружены лайки
	$sort = "asc"; // Отображаем с начала(asc) или конца(desc)
	$version = "5.80"; // Версия VK API (На текущий момент менять не нужно)
	$access_token = '2c60a4bd2c60a4bd2c60a4bdc92c05122022c602c60a4bd7718deda84d30c6ceae56cff';



	$page = file_get_contents("https://api.vk.com/method/board.getComments?" . "group_id=" . $group_id . "&topic_id=" . $topic_id . "&count=" . $count . "&extended=" . $extended . "&need_likes=" . $need_likes . "&sort=" . $sort . "&v=" . $version . "&access_token=" . $access_token);

	$data = json_decode($page);

	foreach ($data->response->items as $value) {
		if ($value->from_id == "-80658171" || $value->text == '') continue;
		echo $value->text . '<br />';
		foreach ($data->response->profiles as $v) {
			if ( $v->id === $value->from_id) {
				echo "<img src=\"{$v->photo_50}\"><br />";
			}
		}
	}
