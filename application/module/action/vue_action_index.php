    <h2>action</h2>
    <p><a class="btn btn-primary" href="<?=hlien("action","edit","id",0)?>">Nouveau action</a></p>
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				
			<th>act_id</th>
			<th>act_membres</th>
			<th>act_tounes</th>
			<th>act_categorie</th>
				<th>modifier</th>
				<th>supprimer</th>
			</tr>
		</thead>
		<tbody>
		<?php
		foreach ( $data as $row) { 
			extract($row); ?>
		<tr>
			
			<td><?=mhe($row['act_id'])?></td>
			<td><?=mhe($row['act_membres'])?></td>
			<td><?=mhe($row['act_tounes'])?></td>
			<td><?=mhe($row['act_categorie'])?></td>
			<td><a class="btn btn-warning" href="<?=hlien("action","edit","id",$row["act_id"])?>">Modifier</a></td>
			<td><a class="btn btn-danger" href="<?=hlien("action","delete","id",$row["act_id"])?>">Supprimer</a></td>
		</tr>
		<?php } ?>
		</tbody>
	</table>