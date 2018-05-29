<?php
/* Traitement des elements saisi dans le formulaire de readation d'un article */  
public function verif($array, $files){
	$title = htmlspecialchars(trim($_POST['title']));
	$content = htmlspecialchars(trim($_POST['content']));
	$id = intval(htmlspecialchars(trim($_POST['id'])));
	$posted = intval(isset($_POST['public']));
	$errors = [];

	$nvArray = [
		'title' 	=> $title,
		'content' 	=> $content,
		'id'		=> $id,
		'posted' 	=> $posted
	];

	if(empty($title) || empty($content) || empty($id)){
		$errors['empty'] = "Tous les champs n'ont pas été remplis";
	}
	if(!empty($_FILES['image']['name'])){
		$file = $_FILES['image']['name'];
		$extensions = ['.png','.jpg','.jpeg','.gif','.PNG','.JPG','.JPEG','.GIF'];
		$extension = strrchr($file,'.');

		if(!in_array($extension,$extensions)){
			$errors['image'] = "Cette image n'est pas valable";
		}
		
	}
	if(empty($errors)){	
		if(!empty($_FILES['image']['name'])){
			$nvArray['image'] = $_FILES['image']['name'];
			move_uploaded_file($_FILES['image']['tmp_name'],"../img/".$nvArray['image']);
		}
		$this->updatePost($nvArray);
	}

	return $errors;
}
