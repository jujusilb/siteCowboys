        <h2>Inscription</h2>
        <form method="post" onsubmit="return verification()">
            <div class='form-group'>
                <label for='uti_pseudo'>Pseudo</label>
                <input id='uti_pseudo' name='uti_pseudo' type='text' size='50' value='<?= mhe($uti_pseudo) ?>' class='form-control' />
            </div>
           
            <div class='form-group'>
                <label for='uti_mdp'>Mot de passe</label>
                <input id='uti_mdp' name='uti_mdp' type='password' size='50' value='' class='form-control' />
            </div>
            <div class='form-group'>
                <label for='uti_mdp2'>Vérification du Mot de passe</label>
                <input id='uti_mdp2' name='uti_mdp2' type='password' size='50' value='' class='form-control' />
            </div>
            
            <input class="btn btn-success" type="submit" name="btSubmit" value="Enregistrer" />
        </form>
        <script>
            function verification() {
                if (uti_mdp.value==uti_mdp2.value) 
                    return true;
                else {
                    alert("Erreur : vérification du mot de passe incorrecte.");
                    return false;
                }
            }
        </script>