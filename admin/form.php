<?php
error_reporting(E_ALL);
$scp_db = include 'login.php';

if ($_GET['page'] === 'add') {
    $item = [];
    if (isset($_GET['scp'])) {
        $title = 'Ajout d\'un SCP';
        $input['Objet n°'] = '';
        $input['Nom de l\'entité'] = '';
        $input['Classe(s)'] = '';
        $input['Nom de l\'image'] = '';
        $input['Texte alternatif'] = '';
        $text_area['Procédures de confinement spéciales'] = '';
        $text_area['Description'] = '';
        $select = $scp_db->query('SELECT user_nick, user_id FROM users;')->fetchAll();
    } elseif (isset($_GET['user'])) {
        $title = 'Ajout d\'un utilisateur';
        $input['Pseudonyme'] = '';
        $input['Genre'] = '';
        $input['Emplacement'] = '';
        $text_area['Biographie'] = '';
    } else {
        die();
    }
}
?>

<h1><?= $title ?: 'Untitled' ?></h1>
<button class="admin <?= isset($item['scp_id']) || isset($_GET['scp'])
    ? 'scp'
    : 'user' ?> listing back">Retour</button>

<form class="edit admin-form" action="admin.php/?page=validation&action=<?= $_GET['page'] === 'edit'
    ? Actions::EDIT
    : Actions::CREATE ?>&item=<?= isset($item['scp_id']) || isset($_GET['scp'])
    ? 'scp'
    : 'user' ?>" method="POST">
    <?php
    echo $_GET['page'] === 'edit'
        ? '<label for="id">ID</label>' .
            "\n" .
            '<input name="id" id="id" value="' .
            ($item['scp_id'] ?? ($item['user_id'] ?? '')) .
            '" ' .
            'title="Impossible à modifier" disabled required>'
        : '';
    foreach ($input as $key => $value) {
        echo '<label for="' .
            str_replace(' ', '-', strtolower($key)) .
            '">' .
            $key .
            '</label>' .
            '<input type="text" id="' .
            str_replace(' ', '-', strtolower($key)) .
            '" name="' .
            str_replace(' ', '-', strtolower($key)) .
            '" value="' .
            ($value ?? '') .
            '" required>';
    }
    foreach ($text_area as $key => $value) {
        echo '<label for="' .
            str_replace(' ', '-', strtolower($key)) .
            '">' .
            $key .
            '</label>' .
            '<textarea  cols="64" rows="15" id="' .
            str_replace(' ', '-', strtolower($key)) .
            '" name="' .
            str_replace(' ', '-', strtolower($key)) .
            '" required>' .
            ($value ?? '') .
            '</textarea>';
    }

    if ((isset($scp_id) || isset($_GET['scp'])) && !empty($select)) {
        echo '<label for="author">Auteur·ice</label>' .
            '<select name="author" id="author" required>';
        foreach ($select as $option_1) {
            echo '<option value="' .
                $option_1['user_id'] .
                '" ' .
                (!$_GET['page'] != 'edit'
                    ? ($option_1['user_id'] === $item['_author_id']
                        ? 'selected'
                        : '')
                    : '') .
                '>' .
                $option_1['user_nick'] .
                '</option>';
        }
        echo '</select>';
        echo '<label for="translator">Traducteur·ice</label>' .
            '<select name="translator" id="translator" required>';
        foreach ($select as $option_2) {
            echo '<option value="' .
                $option_2['user_id'] .
                '" ' .
                (!$_GET['page'] != 'edit'
                    ? ($option_2['user_id'] === $item['_translator_id']
                        ? 'selected'
                        : '')
                    : '') .
                '>' .
                $option_2['user_nick'] .
                '</option>';
        }
        echo '</select>';
    }
    if (isset($user_id) || (isset($_GET['user']) && !empty($select))) {
        echo '<label for="author">SCPs</label>' . '<select name="author" id="author" required>';
        foreach ($select as $option) {
            echo '<option value="' .
                $option['scp_num'] .
                '" ' .
                (!$_GET['page'] != 'edit'
                    ? ($option['scp_id'] === $item['_scp_id']
                        ? 'selected'
                        : '')
                    : '') .
                '>' .
                $option['scp_num'] .
                '</option>';
        }
        echo '</select>';
    }
    ?>
    <button type="submit">Sauvegarder</button>
</form>
