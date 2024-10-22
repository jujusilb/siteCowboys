<?php
/**
Classe créé par le générateur.
*/
class Inclure extends Table {
	public function __construct() {
		parent::__construct("inclure", "inc_albums");
	}
	public function selectAll(): array
	{
		$sql = "select * from inclure, tounes, albums
		where inc_albums=alb_id
		and inc_tounes=tou_id";
		$result = self::$link->query($sql);
		return $result->fetchAll();
	}
	
	function select(int $id)
	{
		$sql = "select * from inclure where inc_id=:id";
		$statement = self::$link->prepare($sql);
		$statement->bindValue(":id", $id, PDO::PARAM_INT);
		$statement->execute();
		return $statement->fetch();
	}


}
?>
