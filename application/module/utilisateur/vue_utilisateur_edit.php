     <?php checkAllow(1);?>
    <form method="post" action="<?=hlien("utilisateur","save")?>">
		<input type="hidden" name="uti_id" id="uti_id" value="<?= $id ?>" />
		
                        <div class='form-group'>
                            <label for='uti_pseudo'>Uti_pseudo</label>
                            <input id='uti_pseudo' name='uti_pseudo' type='text' size='80' value='<?=$uti_pseudo?>'  class='form-control' />
                        </div>
                        <div class='form-group'>
                            <label for='uti_mail'>Uti_mail</label>
                            <input id='uti_mail' name='uti_mail' type='text' size='80' value='<?=$uti_mail?>'  class='form-control' />
                        </div>
                        <div class='form-group'>
                            <label for='uti_mdp'>Uti_mdp</label>
                            <input id='uti_mdp' name='uti_mdp' type='text' size='80' value='<?=$uti_mdp?>'  class='form-control' />
                        </div>
                        <div class='form-group'>
                            <label for='uti_profil'>Uti_profil</label>
                            <select id='uti_profil' name='uti_profil' class='form-select'>
                                <?=Table::HTMLselect('select * from profil', 'pro_id', 'pro_libelle', $uti_profil)?>
                            </select>
                        </div>
                        </div>
		<input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
		<input class="btn btn-warning" type="button" name="annuler" value="Annuler" onclick="history.back()" />
	</form>              