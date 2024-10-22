<?php
/**
Classe créé par le générateur.
*/
class Utilisateur extends Table {
	public function __construct() {
		parent::__construct("utilisateur", "uti_id");
	}

	static public function estPseudoUnique(string $uti_pseudo) : bool {
		$sql="select * from utilisateur where uti_pseudo=:Pseudo";
		$statement = self::$link->prepare($sql);
		$statement->bindValue(":Pseudo", $uti_pseudo);
		$statement->execute();
		if ($statement->rowCount()>0)
			return false;
		else 
			return true;
	}

	static public function selectByPseudo(string $uti_pseudo) {
		$sql="select * 
		from utilisateur, profil 
		where uti_profil=pro_id
		and uti_pseudo=:pseudo";
		$statement = self::$link->prepare($sql);
		$statement->bindValue(":pseudo", $uti_pseudo);
		$statement->execute();
		return $statement->fetch();
	}
	public function selectAll(): array
	{
		$sql = "select * from utilisateur,profil where uti_profil=pro_id order by uti_id";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}
	function ajaxChangeProfil($uti, $profil){
	    $sql="update utilisateur set uti_profil=$profil where uti_id=$uti";
    	$result = self::$link->query($sql);
    	$sql="select uti_profil, pro_libelle from utilisateur, profil where uti_profil=pro_id and uti_id=$uti";
    	$result = self::$link->query($sql);
		return $result->fetch();
	}
}
?>
