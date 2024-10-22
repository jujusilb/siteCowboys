<?php
/**
Classe créé par le générateur.
*/
class Composer extends Table {
	public function __construct() {
		parent::__construct("composer", "com_membres");
	}
	
	public function selectAll(): array
	{
		$sql = "select composer.*, concat(mem_prenom, ' ', mem_nom) nom, tou_libelle from $this->table, tounes, membres where com_tounes=tou_id and com_membres=mem_id";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}
	
		function listMemComposer(){
		$sql="
			select
				tou_id, mem_id, concat(mem_prenom, '', mem_nom) membres
			from
				composer, tounes, membres
			where
				com_tounes=tou_id
			AND 
				com_membres=
		";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
	}
	
		function listMemCha(){
		$sql="
			select
				tou_id, mem_id, concat(mem_prenom, '', mem_nom) membres
			from
				action, tounes, membres
			where
				act_tounes=tou_id
			AND 
				act_membres=
			and
			    act_categorie='chanter'
		";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
	}
	
		function listMemAct(){
		$sql="
			select
				tou_id, mem_id, concat(mem_prenom, '', mem_nom) membres
			from
				action, tounes, membres
			where
				act_tounes=tou_id
			AND 
				act_membres=
			and
			    act_categorie=$cat
		";
		$result = self::$link->prepare($sql);
		$result->bindValue(":cat", $cat, PDO::PARAM_STR);
		$data = $result->fetchAll();
	}
}
?>
