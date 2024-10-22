     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("profil","save")?>">
		<input type="hidden" name="pro_id" id="pro_id" value="<?= $id ?>" />
		
                        <div class='form-group'>
                            <label for='pro_libelle'>Pro_libelle</label>
                            <input id='pro_libelle' name='pro_libelle' type='text' size='80' value='<?=$pro_libelle?>'  class='form-control' />
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              