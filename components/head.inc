<!doctype html>
<html lang="fr">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />

        <title><?php if (isset($title)) { echo $title ?: 'Sans titre'; } ?></title>

        <link rel="preload" type="text/css" as="style" href="/assets/css/style.css" />
        <link rel="preload" type="image/avif" as="image" href="/assets/img/back.avif" />

        <link rel="apple-touch-icon shortcut icon" type="image/x-icon" href="/favicon.ico" />
        <link rel="stylesheet" type="text/css" href="/assets/css/style.css" />
        <?php if (isset($title) && $title == 'Administration') echo '
        <link
            rel="stylesheet"
            href="//cdn.datatables.net/2.0.3/css/dataTables.dataTables.min.css" />
        ' . '
        <script src="//cdn.datatables.net/2.0.3/js/dataTables.min.js" defer></script>
        ' . '
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
        ' . '
        <script src="/assets/js/admin.js"></script>
        '; ?>
    </head>
