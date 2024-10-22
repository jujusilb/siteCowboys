    <h2>Personnages</h2>
    <?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
		<p><a class="btn btn-primary" href="<?=hlien("personnages","edit","id",0)?>">Nouveau personnages</a></p>
	<?php } ?>
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				
			<th>Id</th>
			<th>Nom</th>
			<th>Chansons liées</th>
			<th>Biographie</th>
			<?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
				<th>Modifier</th>
				<th>Supprimer</th>
			<?php } ?>
			</tr>
		</thead>
		<tbody>
		<?php
		foreach ( $data as $row) { 
			extract($row); ?>
		<tr id="<?=mhe($row['per_nom'])?>">
			
			<td><?=mhe($row['per_id'])?></td>
			<td><?=mhe($row['per_nom'])?></td>
			<td style="white-space: nowrap;">
			<?php
					if (in_array($per_id, $noTounes)) {
						echo "Aucune Chansons";
					}else {
						foreach($listTounes[$per_id] as $key =>$value){
							//debug($value);
							?>
							-<a href="<?=hlien('tounes', 'index')?>#<?=$value[0]?>">
					            <?=$value[1]?><br>
					       </a>
						<?php }
					}
				?>

			</td>
			<td><?=mhe($row['per_bio'])?></td>
			<?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
				<td><a class="btn btn-warning" href="<?=hlien("personnages","edit","id",$row["per_id"])?>">Modifier</a></td>
				<td><a class="btn btn-danger" href="<?=hlien("personnages","delete","id",$row["per_id"])?>">Supprimer</a></td>
			<?php } ?>
		</tr>
		<?php } ?>
		</tbody>
	</table>