<?php
/**
Classe créé par le générateur.
*/
class Ecrire extends Table {
	public function __construct() {
		parent::__construct("ecrire", "ecr_membres");
	}
public function selectAll(): array
	{
		$sql = "select ecrire.*, concat(mem_prenom, ' ', mem_nom) nom, tou_libelle from $this->table, tounes, membres where ecr_tounes=tou_id and ecr_membres=mem_id";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}

	function listMemEcrire(){
		$sql="
			select
				tou_id, mem_id, concat(mem_prenom, '', mem_nom) membres
			from
				ecrire, tounes, membres
			where
				ecr_tounes=tou_id
			AND 
				ecr_membres=mem_id
		";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
	}
}
?>
