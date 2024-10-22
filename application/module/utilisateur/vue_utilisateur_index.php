    <?php checkAllow(1); ?>
    <h2>Utilisateur</h2>
    <?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
		<p><a class="btn btn-primary" href="<?=hlien("utilisateur","edit","id",0)?>">Nouveau utilisateur</a></p>
	<?php } ?>
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
			<th>Id</th>
			<th>Pseudo</th>
			<th>Profil</th>
			<?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
			<th>Email</th>
			<th>Mot de Pases</th>
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
			
			<td><?=mhe($row['uti_id'])?></td>
			<td><?=mhe($row['uti_pseudo'])?></td>
			<td><?=mhe($row['pro_libelle'])?></td>
			<?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
				<td><?=mhe($row['uti_email'])?></td>
				<td><?=mhe($row['uti_mdp'])?></td>
				<td><a class="btn btn-warning" href="<?=hlien("utilisateur","edit","id",$row["uti_id"])?>">Modifier</a></td>
				<td><a class="btn btn-danger" href="<?=hlien("utilisateur","delete","id",$row["uti_id"])?>">Supprimer</a></td>
			<?php } ?>
		</tr>
		<?php } ?>
		</tbody>
	</table>