<?php
/**
Classe créé par le générateur.
*/
class Instruments extends Table {
	public function __construct() {
		parent::__construct("instruments", "ins_id");
	}

	public function selectAll(): array{
		$sql = "select * 
		from instruments, famille
		where ins_famille=fam_id";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}
    
    	function noMembres(){
		$sql = "
		select 
			* 
		from 
			instruments
		where 
			ins_id not in 
				(select
					 ins_id
				 from 
					 instruments, jouer
				 where
					 jou_instruments=ins_id)
		";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
		$list = [];
		foreach ($data as $row) {		
			extract($row);
			array_push($list, $ins_id);
		}
		return $list;
	}

	function listMembres(){
		$sql = '
		select 
			ins_id, concat(mem_prenom, " ", mem_nom) nom, mem_id
		from 
			jouer, membres, instruments
		where 
			mem_id=jou_membres
		and 
			ins_id=jou_instruments
		order 
			by mem_id, ins_id
	';
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
		$mot = [];
		foreach ($data as $row) {
			extract($row);
			$mot[$ins_id][] = [$mem_id,"$nom"];
		}
		return $mot;
	}
}

?>
