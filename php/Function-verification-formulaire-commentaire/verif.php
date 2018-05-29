<?php
/* Traitement des elements saisi dans un formulaire */  
public function verif($array){
	$name = htmlspecialchars(trim($_POST['name']));
	$email = htmlspecialchars(trim($_POST['email']));
	$comment = htmlspecialchars(trim($_POST['comment']));
	$post_id = intval(htmlspecialchars(trim($_POST['id'])));
	$errors = [];

	$nvArray = [
		'post_id'	=> $post_id,
		'name' 		=> $name,
		'email'		=> $email,
		'comment'	=> $comment
	];

	if(empty($name) || empty($email) || empty($comment)){
		$errors['empty'] = "Tous les champs n'ont pas été remplis";
	}else{
		if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
			$errors['email'] = "L'adresse email n'est pas valide";
		}
	}
	if(empty($errors)){
		$this->posterCommentaire($nvArray);
	}
	return $errors;
}