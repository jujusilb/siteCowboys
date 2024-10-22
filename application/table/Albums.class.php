<?php
/**
Classe créé par le générateur.
*/
class Albums extends Table {
	public function __construct() {
		parent::__construct("albums", "alb_id");
	}

	public function selectAll(): array
	{
		$sql = "select * from $this->table, type
		where alb_type=typ_id
		order by alb_id";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}
	
	function inAlbums(){
	    $sql="select 
	        alb_id, inc_id, inc_piste, tou_libelle, inc_duree, tou_id  
        from 
            inclure, albums, tounes
        where 
            inc_albums=alb_id
        and 
            inc_tounes=tou_id
		";
		$result =Table::$link->query($sql);
		return $result->fetchAll();
    }
}
?>
