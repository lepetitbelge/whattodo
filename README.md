# Introduction

Dear Karine & Thomas,

This project was inspired by and made for you. Oh no, it is not just another Todo app...

Kind regards,
Christophe

## WhatToDo

This app allows you to manage your todos. Because that's very important and there is no decent software that allows us to do so yet!

The goal was to create a single page app for this purpose and use AJAX and RoR as main technologies.

## Techs used

* Ruby-On-Rails
* PostgreSQL
* Vanilla JS
* AJAX & JQUERY
* Gems(!): pundit and devise
* Heroku

## How to use WhatToDo?

1. Go to https://idontknowwhattodo.herokuapp.com/
2. You can log in or sign up to continue
..* I have already created accounts for each of you, which are already populated with various todo's so feel free to use those
..* Karine:
...* email: karine@poulpe.com
...* pw: 123456
..* Thomas:
...* email: thomass@poulpe.com
...* pw: 123456
3. Check user stories

## User stories
[x] Je dois pouvoir sign-in/sign-up avec un email/mot de passe ou via Facebook ;
[x] Je dois pouvoir ajouter/supprimer des tâches ;
[x] Je dois pouvoir donner un ordre de priorité à des tâches ;
[x] Je dois pouvoir attribuer une deadline à une tâche ;
[x] Je dois pouvoir marquer une tâche comme “réalisée” ;
[x] Je dois pouvoir ajouter des commentaires à une tâche ;
[x] Je dois pouvoir supprimer un commentaire ;

[x] = present
[/] = partly present
[ ] = not present

## Pré-requis techniques
[x] Application web avec un backend RubyOnRails et une database relationnelle (Postgresql)
[x] Il est nécessaire de gérer à la fois l’authentication ET l’authorization : l’utilisateur ne doit pouvoir accéder qu’à ses propres tâches
[x] L’utilisation de gems (notamment Devise et Pundit) est recommandée
[x] Les validations doivent se faire aussi bien côté client que côté serveur
[/] L’application doit fonctionner entièrement en mode “single page” avec des requêtes AJAX (sans rechargement de la page)
[x] La stack front est libre. En plus de HTML5/CSS3, le candidat est libre d'utiliser un framework css ou non (ex: Materialize, Booststrap) et un framework JS ou non (ex: React)
[I did my best] Toute attention portée à l’UX de l’application sera appréciée 🙂
