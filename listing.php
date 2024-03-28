<?php
require 'utils.module';
require 'class/SCP.php';
use class\SCP;

importHeader('SCPs');

$scp_db = include 'login.php';

$req = 'SELECT scps.*,
    author.user_nick AS author_nick,
    author.user_bio AS author_bio,
    author.user_gender AS author_gender,
    author.user_loc AS author_loc,
    translator.user_nick AS translator_nick,
    translator.user_bio AS translator_bio,
    translator.user_gender AS translator_gender,
    translator.user_loc AS translator_loc
    FROM scps INNER JOIN users AS author ON
    scps._author_id = author.user_id INNER JOIN users AS translator ON
    scps._translator_id = translator.user_id ORDER BY scps.scp_num;';
$empty_translator_req = 'SELECT * FROM `scps` WHERE scps._translator_id = -1;';
$scps = $scp_db->query($req)->fetchAll();
$empty_translator_scps = $scp_db->query($empty_translator_req)->fetchAll();
?>

<main>
    <h1>Voici les certains des SCPs que la fondation a pu recenser</h1>
    <button class="listing back">Retour</button>
    <div class="scp-wrapper">
        <?php
        foreach ($scps as $scp) {
            $scp = new SCP(
                $scp['scp_id'],
                $scp['scp_num'],
                $scp['scp_name'],
                $scp['scp_class'],
                $scp['scp_pic'],
                $scp['scp_alt'],
                $scp['scp_desc'],
                $scp['scp_proc'],
                $scp['_author_id'],
                $scp['_translator_id']
            );
            echo $scp->getDiv();
        }
        foreach ($empty_translator_scps as $empty_translator_scp) {
            $scp = new SCP(
                $empty_translator_scp['scp_id'],
                $empty_translator_scp['scp_num'],
                $empty_translator_scp['scp_name'],
                $empty_translator_scp['scp_class'],
                $empty_translator_scp['scp_pic'],
                $empty_translator_scp['scp_alt'],
                $empty_translator_scp['scp_desc'],
                $empty_translator_scp['scp_proc'],
                $empty_translator_scp['_author_id'],
                -1
            );
            echo $scp->getDiv();
        }
        ?>
    </div>
</main>

<?php require 'components/footer.inc';
