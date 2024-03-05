<?php
require 'utils.module';
require 'class/SCP.php';

importHeader('SCPs');

$test_1 = new \class\SCP(0, 'SCP-500', 'La Panacée', 'Sûr', '500.avif', 'Des pilules de SCP-500.',
    'SCP-2151-A et SCP-2151-B doivent être gardés séparément l\'un de l\'autre dans des casiers de confinement de 
    haute sécurité situés au Site-81. À titre provisoire, les expérimentations sur SCP-2151-A et -B sont suspendues.
    <br><br>
    SCP-2151-1A doit être préservé indéfiniment au Site-81 ou, le cas échéant, jusqu\'à ce que SCP-2151-1A expire.',
    'SCP-500 doit être stocké dans un endroit frais et sec à l\'abri de la lumière. Seul le personnel ayant au 
    moins un niveau de sécurité supérieur ou égal à 4 peut avoir accès à SCP-500 afin d\'éviter une 
    mauvaise utilisation', 0, 0);

$test_2 = new \class\SCP(1, 'SCP-2151', 'Le Lien qui nous unit', 'Sûr', '2151.avif', 'SCP-2151-A.',
    'SCP-2151-A et SCP-2151-B doivent être gardés séparément l\'un de l\'autre dans des casiers de confinement de 
    haute sécurité situés au Site-81. À titre provisoire, les expérimentations sur SCP-2151-A et -B sont suspendues.
    <br><br>
    SCP-2151-1A doit être préservé indéfiniment au Site-81 ou, le cas échéant, jusqu\'à ce que SCP-2151-1A expire.',
    'SCP-2151-A et SCP-2151-B sont deux bagues d\'acier inoxydable presque identiques l\'une de l\'autre.
    En dehors de l\'effet qu\'elles provoquent sur des porteurs humains, elles ne sont pas dotées de
    propriétés anormales.
    <br><br>
    Si deux êtres humains portent SCP-2151-A et SCP-2151-B, tout contact physique entre eux activera SCP-2151-A et -B.
    Dès l\'instant du contact, les deux objets subiront un brusque accroissement de leur température et fusionneront
    sous la peau du porteur par l\'effet de la chaleur. Le phénomène s\'achève rapidement, les objets prenant
    généralement moins de 20 secondes avant de disparaître complètement à l\'intérieur de la peau des porteurs.
    <br><br>
    Le point de contact entre les deux sujets subira aussi un accroissement de température, causant généralement de
    graves brûlures autour de cette zone, et soudant la peau présente à cet endroit. Au fur et à mesure, la peau
    rattachant les deux individus se soudera sur une surface de plus en plus étendue, absorbant à terme l\'intégralité
    des corps des deux sujets. Progressivement, les caractéristiques distinctives des deux individus se déformeront
    et deviendront méconnaissables au regard de leur état initial. De multiples fonctions biologiques seront
    complètement interrompues1. L\'entité engendrée est classifiée en tant que SCP-2151-1(X). Il est pour
    l\'heure impossible de confirmer que les fonctions cognitives des individus sont préservées pendant le
    déroulement du processus.
    <br><br>
    Au terme de ce processus, SCP-2151-A et SCP-2151-B émergeront spontanément du corps obtenu. Nulle autre activité
    anormale ne peut être observée à partir de ce moment.
    <br><br>
    SCP-2151-1A est une entité considérée comme ayant été produite par l\'effet de SCP-2151-A et -B sur deux êtres
    humains. Cette entité a été découverte au domicile de M. █████ et de ███████ ████████, dans la chambre de
    <em class="mono">[DONNÉES&nbsp;SUPPRIMÉES]</em>. Alors que les autres
    instances de SCP-2151-1(X) ont expiré rapidement après leur formation, SCP-2151-1A a survécu pendant plus de
    30 ans après sa découverte. Des recherches visant à en comprendre les raisons sont
    en cours.',0, 0);

$test_ipsum = new \class\SCP(2, 'SCP-Ispum', 'Lorem Ipsum', 'Sûr, Ipsum',
    'https://placehold.co/800x600/213/f0f0f0/','Lorem Ipsum',
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

?>

<main>
    <h1>Voici les certains des SCPs que la fondation a pu recensser</h1>
    <div class="scp-wrapper">
        <?= $test_1->getDiv() ?>
        <?= $test_2->getDiv() ?>
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

<?php
require 'components/footer.inc';
