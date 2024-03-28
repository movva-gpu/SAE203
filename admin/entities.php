<?php

$scp_db = include 'login.php';

$req = 'SELECT * FROM `scps`;';

$scps = $scp_db->query($req)->fetchAll();
?>

<h1>Gestion des entités</h1>
<button class="admin listing back">Retour</button>

<button class="admin add listing scp">Ajouter</button>

<table id="datatable">
    <thead>
        <tr>
            <th>Numéro d'entité</th>
            <th>Nom de l'entité</th>
            <th>Classe(s) de l'entité</th>
            <th>Image</th>
            <th>Texte alternatif</th>
            <th>Procédures de confinement spéciales</th>
            <th>Description</th>
            <th>Autheur·ice</th>
            <th>Traducteur·ice</th>
            <th>Modifier</th>
            <th>Supprimer</th>
        </tr>
    </thead>
    <tbody>
    <?php foreach ($scps as $scp) {
        echo '<tr>';
        foreach ($scp as $keyX => $value) {
            if (!$value) {
                $value = '';
            }
            switch ($keyX) {
                case 'scp_num':
                    echo '<th>' . $value . '</th>';
                    break;
                case 'scp_pic':
                    echo '<td><a style="text-decoration: none;"  href="/assets/img/' .
                        $value .
                        '" title="Ouvrir l\'image"><img src="/assets/img/' .
                        $value .
                        '"></a></td>';
                    break;
                case '_author_id':
                case '_translator_id':
                    $req = "SELECT * FROM `users` WHERE user_id = $value;";
                    $user = $scp_db->query($req)->fetch();
                    echo '<td>' . ($user['user_nick'] ?? '') . '</td>';
                    break;
                case 'scp_desc':
                case 'scp_proc':
                case 'scp_name':
                case 'scp_alt':
                case 'scp_class':
                    echo '<td><p>' . htmlentities($value) . '</p></td>';
                    break;
            }
        }
        echo '<td><a href="/admin.php/?page=edit&scp_id=' .
            $scp['scp_id'] .
            '">Modifier</a></td>' .
            "\n";
        echo '<td><a href="/admin.php/?page=delete&scp_id=' .
            $scp['scp_id'] .
            '">Supprimer</a></td>' .
            "\n";
        echo '</tr>' . "\n";
    } ?>
    </tbody>
</table>
