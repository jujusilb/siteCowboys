<?php
/**
Classe créé par le générateur.
*/
class Membres extends Table {
	public function __construct() {
		parent::__construct("membres", "mem_id");
	}

	function findMembres($filtre){
		$sql="
			select
				mem_id, concat(mem_prenom, ' ', mem_nom) nom
			from
				membres
			where
				concat(mem_prenom, ' ', mem_nom) like '%$filtre%'
		";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}

	function listMembres()
	{
		$sql = "
		select 
			mem_id, concat(mem_prenom, ' ', mem_nom) mem_membres, mem_photo
		from
			membres
	";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
		return $data;
	}

	function noJouer(){
		$sql = "
		select 
			* 
		from 
			membres
		where 
			mem_id not in 
				(select
					 mem_id
				 from 
					 membres, jouer
				 where
					 jou_membres=mem_id)
		";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
		$list = [];
		foreach ($data as $row) {		
			extract($row);
			array_push($list, $mem_id);
		}
		return $list;
	}

	function listJouer(){
		$sql = "
		select 
			ins_id, ins_libelle, mem_id
		from 
			jouer, membres, instruments
		where 
			mem_id=jou_membres
		and 
			ins_id=jou_instruments
		order 
			by mem_id, ins_id
	";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
		$mot = [];
		foreach ($data as $row) {
			extract($row);
			$mot[$mem_id][] = [$ins_id,"$ins_libelle"];
		}
		return $mot;
	}
}
?>
