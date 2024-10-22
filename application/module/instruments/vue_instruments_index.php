    <h2>Instruments</h2>
    <?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
		<p><a class="btn btn-primary" href="<?=hlien("instruments","edit","id",0)?>">Nouveau instruments</a></p>
	<?php } ?>
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				
			<th>Id</th>
			<th>Libelle</th>
			<th>Famille</th>
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
		<tr>
			
			<td><?=mhe($row['ins_id'])?></td>
			<td><?=mhe($row['ins_libelle'])?></td>
			<td><?=mhe($row['fam_libelle'])?></td>
				<td style="white-space: nowrap;">
				<?php
					if (in_array($ins_id, $noMembres)) {
						echo "aucun instrument";
					}else {
						foreach($listMembres[$ins_id] as $key =>$value){
							?>
							-<a href="<?=hlien('membres', 'index')?>#<?=$value[1]?>">
							<?=$value[1]?><br>
							</a>
							<?php 
						}
					}
				?>
			</td>
			<?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
				<td><a class="btn btn-warning" href="<?=hlien("instruments","edit","id",$row["ins_id"])?>">Modifier</a></td>
				<td><a class="btn btn-danger" href="<?=hlien("instruments","delete","id",$row["ins_id"])?>">Supprimer</a></td>
			<?php } ?>
		</tr>
		<?php } ?>
		</tbody>
	</table>