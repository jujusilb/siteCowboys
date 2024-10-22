     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("famille","save")?>">
		<input type="hidden" name="fam_id" id="fam_id" value="<?= $id ?>" />
		
                        <div class='form-group'>
                            <label for='fam_libelle'>Libelle</label>
                            <input id='fam_libelle' name='fam_libelle' type='text' size='80' value='<?=$fam_libelle?>'  class='form-control' />
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              