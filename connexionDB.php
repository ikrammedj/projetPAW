<?php
    class connexionDB {
        public function connect($serveur,$user,$password){
            try{
                $connexion = new PDO("mysql:host=$serveur;dbname=isil",$user,$password);
                $connexion -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                return $connexion;
                $y="SELECT * FROM students"
                $y=$connexion->query($y);
            }
            catch(PDOException $e){
                echo ('ERROR :'.$e->getMessage());
            }
        }
    }
?>