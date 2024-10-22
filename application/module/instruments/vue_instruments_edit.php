     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("instruments","save")?>">
		<input type="hidden" name="ins_id" id="ins_id" value="<?= $id ?>" />
		
                        <div class='form-group'>
                            <label for='ins_libelle'>Libelle</label>
                            <input id='ins_libelle' name='ins_libelle' type='text' size='80' value='<?=$ins_libelle?>'  class='form-control' />
                        </div>
                        <div class='form-group'>
                            <label for='ins_famille'>Famille</label>
                            <select id='ins_famille' name='ins_famille' class='form-select'>
                            <option>Choisir une famille</option>    
                            <?=Table::HTMLselect('select * from famille', 'fam_id', 'fam_libelle', $ins_famille)?></select>
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              