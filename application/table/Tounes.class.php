<?php
/**
Classe créé par le générateur.
*/
class Tounes extends Table {
	public function __construct() {
		parent::__construct("tounes", "tou_id");
	}

	public function selectAll(): array
	{
		$sql = "select * from $this->table";
		$result = self::$link->query($sql);
		return $result->fetchAll();
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

	function noInclure(){
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
					 tounes, inclure
				 where
					 inc_tounes=tou_id)
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

	function listInclure(){
		$sql = "
		select 
			alb_id, alb_libelle, alb_pochette, tou_id
		from 
			inclure, tounes, albums
		where 
			tou_id=inc_tounes
		and 
			alb_id=inc_albums
		order 
			by tou_id, alb_id
	";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
		$mot = [];
		foreach ($data as $row) {
			extract($row);
			$mot[$tou_id][] = [$alb_id,"$alb_libelle", "$alb_pochette"];
		}
		return $mot;
	}

	
	function listPersonnage()
	{
		$sql = "
		select 
			per_id, per_nom, tou_id
		from 
			apparaitre, tounes, personnages
		where 
			tou_id=app_tounes
		and 
			per_id=app_personnages
		order 
			by tou_id, per_id
	";
		$result = self::$link->query($sql);
		$data = $result->fetchAll();
		$mot = [];
		foreach ($data as $row) {
			extract($row);
			$mot[$tou_id][] = [$per_id, $per_nom ];
		}
		return $mot;
	}

function addDuree($toune, $duree){
   $sql="update tounes set tou_duree=:duree where tou_id=$toune";
   $pdostmt=Table::$link->prepare($sql);
   $pdostmt->bindValue(":duree", $duree, PDO::PARAM_STR);
   $pdostmt->execute();
}

function getTounesJeux(){
    $sql="select tou_id, tou_libelle from tounes where tou_jeux=true";
    $result = self::$link->query($sql);
	return  $result->fetchAll();
}

function filtreMembres($categorie, $membre){
    switch ($categorie){
    case "ecrire" :
        $sql="select ecr_tounes tounes from ecrire where ecr_membres=$membre";
        break;
    case "composer" :
        $sql="select com_tounes tounes from composer where com_membres=$membre";
        break;
    case "chanter" :
        $sql="select cha_tounes tounes from chanter where cha_membres=$membre";
        break;
    }
    echo $sql;
    $result = self::$link->query($sql);
	return  $result->fetchAll();
}

    function filtrage($array){    
        $sql="
            select
                distinct chanson.tou_id,
                chanson.tou_libelle,
                chanson.tou_commentaire
            from
                tounes chanson
        ";
        if(isset($array["ecrire"])){
            $ecrire=$array["ecrire"];
            for($i=0;$i<count($ecrire);$i++){
                $sql.="JOIN action actEcrire$i 
                        ON chanson.tou_id = actEcrire$i.act_tounes
                        AND actEcrire$i.act_membres=".$ecrire[$i]."
                        AND actEcrire$i.act_categorie='ecrire'";
            }
        }
        if(isset($array["composer"])){
            $composer=$array["composer"];
            for($i=0;$i<count($composer);$i++){
                $sql.="JOIN action actComposer$i
                            ON chanson.tou_id = actComposer$i.act_tounes
                            AND actComposer$i.act_membres=".$composer[$i]." 
                            AND actComposer$i.act_categorie='composer'";
            }
        }
        echo "<br><br><br>".$sql;
        $result = self::$link->query($sql);
	    return  $result->fetchAll();
    }
}

