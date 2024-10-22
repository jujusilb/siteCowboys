    <?php checkAllow(1); ?>    
    <h2>Inclure</h2>
    <?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
		<p><a class="btn btn-primary" href="<?=hlien("inclure","edit","id",0)?>">Nouveau inclure</a></p>
	<?php } ?>
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>Piste</th>
			    <th>Piste</th>
			    <th>Albums</th>
			    <th>Tounes</th>
			    <th>durée</th>
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
			<td><?=mhe($row['inc_id'])?></td>
			<td><?=mhe($row['inc_piste'])?></td>
			<td><?=mhe($row['alb_libelle'])?></td>
			<td><?=mhe($row['tou_libelle'])?></td>
			<td><?=mhe($row['inc_duree'])?></td>
			<?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
				<td><a class="btn btn-warning" href="<?=hlien("inclure","edit","id",$row["inc_id"])?>">Modifier</a></td>
				<td><a class="btn btn-danger" href="<?=hlien("inclure","delete","id",$row["inc_id"])?>">Supprimer</a></td>
			<?php } ?>
		</tr>
		<?php } ?>
		</tbody>
	</table>