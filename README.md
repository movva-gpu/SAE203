<div align=center>
    <img src="readme-logo.svg" alt="Logo de la fondation SCP">
    <h3>FONDATION SCP</h3>
</div>

<br>

<h1 align=center>SA&Eacute;203 - Listing de SCP</h1>

<div align="center">
    <a href="https://creativecommons.org/licenses/by-sa/4.0/deed.fr"><img alt="License" src="https://img.shields.io/badge/License-CC--BY--SA-EF9421?style=for-the-badge&labelColor=dimgray&logo=creativecommons&logoColor=white"></a>
    &emsp;
    <img alt="Node.js version" src="https://img.shields.io/badge/Node-20.x-339933?style=for-the-badge&logo=nodedotjs&logoColor=white&labelColor=dimgray">
    &emsp;
    <img alt="Gulp version" src="https://img.shields.io/badge/Gulp-4.0-CF4647?style=for-the-badge&logo=gulp&logoColor=white&labelColor=dimgray">
    <br>
    <img alt="SQL Server" src="https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white&labelColor=003545">
    &emsp;
    <img alt="Web Server" src="https://img.shields.io/badge/Apache 2-D22128?style=for-the-badge&logo=apache&logoColor=white&labelColor=D22128">
</div>

## Introduction

Pour ce projet, nous devons réaliser individuellement un site présentant les données de notre choix. Ces données,
contrairement à la [SA&Eacute;105](https://github.com/movva-gpu/SAE105), doivent être stockées dans une base de donnés
MySQL pour être manipulable bien plus facilement qu'en JSON.

Il doit aussi avoir un "*back office*" permettant à un éventuel admin de gérer les données facilement sans avoir à
utiliser PhpMyAdmin ou le shell.

Enfin, la base de données doit contenir deux tables reliées entre elles.
Dans mon cas, il s'agit de SCP ainsi que des utilisateurs ayant écrit ou traduit les publications sur le site
de <http://fondationscp.wikidot.com/>.
Celles-ci doivent avoir au moins six (6) champs (sans compter l'ID) dans l'une, et trois (3) dans l'autre.

## Hébergement

Le site est hébergé sur un VPS à l'adresse <http://mmi23f23.sae203.ovh>, sous un nom de domaine géré par
l'établissement.

Le server web utilisé est [The Apache HTTP Server Project](https://httpd.apache.org/), alias *httpd*.

La configuration du site est disponible dans le dossier apache/.

## Déploiement

Pour build et *compiler* le site sur mon VPS, j'utilise [gulp](https://gulpjs.com/) afin de minifier mon CSS
avec [cssnano](https://cssnano.github.io/cssnano/), mon JS avec [UglifyJS](https://lisperator.net/uglifyjs/) (⚠️
Attention aux astigmates et aux épileptiques photosensibles, le site d'UglifyJS est vieux et pas du tout accessible.
⚠️).
Enfin, il me sert à minifier mon PHP/HTML et à déployer mon site
avec [sshpass](https://sourceforge.net/projects/sshpass/) et [scp](https://man.archlinux.org/man/scp.1.en).

## Instructions

Pour déployer vous-même mon projet sur votre propre VPS, suivez les étapes suivantes :

* Vérifiez vos versions respectives de node, npm et npx :

    ```shell
    node --version
    ```

    ```shell
    npm --version
    ```

    ```shell
    npx --version
    ```

  > Si l'un d'entre eux n'est pas installé, suivez les instructions [ici](https://nodejs.org/en).

* Installez le cli de gulp

    ```shell
    npm install --global gulp-cli
    ```

* Vérifiez si vous avez git d'installé

    ```shell
    git --version
    ```

  > Sinon, suivez ces instructions [ici](https://git-scm.com/book/fr/v2/D%C3%A9marrage-rapide-Installation-de-Git).

* Clonez le repo git

    ```shell
    git clone https://github.com/movva-gpu/SAE203.git
    ```

    ```shell
    cd SAE203
    ```

* Installez les dépendances du projet

    ```shell
    npm install
    ```

* Configurez une base de données MySql puis importez la

    ```shell
    mysql nomDeLaBase < sql/sae203Base.sql
    ```

* Créez une configuration en suivant l'exemple de conf/example

* Enfin, déployez le site

    ```shell
    gulp
    ```