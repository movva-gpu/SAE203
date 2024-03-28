<?php
if (!isset($_GET['scp_id']) && !isset($_GET['user_id'])) {
    header('Location: /?error=no_arg');
    exit();
}

$scp_db = include 'login.php';

if (isset($_GET['scp_id'])) {
    $scp_id = $_GET['scp_id'];
    $req = 'SELECT * FROM scps WHERE scp_id = ' . $scp_id . ';';
    $item = $scp_db->query($req)->fetch();

    $title = 'Modification de ' . $item['scp_num'] . ' - ' . $item['scp_name'];
    $input['Objet n°'] = $item['scp_num'];
    $input['Nom de l\'entité'] = $item['scp_name'];
    $input['Classe(s)'] = $item['scp_class'];
    $input['Nom de l\'image'] = $item['scp_pic'];
    $input['Texte alternatif'] = $item['scp_alt'];
    $text_area['Procédures de confinement spéciales'] = $item['scp_proc'];
    $text_area['Description'] = $item['scp_desc'];

    $select = $scp_db->query('SELECT user_nick, user_id FROM users;')->fetchAll();
} elseif (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
    $req = 'SELECT * FROM users WHERE user_id = ' . $user_id . ';';
    $item = $scp_db->query($req)->fetch();

    $title = 'Modification de ' . $item['user_nick'];
    $input['Pseudonyme'] = $item['user_nick'];
    $input['Genre'] = $item['user_gender'];
    $input['Emplacement'] = $item['user_loc'];
    $text_area['Biographie'] = $item['user_bio'];

    $select = $scp_db->query('SELECT scp_num, scp_id FROM scps;')->fetchAll();
}

require_once 'form.php';

?>
