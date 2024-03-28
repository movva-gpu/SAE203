<?php

$scp_db = include 'login.php';

$req = 'SELECT * FROM `users`;';

$users = $scp_db->query($req)->fetchAll();
?>

<h1>Gestion des entités</h1>
<button class="admin listing back">Retour</button>

<button class="admin add listing user">Ajouter</button>

<table id="datatable">
    <thead>
    <tr>
        <th>Pseudonyme</th>
        <th>Genre</th>
        <th>Emplacement</th>
        <th>Biographie</th>
        <th>SCP</th>
        <th>Modifier</th>
        <th>Supprimer</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($users as $user) {
        echo '<tr>';
        foreach ($user as $keyX => $value) {
            if (!$value) {
                $value = '';
            }
            switch ($keyX) {
                case 'user_nick':
                    echo '<th>' . $value . '</th>';
                    break;
                case '_scp_id':
                    if ($value !== 0 && $value) {
                        $trad_or_auth = 'Auteur·ice de ';
                        $req = "SELECT * FROM `scps` WHERE `_author_id` = $value;";
                        $scp = $scp_db->query($req)->fetch();
                        if (!$scp) {
                            $trad_or_auth = 'Traducteur·ice de ';
                            $req = "SELECT * FROM `scps` WHERE `_translator_id` = $value;";
                            $scp = $scp_db->query($req)->fetch();
                        }
                        echo '<td>' . $trad_or_auth . ($scp['scp_num'] ?? '') . '</td>';
                        break;
                    }
                    echo '<td></td>';
                    break;
                case 'user_gender':
                case 'user_loc':
                case 'user_bio':
                    echo '<td><p>' . htmlentities($value) . '</p></td>';
                    break;
            }
        }
        echo '<td><a href="/admin.php/?page=edit&user_id=' .
            $user['user_id'] .
            '">Modifier</a></td>' .
            "\n";
        echo '<td><a href="/admin.php/?page=delete&user_id=' .
            $user['user_id'] .
            '">Supprimer</a></td>' .
            "\n";
        echo '</tr>' . "\n";
    } ?>
    </tbody>
</table>
