    <h2>Membres</h2>
    <?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
		<p><a class="btn btn-primary" href="<?=hlien("membres","edit","id",0)?>">Nouveau membres</a></p>
	<?php } ?>
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				
			<th>Id</th>
			<th>Photo</th>
			<th>Prenom</th>
			<th>Nom</th>
			<th>Naissance</th>
			<th>Joue</th>
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
		<tr id="<?=mhe($row['mem_id'])?>">
			
			<td><?=mhe($row['mem_id'])?></td>
			<td><img src="<?=mhe($row['mem_photo'])?>" width="90px" /></td>
			<td><?=mhe($row['mem_prenom'])?></td>
			<td><?=mhe($row['mem_nom'])?></td>
			<td><?=mhe($row['mem_naissance'])?></td>
			<td style="white-space: nowrap;">
				<?php
					if (in_array($mem_id, $noJouer)) {
						echo "aucun instrument";
					}else {
						foreach($listJouer[$mem_id] as $key =>$value){
							echo "-$value[1]<br>";
						}
					}
				?>
			</td>
			<?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
				<td><a class="btn btn-warning" href="<?=hlien("membres","edit","id",$row["mem_id"])?>">Modifier</a></td>
				<td><a class="btn btn-danger" href="<?=hlien("membres","delete","id",$row["mem_id"])?>">Supprimer</a></td>
			<?php } ?>
		</tr>
		<?php } ?>
		</tbody>
	</table>