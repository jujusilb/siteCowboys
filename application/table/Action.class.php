<?php
/**
Classe créé par le générateur.
*/
class Action extends Table {
	public function __construct() {
		parent::__construct("action", "act_id");
	}
	
		function listMemEcr(){
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
			    act_categorie='ecrire'
		";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
	}
	function listMemCom(){
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
			    act_categorie='composer'
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
	
	function noAction($cat){
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
					 tounes, action
				 where
					 act_tounes=tou_id
				and
				    act_categorie='$cat')
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
	
		function listMemAct($cat){
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
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
	}
	function listAction($cat)
	{
		$sql = "
		select 
			mem_id, concat(mem_prenom, ' ', mem_nom) mem_membres, mem_photo, tou_id
		from 
			action, tounes, membres
		where 
			tou_id=act_tounes
		and 
			mem_id=act_membres
		and
		    act_categorie='$cat'
		order 
			by tou_id, mem_id
	";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
		$mot = [];
		foreach ($data as $row) {
			extract($row);
			$mot[$tou_id][] = [$mem_id,"$mem_membres", "$mem_photo"];
		}
		return $mot;
	}
	
}
?>
