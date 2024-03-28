<?php
require 'utils.module';
importHeader('Administration');
?>

    <main>
        <?php require_once 'admin/' . ($_GET['page'] ?: 'index') . '.php'; ?>
    </main>

<?php require 'components/footer.inc';
