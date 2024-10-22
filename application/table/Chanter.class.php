<?php
/**
Classe créé par le générateur.
*/
class Chanter extends Table {
	public function __construct() {
		parent::__construct("chanter", "cha_membres");
	}
	
	public function selectAll(): array
	{
		$sql = "select chanter.*, concat(mem_prenom, ' ', mem_nom) nom, tou_libelle from $this->table, tounes, membres where cha_inclure=tou_id and cha_membres=mem_id";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}
	function listChanter(){
	    $sql="
	    select 
			inc_id, mem_id, mem_photo, tou_id
		from 
			chanter, inclure, tounes, membres
		where 
			tou_id=inc_tounes
		and 
        	cha_membres=mem_id
		and
		    cha_inclure=inc_id
        ORDER BY	
			inc_id, mem_id
		";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}
}
?>
