     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("inclure","save")?>">
		<input type="hidden" name="inc_id" id="inc_id" value="<?= $id ?>" />
		                <div>Identifiant : <?=$id?></div>
                        <div class='form-group'>
                            <label for='inc_piste'>Inc_piste</label>
                            <input id='inc_piste' name='inc_piste' type='text' size='80' value='<?=$inc_piste?>'  class='form-control' />
                        </div>
                        <div class='form-group'>
                            <label for='inc_albums'>inc_albumss</label>
                            <select id='inc_albums' name='inc_albums' class='form-select'>
                            <?=Table::HTMLselect('select * from albums', 'alb_id', 'alb_libelle', $inc_albums)?>
                        </select>
                        
                        
                        </div>
                        <div class='form-group'>
                            <label for='inc_tounes'>Inc_tounes</label>
                            <select id='inc_tounes' name='inc_tounes' class='form-select'>
                            <?=Table::HTMLselect('select * from tounes', 'tou_id', 'tou_libelle', $inc_tounes)?>
                        </select>
                        </div>
                        
                        <div class='form-group'>
                            <label for='inc_duree'>Inc_duree</label>
                            <input id='inc_duree' name='inc_duree' type='text' size='80' value='<?=$inc_duree?>'  class='form-control' />
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              