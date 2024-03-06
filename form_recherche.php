<?php
require 'utils.module';

importHeader('Recherche');
?>

<main>
    <h1>Recherche</h1>
    <form>
        <label for="author_name">Nom d'un&middot;e auteur&middot;ice / d'un&middot;e traducteur&middot;ice</label>
        <input type="text" name="author_name" id="author_name" required>
        <button class="btn back">Retour</button>
        <button class="btn submit">Rechercher</button>
    </form>
</main>

<?php
require 'components/footer.inc';
