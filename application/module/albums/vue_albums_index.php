    <h2>Albums</h2>
    <?php if(isset($_SESSION["uti_id"])&&$_SESSION["uti_profil"]==1){ ?>
		<p><a class="btn btn-primary" href="<?=hlien("albums","edit","id",0)?>">Nouveau albums</a></p>
	<?php }
	//debug ($inAlbums);?>
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				
			<th>Id</th>
			<th>Pochette</th>
			<th>Libelle</th>
			<th>Contenu</th>
			<th>Année</th>
			<th>Nombre de piste</th>
			<th>Type</th>
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
		<tr id="<?=mhe($row['alb_libelle'])?>">
			
			<td><?=mhe($row['alb_id'])?></td>
			<td><img src="<?=mhe($row['alb_pochette'])?>" width="60px" /></td>
			<td><?=mhe($row['alb_libelle'])?></td>
			<td>
			    <table>
			        <?php
			        for($i=0;$i<count($inAlbums);$i++){ ?>
			            <tr>
			                <?php 
			                if($inAlbums[$i]['alb_id']==mhe($row['alb_id'])){ ?>
			                    <td>
			                        <?=$inAlbums[$i]['inc_piste']?>
			                    </td>
			                    <td>
			                        <a href="<?=hlien('tounes', 'index')?>#<?=$inAlbums[$i]['tou_id']?>">
			                            <?=$inAlbums[$i]['tou_libelle']?>
			                        </a>
			                    </td>
			                    <td>
			                        <?=$inAlbums[$i]['inc_duree']?>
			                    </td>
			                    <td>
			                        <?php 
			                        foreach($listChanter as $tabChant){
			                            if($inAlbums[$i]['inc_id']==$tabChant['inc_id']){ ?>
			                                <a href="<?=hlien('membres', 'index')?>#<?=$tabChant['mem_id']?>">
			                                    <img src="<?=$tabChant['mem_photo']?>" width="70px">
			                                </a>
			                            <?php 
			                            }
			                        }?>
			                    </td>
			                    <?php
			                    if(isset($_SESSION['uti_id']) && ($_SESSION['uti_profil']==1)){ ?>
			                          <td>
			                              <a class="btn btn-warning" href="<?=hlien("inclure","edit","id",$inAlbums[$i]['inc_id'])?>">
			                                  Modifier
			                             </a>
			                         </td>
			                     <?php 
			                      }
			                } ?>
			            </tr>
			        <?php
			        } ?>
			    </table>
			</td>
			<td><?=mhe($row['alb_annee'])?></td>
			<td><?=mhe($row['alb_piste'])?></td>
			<td><?=mhe($row['typ_libelle'])?></td>
			<?php if(isset($_SESSION["uti_id"])&& $_SESSION["uti_profil"]==1){ ?>
				<td><a class="btn btn-warning" href="<?=hlien("albums","edit","id",$content["inc_id"])?>">Modifier</a></td>
				<td><a class="btn btn-danger" href="<?=hlien("albums","delete","id",$row["alb_id"])?>">Supprimer</a></td>
			<?php } ?>
		</tr>
		<?php } ?>
		</tbody>
	</table>