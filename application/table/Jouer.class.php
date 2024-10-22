<?php
/**
Classe créé par le générateur.
*/
class Jouer extends Table {
	public function __construct() {
		parent::__construct("jouer", "jou_membres");
	}
	
	public function selectAll(): array
	{
		$sql = "select jouer.*, concat(mem_prenom, ' ', mem_nom) nom, ins_libelle from $this->table, instruments, membres where jou_instruments=ins_id and jou_membres=mem_id";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}
	
	function noInstruments(){
	    $sql="select *
	    from ";
	}
	
	function listInstruments(){
	    $sql="
	    select jou_membres, ins_id, ins_libelle
	    from jouer, instruments
	    where jou_instruments=ins_id";
	    $result=Table::$link->query($sql);
	    return $result->fetchAll();
	}
}
?>
