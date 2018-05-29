	/* Traitement des elements saisi dans le formulaire d'authetification à l'espace administrateur */ 
	<?php	 
	public function verif($array){
		$email = htmlspecialchars(trim($_POST['email']));
		$password = htmlspecialchars(trim($_POST['password']));
		$admin = $this->admins->get_admins();
		$passwordsha1 = sha1($password);
		$errors = [];


		if(empty($email) || empty($password)){
			$errors['empty'] = "Tous les champs n'ont pas été remplis";
		}else{
			if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
				$errors['email'] = "L'adresse email n'est pas valide";
			}
		}


		if(!($admin[0]->email == $email) || !($admin[0]->password == $passwordsha1)){
			$errors['valid'] = "Email ou mot de passe incorrect";
		}
		return $errors;
	}

	?>