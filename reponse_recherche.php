<?php

if (empty($_POST['author_name'])) {
    header('Location: /form_recherche.php?err=empty');
}

use class\SCP;

require 'utils.module';
require 'class/SCP.php';

importHeader('Résultats de la recherche');

$test_ipsum = new SCP(2, 'SCP-Ispum', 'Lorem Ipsum', 'Sûr, Ipsum',
    'https://placehold.co/800x600/213/f0f0f0/', 'Lorem Ipsum',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse laboriosam ipsam debitis
    tempora deserunt dolore, similique quibusdam odio! Nam modi voluptatibus similique dolorum, asperiores quasi
    inventore odio et nesciunt. Sed.
    Quidem ipsum qui quod laudantium in incidunt facilis quaerat. Aut itaque obcaecati suscipit cumque voluptatibus
    ab in id omnis vel. Nisi fugiat consequatur porro quidem atque sint fugit voluptate architecto.
    Soluta ullam veritatis dolore autem necessitatibus tempora? Quam, esse obcaecati aut minima perferendis eligendi!
    Commodi minus consequuntur aliquam ea! Eaque odio accusamus, accusantium earum doloremque saepe similique.
    A, quisquam et.
    Dolorem, vel molestiae. Rem facilis corrupti ipsam dolorum laboriosam doloribus sapiente? Ratione provident
    accusamus dolorem repudiandae doloremque sit unde, dolorum repellat odit! Fugit at nisi repudiandae autem natus.
    Deserunt, possimus?',
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, quo! Aut necessitatibus ab in
    omnis voluptatibus itaque quos adipisci consequuntur placeat est laborum voluptas assumenda sint provident,
    veritatis cum animi!
    Sint iure ipsum, consequatur voluptate est dicta odio voluptates. Aliquam amet accusamus sint natus,
    eveniet accusantium exercitationem fuga qui hic eius quia porro quod asperiores cum
    veritatis soluta reiciendis aperiam.', 0, 0);

$author = htmlspecialchars($_POST['author_name'], ENT_QUOTES);
?>

<main>
    <h1>Résultats de la recherche : <em class="search"><?= $author ?></em></h1>
    <div class="scp-wrapper">
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
        <?= $test_ipsum->getDiv() ?>
    </div>
</main>