<?php
/**
Classe créé par le générateur.
*/
class Profil extends Table {
	public function __construct() {
		parent::__construct("profil", "pro_id");
	}
	public function selectAll(): array
	{
		$sql = "
		select * 
		from profil
		order by pro_id
		";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}
}
?>
