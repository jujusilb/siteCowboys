<?php
/**
Classe créé par le générateur.
*/
class Apparaitre extends Table {
	public function __construct() {
		parent::__construct("apparaitre", "app_personnages");
	}
	
public function selectAll(): array
	{
		$sql = "select * from $this->table, tounes, personnages
		where app_tounes=tou_id and app_personnages=per_id";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}

function listTounes()
	{
		$sql = "
		select 
			per_id, tou_libelle, app_commentaire, tou_id
		from 
			apparaitre, tounes, personnages
		where 
			tou_id=app_tounes
		and 
			per_id=app_personnages
		order 
			by per_id, tou_id
	";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
		$mot = [];
		foreach ($data as $row) {
			extract($row);
			$mot[$per_id][] = [$tou_id, $tou_libelle, $app_commentaire];
		}
		return $mot;
	}

	function noPersonnage(){
		$sql = "
		select 
			* 
		from 
			tounes
		where 
			tou_id not in 
				(select
					 tou_id
				 from 
					 tounes, apparaitre
				 where
					 app_tounes=tou_id)
		";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
		$list = [];
		foreach ($data as $row) {		
			extract($row);
			array_push($list, $tou_id);
		}
		return $list;
	}


	function noTounes(){
		$sql = "
		select 
			* 
		from 
			personnages
		where 
			per_id not in 
				(select
					 per_id
				 from 
					 personnages, apparaitre
				 where
					 app_personnages=per_id)
		";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
		$list = [];
		foreach ($data as $row) {		
			extract($row);
			array_push($list, $per_id);
		}
		return $list;
	}
}
?>
