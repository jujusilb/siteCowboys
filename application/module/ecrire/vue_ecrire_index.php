    <?php checkAllow(1); ?>
    <h2>Ecrire</h2>
    <?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
		<p><a class="btn btn-primary" href="<?=hlien("ecrire","edit","id",0)?>">Nouveau ecrire</a></p>
	<?php } ?>
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				
			<th>Membres</th>
			<th>Tounes</th>
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
		<tr>
			
			<td><?=mhe($row['nom'])?></td>
			<td><?=mhe($row['tou_libelle'])?></td>
			<?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
				<td><a class="btn btn-warning" href="<?=hlien("ecrire","edit","id",$row["ecr_membres"])?>">Modifier</a></td>
				<td><a class="btn btn-danger" href="<?=hlien("ecrire","delete","id",$row["ecr_membres"])?>">Supprimer</a></td>
			<?php } ?>
		</tr>
		<?php } ?>
		</tbody>
	</table>