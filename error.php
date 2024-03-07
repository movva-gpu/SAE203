<?php
require 'utils.module';
$title = 'Erreur ' . (!empty($_GET['err']) ? $_GET['err'] : '400');
importHeader($title);
?>

    <main>
        <h1><?= $title ?></h1>
        <h2 style="text-align: center">
            <?php switch (!empty($_GET['err']) ? $_GET['err'] : '400') {
                case '400':
                    echo 'Bad Request';
                    break;
                case '401':
                case '403':
                    echo 'Accès non autorisé';
                    break;
                case '404':
                    echo 'Fichier introuvable';
                    break;
            } ?>
        </h2>
    </main>

<?php
require 'components/footer.inc';
