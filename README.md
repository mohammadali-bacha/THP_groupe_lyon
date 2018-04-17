## README DE BASE DU SEUL GROUPE THP SESSION4 #LYON

# DAY 11
Hello et bienvenue sur notre github, courage pour la correction !
<<<<<<< HEAD
Les programmes Ruby que nous allons vous présenter, ont été fait par l'équipe de Lyon en formation dans "The Hacking Project". Cette équipe de quatre est composé de Hugo, Odyssé,Mohammad-Ali et David. 
=======
Les programmes Ruby que nous allons vous présenter, ont été fait par l'équipe de Lyon en formation dans "The Hacking Project". Cette équipe de quatre est composé de Hugo, Odyssé,Mohammad-Ali et David.
>>>>>>> 014d59aee1d157ecc9be4ba954d138bd6c29211d

Theme de jour : Spammer les mairies

Infos sur les exos a partager :

CONSIGNES
<<<<<<< HEAD

Pour cet excercice il nous faut créer un programme pour scrapper les nom et mails des mairies de trois départements, leurs envoyer des mails pour faire un peu de pub et les twitter pour bien les spammer .



1.Scrapper
Ce code permet de récupérer les noms et les adresses e-mails des mairies du département des Hauts-de-Seine et les implanter à la spreadsheet de Google. (malheureusement on a pas réussi à le configurer pour qu'il récolte trois départements en même temps).
Pour l'utiliser:
-Notez bien adresse dans la partie spreadsheet (elle y est déjà en principe):
1yqWCFEruHoYZivjpH8usza9NaySHgy1BvNLZhyiH-IU
=======

Pour cet excercice il nous faut créer un programme pour scrapper les nom et mails des mairies de trois départements, leurs envoyer des mails pour faire un peu de pub et les twitter pour bien les spammer .

Afin de fonctionner avec vos identifiants vous dervrez creer un fichier .env et le renseigner avec vos login perso comme suit :
#pour twitter:
consumerkey="XXXXXXX"
consumersecret="XXXXXXX"
token="XXXXXXXXX"
tokensecret="XXXXXXXXX"

#pour Gmail:
gmail_adress="XXXXXXX"
gmail_pwd="XXXXXXX"

Ainsi qu'un fichier config.json avec vos identifiants Gdrive

{
  "client_id": "XXXXXXX",
  "client_secret": "XXXXXXX",
  "scope": [
    "https://www.googleapis.com/auth/drive",
    "https://spreadsheets.google.com/feeds/"
  ],
  "refresh_token": "XXXXXXXXXXX"
}




1.Scrapper
Ce code permet de récupérer les noms et les adresses e-mails des mairies du département des Hauts-de-Seine et les implanter à la spreadsheet de Google. (malheureusement on a pas réussi à le configurer pour qu'il récolte trois départements en même temps).
Pour l'utiliser:

-Notez bien adresse dans la partie spreadsheet (elle y est déjà en principe):
https://docs.google.com/spreadsheets/d/1yqWCFEruHoYZivjpH8usza9NaySHgy1BvNLZhyiH-IU/edit#gid=0

>>>>>>> 014d59aee1d157ecc9be4ba954d138bd6c29211d
-Lancez le programme avec ruby attendez quelques minutes le temps du chargement.

2.Mail
Ce programme permet d'envoyer un mail à toute les adresses regroupées sur le spreadsheet.
-il suffit de le lancer sur Ruby
-

3.Twitter
Pas suffisemment eu de temps pour terminer, le programme se content de rechercher tous les comptes ayant twitter recemement contenant le mot "MAIRIES"  et de les ajouter.



## Construit avec

* Atom
* et la super team #elonmuskrew

## Contributors with peer-learning :

* Mohammad-Ali: https://github.com/mohammadali-bacha
* Odssey: https://github.com/Odssey
* oseus: https://github.com/oseus
* Hug-O: https://github.com/Hug-O

## Slack des contributeurs :

* Mohammad-Ali : @Mohammad-Ali
* Odyssée Levine : @Odyssée Levine 
* David Coat : @Coat David 
* Hugo : @Hugo
