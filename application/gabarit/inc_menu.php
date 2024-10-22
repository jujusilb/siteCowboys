<nav class="navbar fixed-top navbar-expand-sm navbar-dark bg-dark">
  <div class="container">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <?php if(isset($_SESSION["uti_id"])){ ?>
            <li style="white-space:nowrap;" class="nav-item navbar-nav me-auto mb-2 mb-lg-0">
                <a class="nav-link" >
                    <h4><?= $_SESSION["uti_pseudo"]?> [<?=$_SESSION["pro_libelle"]?>]</h4>
                </a>
            </li>
            <?php if($_SESSION['uti_id']==1){ ?>
                <li>
                    <select id="idChoixProfil">
                        <?=Table::HTMLselect("select * from profil", 'pro_id', 'pro_libelle', $_SESSION['uti_profil'])?>
                    </select>
                </li>
                <?php }
            } ?>
            <script>
                let choixProfil=document.getElementById("idChoixProfil")
                choixProfil.addEventListener("change", action)
                async function action(e){
                    console.log('inAction')
                    let url="<?=hlien('utilisateur', 'ajaxChangeProfil')?>&uti=<?=$_SESSION['uti_id']?>&profil="+e.target.value;
                    console.log(url)
                     let response=await fetch(url)
                     let profil=await response.json()
                     console.log(profil)
                }
                console.log("choixProfil =", choixProfil)
            </script>
            
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.php">
                    <span>
                        Home
                    </span>
                </a>
            </li>
            <?php if(isset($_SESSION["uti_id"])){
                 
                if($_SESSION["uti_profil"]==1){ ?>
                    <li>
                        <a class='nav-link' href='<?=hlien("apparaitre","index")?>'>
                            Apparaitre
                        </a>
                    </li>
                    <li>
                        <a class='nav-link' href='<?=hlien("chanter","index")?>'>
                            Chanter
                        </a>
                    </li>
                    <li>
                        <a class='nav-link' href='<?=hlien("composer","index")?>'>
                            Composer
                        </a>
                    </li>
                    <li>
                        <a class='nav-link' href='<?=hlien("ecrire","index")?>'>
                            Ecrire
                        </a>
                    </li>
                    <li>
                        <a class='nav-link' href='<?=hlien("inclure","index")?>'>
                            Inclure
                        </a>
                    </li>
                    <li>
                        <a class='nav-link' href='<?=hlien("jouer","index")?>'>
                            Jouer
                        </a>
                    </li>
            <?php  } ?>
                <li>
                    <a class='nav-link' href='<?=hlien("tounes","jeux")?>'>
                        Jeux
                    </a>
                </li>
            <?php } ?>
            
            
            
            
            <li>
                <a class='nav-link' href='<?=hlien("membres","index")?>'>
                    Membres
                </a>
            </li>
            <li>
                <a class='nav-link' href='<?=hlien("albums","index")?>'>
                    Albums
                </a>
            </li>
            <li>
                <a class='nav-link' href='<?=hlien("tounes","index")?>'>
                    Tounes
                </a>
            </li>
            <li>
                <a class='nav-link' href='<?=hlien("personnages","index")?>'>
                    Personnages
                </a>
            </li>
            <li>
                <a class='nav-link' href='<?=hlien("instruments","index")?>'>
                    Instruments
                </a>
            </li>
            <li>
                <a class='nav-link' href='<?=hlien("famille","index")?>'>
                    Famille
                </a>
            </li>
            <li>
                <a class='nav-link' href='<?=hlien("type","index")?>'>
                    Type
                </a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <?php if(isset($_SESSION["uti_id"])){
                if($_SESSION["uti_profil"]==1){?>
                    <li>
                        <a class='nav-link' href='<?=hlien("utilisateur","index")?>'>
                            Utilisateur
                        </a>
                    </li>
                    <li>
                        <a class='nav-link' href='<?=hlien("profil","index")?>'>
                            Profil
                        </a>
                    </li>
                <?php } ?>
                    <li>
                        <a class="nav-link" href="<?= hlien("authentification", "deconnexion")?>">
                            Déconnexion
                        </a>
                    </li>
            <?php } else { ?>
                <li>
                    <a class="nav-link" href='<?= hlien("authentification","connexion") ?>'>
                        Connexion
                    </a>
                </li>
                <li>
                    <a class="nav-link" href='<?= hlien("authentification", "inscription") ?>'>
                        Inscription
                    </a>
                </li>
            <?php } ?>
        </ul>
    </div>
  </div>
</nav>