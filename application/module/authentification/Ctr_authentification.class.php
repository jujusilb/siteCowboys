<?php
class Ctr_authentification extends Ctr_controleur
{

    public function __construct($action)
    {
        parent::__construct("authentification", $action);
        $a = "a_$action";
        $this->$a();
    }

    public function a_inscription()
    {    
       extract($_POST);
        if (isset($_SESSION["uti_id"])) {
            $_SESSION["message"][]="Tentative d'intrusion détectée...";
            require $this->gabarit;
            exit;
        }

        if (isset($btSubmit)) {
            try{
            //vérifier que $uti_pseudo est unique
            if (!Utilisateur::estPseudoUnique($uti_pseudo)) {
                $_SESSION["message"][]="$uti_pseudo : ce pseudo est déjà pris. Veuillez en saisir un autre.";
                require $this->gabarit;
                exit;
            }
            }catch(exception) {
                $e= new Exception();
                $_SESSION["message"][]=$e;
            }

            //vérifier que $uti_mdp==$uti_mdp2
            if ($uti_mdp!=$uti_mdp2) {
                $_SESSION["message"][]="La vérification du mot de passe à échouer. Veuillez vérifier votre mot de passe.";
                require $this->gabarit;    
                exit;
            }
                             
            //Tous est ok : enregistrement du nouvel utilisateur
            $_POST["uti_id"]=0;
            $_POST["uti_pseudo"]=$uti_pseudo;
            $_POST["uti_email"]="";
            $_POST["uti_mdp"]=password_hash($_POST["uti_mdp"],PASSWORD_DEFAULT);
            $_POST["uti_profil"]=2;
            (new Utilisateur)->save($_POST);
            $_SESSION["message"][]="Bravo $uti_pseudo ! Inscription réussie. Vous pouvez maintenant vous connecter.";
            //rediriger sur l'accueil
            header("location:" . hlien("_default"));            

        } else {
            //affichage du formulaire
            extract( (new Utilisateur())->emptyRecord() );
            require $this->gabarit;
        }
        
    }

    public function a_connexion()
    {
        if (isset($_SESSION["uti_id"])) {
            $_SESSION["message"][]="Tentative d'intrusion détectée...";
            require $this->gabarit;
            exit;
        }
        
        extract($_POST);
        if (isset($btSubmit)) {
            //récupérer en bdd l'utilisateur qui posséde $uti_pseudo
            $row=Utilisateur::selectByPseudo($uti_pseudo);

            if ($row===false) {
                $_SESSION["message"][]="$uti_pseudo n'existe pas. Vérifiez votre saisie";
                require $this->gabarit;
                exit;
            }

            //vérification du mot de passe
            if (!password_verify($uti_mdp,$row["uti_mdp"])) {
                $_SESSION["message"][]="Mot de passe incorrect.";
                require $this->gabarit;
                exit;
            }

            //Connexion réussie
            extract($row);
            $_SESSION["uti_id"]=$uti_id;
            $_SESSION["uti_pseudo"]=$uti_pseudo;
            $_SESSION["uti_mail"]=$uti_mail;
            $_SESSION["uti_profil"]=$uti_profil;
            $_SESSION["pro_libelle"]=$pro_libelle;
            $_SESSION["message"][]="bienvenu $uti_prenom $uti_nom.";
            header("location:" . hlien("_default"));   

        } else {
            $uti_email="";
            require $this->gabarit;
        }
        
    }

    public function a_deconnexion()
    {
        $_SESSION=[];        
        $_SESSION["message"][]="Vous êtes bien déconnecté.";
        header("location:" . hlien("_default"));          
    }
}
