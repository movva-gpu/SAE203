-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sae203Base
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-0+deb10u2
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `scps`
--
DROP TABLE IF EXISTS `scps`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `scps` (
    `scp_id` tinyint (4) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant unique de l''entité',
    `scp_num` varchar(40) NOT NULL COMMENT 'Numéro de l''entité',
    `scp_name` varchar(150) NOT NULL COMMENT 'Dénomination de l''entité',
    `scp_class` varchar(25) NOT NULL COMMENT 'Classe(s) de l''entité',
    `scp_pic` varchar(64) DEFAULT 'https://placehold.co/800x600/213/f0f0f0/' COMMENT 'Photo de l''entité',
    `scp_alt` varchar(112) DEFAULT NULL COMMENT 'Texte alternatif',
    `scp_proc` text DEFAULT NULL COMMENT 'Procédures de confinements spéciales de l''entité',
    `scp_desc` text DEFAULT NULL COMMENT 'Description de l''entité',
    `_author_id` tinyint (4) NOT NULL COMMENT 'Identifiant unique de l''auteur',
    `_translator_id` tinyint (4) DEFAULT NULL COMMENT 'Identifiant unique du traducteur',
    PRIMARY KEY (`scp_id`)
) ENGINE = MyISAM AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Liste des SCP';

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scps`
--
LOCK TABLES `scps` WRITE;

/*!40000 ALTER TABLE `scps` DISABLE KEYS */;

INSERT INTO
    `scps`
VALUES
    (
        1,
        'SCP-500',
        'La Panacée',
        'Sûr',
        '500.avif',
        'Des pilules de SCP-500.',
        'SCP-500 doit être stocké dans un endroit frais et sec à l\'abri de la lumière. Seul le personnel ayant au moins un niveau de sécurité supérieur ou égal à 4 peut avoir accès à SCP-500 afin d\'éviter une mauvaise utilisation.',
        'SCP-500 est une boite plastique qui, au moment de l\'écriture de ce rapport, contient quarante-sept (47) pilules rouges. Une pilule, une fois prise oralement, guérit celui qui l’a prise de toutes les maladies dans les deux heures. L’heure exacte varie en fonction de la sévérité et de la quantité des maladies du sujet. En dépit de nombreux essais, toutes les tentatives de synthèse de ce qui semble être le principe actif de SCP-500 ont été infructueuses.',
        1,
        2
    ),
    (
        2,
        'SCP-2151',
        'Le Lien qui nous unit',
        'Sûr',
        '2151.avif',
        'SCP-2151-A.',
        'SCP-2151-A et SCP-2151-B doivent être gardés séparément l\'un de l\'autre dans des casiers de confinement de haute sécurité situés au Site-81. À titre provisoire, les expérimentations sur SCP-2151-A et -B sont suspendues.<br><br>SCP-2151-1A doit être préservé indéfiniment au Site-81 ou, le cas échéant, jusqu\'à ce que SCP-2151-1A expire.',
        'SCP-2151-A et SCP-2151-B sont deux bagues d\'acier inoxydable presque identiques l\'une de l\'autre. En dehors de l\'effet qu\'elles provoquent sur des porteurs humains, elles ne sont pas dotées de propriétés anormales.<br><br>Si deux êtres humains portent SCP-2151-A et SCP-2151-B, tout contact physique entre eux activera SCP-2151-A et -B. Dès l\'instant du contact, les deux objets subiront un brusque accroissement de leur température et fusionneront sous la peau du porteur par l\'effet de la chaleur. Le phénomène s\'achève rapidement, les objets prenant généralement moins de 20 secondes avant de disparaître complètement à l\'intérieur de la peau des porteurs.<br><br>Le point de contact entre les deux sujets subira aussi un accroissement de température, causant généralement de graves brûlures autour de cette zone, et soudant la peau présente à cet endroit. Au fur et à mesure, la peau rattachant les deux individus se soudera sur une surface de plus en plus étendue, absorbant à terme l\'intégralité des corps des deux sujets. Progressivement, les caractéristiques distinctives des deux individus se déformeront et deviendront méconnaissables au regard de leur état initial. De multiples fonctions biologiques seront complètement interrompues1. L\'entité engendrée est classifiée en tant que SCP-2151-1(X). Il est pour l\'heure impossible de confirmer que les fonctions cognitives des individus sont préservées pendant le déroulement du processus.<br><br>Au terme de ce processus, SCP-2151-A et SCP-2151-B émergeront spontanément du corps obtenu. Nulle autre activité anormale ne peut être observée à partir de ce moment.<br><br>SCP-2151-1A est une entité considérée comme ayant été produite par l\'effet de SCP-2151-A et -B sur deux êtres humains. Cette entité a été découverte au domicile de M. <em class=\"redac\">█████</em> et de <em class=\"redac\">███████</em> <em class=\"redac\">████████</em>, dans la chambre de <em class=\"mono\">[DONNÉES SUPPRIMÉES]</em>. Alors que les autres instances de SCP-2151-1(X) ont expiré rapidement après leur formation, SCP-2151-1A a survécu pendant plus de 30 ans après sa découverte. Des recherches visant à en comprendre les raisons sont en cours.',
        3,
        4
    ),
    (
        3,
        'SCP-352-FR',
        'Les Doudous de Protection',
        'Sûr',
        'scp-352-fr-3.avif',
        'SCP-352-FR-3 lors de sa récupération.',
        'Une liste regroupant en détail les instances de SCP-352-FR sur le Site-Aleph doit être constamment mise à jour et consultable au centre de sécurité interne du site. Un recensement de toutes les instances doit être réalisé au minimum une fois par mois. Les différentes instances doivent être conservées dans une armoire de stockage à proximité du centre de sécurité, surveillée par une caméra.<br>À ce jour, 23 instances de SCP-352-FR sont référencées. Trois d\'entre elles ont été détruites lors de tests post-récupération, les autres sont rangées et disponibles pour d\'éventuels tests.<br><br>Toute modification locale du taux de Normalité au niveau du stockage de SCP-352-FR doit être immédiatement signalée à un chercheur de Niveau 2 attaché au projet.<br><br>Toute famille ayant été en contact avec la Personne d\'Intérêt \"Sélène Aeva\" doit faire l\'objet d\'une perquisition sous couvert d\'une enquête policière. Tout incident présentant un caractère inhabituel compatible avec les effets de SCP-352-FR doit faire l\'objet d\'une enquête pour vérifier l\'origine de ce phénomène. Ces caractères comprennent des phénomènes inhabituels ou improbables à proximité d\'un enfant, résultant la plupart du temps à écarter un danger potentiel.<br><br>Si une instance de SCP-352-FR est trouvée suite à ces évènements, elle doit être récupérée sous couvert de rappel de produit. Un remplacement par une copie non-anormale peut être proposé aux parents concernés en cas de refus de leur part. Si cela s\'avère nécessaire, les agents sont autorisés à utiliser une dose légère d\'amnésiques de Classe A.',
        'SCP-352-FR désigne des peluches pour enfant possédant des propriétés anormales communes, de taille et de forme diverses. Aucun motif n\'a pu être observé parmi toutes celles récupérées.<br><br>Chaque instance renferme dans son garnissage un petit cube en verre coulé de 20 mm de côté aux bords arrondis, nommé SCP-352-FR-A. Ce cube renferme un peu de rembourrage de la peluche et un élément organique d\'origine humaine, le plus souvent quelques cheveux ou des fragments d\'ongles. Des analyses ADN effectuées sur trois instances différentes, détruites pour les besoins de l’analyse, ont montré que ces éléments viennent de l\'enfant à qui appartient SCP-352-FR, dorénavant nommé SCP-352-FR-B. Il est à noter que chaque instance de SCP-352-FR fait partie des peluches favorites des enfants concernés. Il est à l\'heure actuelle impossible d\'établir si cet effet est une autre caractéristique anormale de l\'objet ou si ces peluches sont choisies à dessein.<br><br>Quand SCP-352-FR-B tient son instance de SCP-352-FR dans ses bras, un effet de stabilisation de la réalité est généré par la peluche, produisant un effet similaire à celui provoqué par une Ancre à Réalité de Scranton. La portée de cet effet, déterminée par des mesures effectuées lors des différentes récupérations, est estimée à deux mètres. Son degré de Normalité1 renforcé est de 0,12 St2 et sa variation est d\'environ 0,08 St. Les tests et mesures ne pouvant être effectués que lors de la récupération des instances de SCP-352-FR3, il est actuellement impossible de vérifier si ces variations sont propres au fonctionnement de SCP-352-FR ou si les instances ont des facultés différentes.<br><br>Si SCP-352-FR-A est enlevé de sa peluche originale puis placé dans une autre peluche appartenant à SCP-352-FR-B, l\'effet disparaît complètement. Remettre SCP-352-FR-A dans sa peluche initiale permet à l\'effet de SCP-352-FR de se manifester à nouveau.<br>Si une autre personne tient SCP-352-FR, aucun effet n\'est constaté même en présence de SCP-352-FR-B dans la zone d\'effet supposé de l\'instance.',
        5,
        -1
    ),
    (
        4,
        'SCP-002',
        'The Living Room',
        'Euclide',
        'scp-002.avif',
        'SCP-002 dans sa zone de confinement.',
        'SCP-002 doit rester connecté à une alimentation en énergie adaptée en permanence, afin de le maintenir dans ce qui semble être un mode de rechargement. En cas de panne de courant, la barrière d\'urgence entre l\'objet et l\'installation doit être fermée et les environs directs évacués. Une fois l\'alimentation en courant de l\'installation rétablie, des salves alternées de rayons X et d\'ultra-violets doivent éclairer la zone le temps que SCP-002 soit rebranché à l\'alimentation et retourne à son mode de chargement. La zone de confinement doit être maintenue à une pression de l\'air négative en toutes circonstances.<br><br>Des équipes incluant un minimum de deux (2) membres sont requises à moins de 20 mètres de SCP-002 ou de sa zone de confinement. Les membres du personnel doivent maintenir un contact physique les uns avec les autres à tout moment pour confirmer la présence d\'une autre personne qu\'eux-mêmes, la perception pouvant être émoussée, biaisée ou influencée par la proximité avec l\'objet.<br><br>Aucun membre du personnel d\'un Niveau inférieur à 3 n\'est autorisé à l\'intérieur de SCP-002. Cette exigence peut être levée par autorisation écrite provenant de deux (2) administrateurs hors-site de Niveau 4. Le personnel de commandement a décrété que les agents bénéficiant d\'une telle dérogation doivent être escortés par au minimum cinq (5) membres de la sécurité de Niveau 3 pour toute la durée du contact et doivent temporairement renoncer à leur rang et à leur accréditation de sécurité. Après le contact, le personnel de commandement sera escorté à au minimum 5 km de SCP-002 afin de subir une quarantaine de soixante-douze (72) heures et une évaluation psychologique. S\'il est considéré par le personnel psychologique comme étant apte au travail, son rang et son niveau de sécurité seront restaurés à la fin de la quarantaine.',
        'SCP-002 a l\'apparence d\'une croissance charnue et tumorale d\'un volume approximatif de 60 m3. Une trappe à valve de fer sur un côté mène à son intérieur, qui ressemble à un appartement à loyer modéré standard de taille modeste. Un des murs de la pièce possède une fenêtre, bien qu\'aucune ouverture de la sorte ne soit visible de l\'extérieur. La pièce contient des meubles qui, après un examen attentif, s\'avèrent être en os sculpté, en cheveux tissés et en autres substances biologiques produites par le corps humain. Toute la matière testée à ce jour possède des séquences d\'ADN indépendantes ou fragmentées pour chaque objet dans la pièce.<br><br>Se référer au rapport de Mulhausen pour les détails concernant la découverte de l\'objet.',
        6,
        7
    ),
    (
        5,
        'SCP-905',
        'Mr. Chameleon',
        'Sûr',
        'scp-905-red.avif',
        'SCP-905, teinté en rouge devant un fond blanc.',
        'SCP-905 doit être contenu dans une cellule de confinement de six (6) x six (6) x trois (3) mètres, peinte en noir mat. La cellule doit être dépourvue de miroirs ou de fenêtres. Deux tableaux à LED doivent être installés dans les logements de la cellule de SCP-905. Toutes les quatre heures, SCP-905 doit être nourrit pendant vingt (20) minutes.<br><br>Comme la réglementation actuelle concernant les \"Messieurs\" l’impose, SCP-913 doit être confiné dans le Hall <em class=\"redac\">██</em> du Site-<em class=\"redac\">██</em>.',
        'SCP-905 est une entité consciente composée de photons. Ces photons forment une silhouette humanoïde, celle-ci a été décrite comme \"floue, mais définie\". Elle mesure grossièrement 1,75 m de haut, sa masse est cependant non mesurable. SCP-905 a montré la capacité de parler à travers la manipulation des particules d\'air, mais le mécanisme qu\'il utilise pour réaliser cela est inconnu.<br><br>SCP-905 est capable d\'effectuer les mêmes mouvements qu\'un humain mâle avec la même structure corporelle, mais en raison de sa nature photonique, il est incapable de manipuler les objets solides qui n\'émettent pas de faible radiation électromagnétique. Les solides comme les portes doivent être déplacés pour que SCP-905 puisse entrer ou sortir d\'une pièce.<br><br>SCP-905 a la capacité de passer à travers les fenêtres et d\'autres objets transparents. Dans ce cas, les photons dont est composé SCP-905 suivent les lois de probabilité actuelles et seront reflétés à l\'opposé de l\'objet transparent à un taux de ~5 %, séparant chaque photon reflété de l\'influence de SCP-905. SCP-905 a décrit ceci comme douloureux mais supportable.<br><br>SCP-905 perd ses photons à un taux constant d\'approximativement 0,001 % de son volume corporel par seconde. Les photons sont émis sur une longueur d\'ondes de ~380 nm à ~780 nm, ou dans le spectre de la lumière visible pour l\'homme. SCP-905 a montré la capacité de changer la longueur d\'ondes émises pour coïncider à son environnement. Le fait que SCP-905 n\'ait pas d\'ombre et qu\'il puisse se cacher peut rendre sa détection problématique.<br><br>SCP-905 a montré une incapacité à absorber les lumières colorées. En raison de sa perte constante de photons, SCP-905 doit être \"nourri\" régulièrement dans le but de maintenir un volume corporel \"vital\".<br><br>Cependant, \"nourrir\" SCP-905 avec une trop grande quantité de photons lui cause une expérience de sursaturation. SCP-905 trouve cela extrêmement douloureux et le décrit comme d\'une manière similaire à une brûlure humaine. Placer un miroir près de SCP-905 afin qu\'il se \"nourrisse\" de ses propres émissions lui provoque un extrême inconfort. Quand il a été questionné, SCP-905 a répondu \"Vous aimeriez manger votre propre <em class=\"mono\">[JURON SUPPRIMÉ]</em> ?\"<br><br>SCP-905 fut découvert à l\'Entrée <em class=\"mono\">[DONNÉES SUPPRIMÉES]</em> du Site-<em class=\"redac\">██</em>.',
        8,
        9
    ),
    (
        6,
        'SCP-4830',
        'Head Like a Hole',
        'Keter',
        'scp-4830.gif',
        NULL,
        'SCP-4830 doit être gardé sous surveillance afin de détecter d\'éventuels transmissions en provenance de la noosphère1 vers l\'infosphère2.<br><br>Dans le cas d\'<span style=\"white-space: pre-wrap;\">     </span>transmission noosphère-infosphère ou d\'une situation nécessitant la neutralisation de SCP-4830 à tout prix, des Guillotines de Scranton3 doivent être déployées autour de toutes les installations de la Fondation (à l\'exception de la Zone-13) jusqu\'à ce que SCP-4830 soit neutralisé.<br><br>Tous les<span style=\"white-space: pre-wrap;\">                                 </span>de la Fondation montrant des signes d\'exposition à SCP-4820 doivent suivre un traitement mnésique de classe Z,<span style=\"white-space: pre-wrap;\">       </span>quarantaine au sein d\'une Guillotine de Scranton, et avoir leur souvenirs effacés<span style=\"white-space: pre-wrap;\">     </span>comparés avec<span style=\"white-space: pre-wrap;\">      </span>plus anciens souvenirs effacés sur le fichier. Toute déviation de plus de 10% au sein de la mémoire à long terme doit être<span style=\"white-space: pre-wrap;\">            </span>comme une brèche<span style=\"white-space: pre-wrap;\">                     </span>, et le membre du personnel infecté doit être muté vers la Zone-13.<br><br><br>Des dangers sensitifs spécifiques<span style=\"white-space: pre-wrap;\">                  </span>injectés au sein de la noosphère afin de<span style=\"white-space: pre-wrap;\">           </span>et endiguer la croissance de SCP-4830. Les dommages collatéraux aux<span style=\"white-space: pre-wrap;\">                                                </span>sont considérés comme sans importance, étant donnés que les individus<span style=\"white-space: pre-wrap;\">                               </span>présentent des signes précoces de troubles dégénératifs du cerveau non-anormaux.<br><br><br>Une campagne de désinformation<span style=\"white-space: pre-wrap;\">                                                                       </span>pandémie<span style=\"white-space: pre-wrap;\">                                   </span>4 au sein des<span style=\"white-space: pre-wrap;\">                      </span>scientifiques<span style=\"white-space: pre-wrap;\">             </span>.<br><br><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><br><br>DC-4830<span style=\"white-space: pre-wrap;\">          </span>être introduit<span style=\"white-space: pre-wrap;\">            </span>saturation de<span style=\"white-space: pre-wrap;\">                                     </span>hernie crânienne<span style=\"white-space: pre-wrap;\">              </span>volontaire<span style=\"white-space: pre-wrap;\">                               </span>cérébrophagie dans les médias d\'horreur<span style=\"white-space: pre-wrap;\">                                      </span>affaires d\'imitateur.<br><br><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span>',
        '<br><br><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><br><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><br><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span><br><span style=\"white-space: pre-wrap;\">                                                  </span>',
        10,
        11
    ),
    (
        7,
        'SCP-212',
        'The Improver',
        'Sûr',
        'scp-212.avif',
        'SCP-212 au travail sur l\'Agent <em class=\"redac\">████████</em>.',
        'L\'utilisation de SCP-212 requiert l\'approbation du médecin en chef de son site de confinement. Tout sujet soumis aux effets de SCP-212 doit se soumettre à des examens physionomiques et psychologiques avant et après exposition. Toute tentative de s\'y soustraire conduira à l\'élimination du sujet.<br><br>Tout membre du personnel doit conserver une distance de un virgule cinq (1,5) mètres avec SCP-212 lorsqu\'il est inactif. Le personnel armé est autorisé à utiliser toute force jugée nécessaire pour empêcher une exposition non-programmée. Dans le cas d\'une exposition accidentelle, le sujet devra être soumis à une mise en quarantaine totale, ainsi qu\'à des examens. La procédure judiciaire sera engagée dès que le sujet aura quitté SCP-212.',
        'SCP-212 est un dispositif médical imposant doté de trois (3) longs bras mécaniques. Ces bras possèdent un panel très diversifié d\'accessoires, mais aucun coffre de stockage et aucune source d\'énergie n\'ont pu être observées. Les accessoires glissent et sortent des bras mécaniques quand nécessaire, avec plus de cinq cents (500) accessoires différents documentés. SCP-212 est fait de plastique, d\'acier, et de d\'autres matériaux communs. Une analyse plus en profondeur est en cours d\'attente, car toute tentative d\'action mécanique déclenche des réactions violentes de la part de SCP-212, et qu\'une tentative d\'interaction \"biologique\" entraîne le protocole habituel \"d\'amélioration\" du sujet.<br><br>Quand l\'objet est exposé à un tissu organique, les \"bras\" de SCP-212 s\'agiteront rapidement pour le saisir et l\'immobiliser. SCP-212 va ensuite commencer à \"améliorer\" ledit tissu. Ce processus est extrêmement rapide, mais SCP-212 n\'injecte aucun anesthésiant, et ne remplace pas le sang perdu. Le processus a été décrit comme \"incroyablement douloureux\", et se termine par la mort du sujet dans 47% des cas. Les blessures causées par SCP-212 sont fermées par des points de suture classiques, associés à une \"colle\" chimique aux propriétés exactes inconnues.<br><br>Les améliorations observées incluent notamment : renforcement des articulations à l\'aide de graphite, remplacement des organes biologiques par des organes artificiels, renforcement des os par des plaques de métal, ajout ou duplications d\'organes, remplacement des dents par des bandes de métal dentelées, et bien d\'autres. Il a été démontré que SCP-212 possède la capacité de totalement \"reconfigurer\" un organisme. Les \"améliorations\" semblent aléatoires, et peuvent parfois être néfastes, voire même fatales, ceci étant démontré par le remplacement total de la moelle osseuse d\'un sujet par un gel toujours en cours d\'analyse.<br><br>Les sujets souhaitant s\'exposer aux effets de SCP-212 doivent être avertis du caractère extrêmement invasif de l\'opération, et qu\'aucune prédiction ne peut être faite quant à la nature des \"améliorations\" qu\'ils pourraient subir.',
        12,
        13
    ),
    (
        8,
        'SCP-5001',
        'Sacrosanct',
        'Thaumiel',
        'scp-5001.avif',
        'Portion de SCP-5001, directement à l\'extérieur de l\'unité de confinement principale.',
        'SCP-5001 ne doit pas cesser de fonctionner.<br><br>En raison de la nature autonome de SCP-5001, aucun membre du personnel ne doit interrompre ses fonctions mécaniques. Les tentatives d’étudier SCP-5001 sont limitées aux observations tactiles et visuelles. Le personnel qui endommage ou interrompt les fonctions de SCP-5001 doit être perdre son poste au sein de la Fondation et peut être sujet à des actions disciplinaires, sur décision du Comité d\'Éthique.<br><br>Suite à l’Incident Oméga-1, aucune tentative visant à empêcher SCP-5001 de briser son confinement ne doit être réalisée directement, sauf si SCP-5001 devient incapable de se reconfiner lui-même.',
        'SCP-5001 est une structure biomécanique d’approximativement cinquante-trois kilomètres de diamètre, situé à un total de 60 kilomètres de profondeur au nord de la Russie. Bien que SCP-5001 soit non-anormal, il possède de nombreuses caractéristiques qui font supposer un lien avec des phénomènes anormaux, notamment :<br><br><ul><br><li>Une immense taille et profondeur.</li><br><li>Des enregistrements du statut de SCP-5001-A remontant à 11 000 avant notre ère, enregistrés dans des systèmes de mesure modernes.</li><br><li>Des documents dans de nombreuses langues, tel que le phénicien, l’hébreu ancien, le grec (ancien et moderne), le latin, l’anglo-saxon, le russe moderne, l’anglais moderne, le mandarin moderne et une variété d’autres langues qui n’ont pas encore été identifiées.</li><br><li>L’absence totale de dispositifs affectant le temps ou de résidus d\'anomalies temporelles.</li><br><li>Des dispositifs mécaniques actuellement non-reproductibles par l\'ingénierie de la Fondation.</li><br></ul><br><br>Par ailleurs, la fonction principale de SCP-5001 est peu comprise. Un objet sphérique et creux, principalement composé de graphène et d\'un autre matériau non-identifié, est placé de manière concentrique à SCP-5001. La chambre sphérique est soutenue par douze énormes piliers composés d’osmium et de titane sur la couche extérieure et d’approximativement 0,5 km de diamètre chacun. Ces éléments, ainsi que d’autres dispositifs mécaniques autour de la chambre centrale (voir addenda), ont conduit les chercheurs à supposer que SCP-5001 est une unité de confinement pour un objet anormal inconnu.<br><br>SCP-5001-A est la désignation de l’objet ou de l’entité que SCP-5001 confine. L’apparence, les propriétés et les effets anormaux de SCP-5001-A sont entièrement inconnus, seules des informations sommaires étant fournies par l’interface de commande de SCP-5001. Toutefois, en considérant l’effort significatif réalisé par le créateur de SCP-5001 dans le but de confiner SCP-5001-A, il est probable que l’objet ou l’entité pose une menace significative à la réalité et, s’il est conscient, dispose de mauvaises intentions.',
        14,
        15
    ),
    (
        9,
        'SCP-1356',
        'Rubber Ducky',
        'Sûr',
        '1356.avif',
        'Photographie du SCP-1356 dans son confinement.',
        'SCP-1356 doit être confiné dans une petite boîte dans les entrepôts de recherche du Secteur-09, à moins d\'une approbation pour déménagement et transfert.',
        'SCP-1356 est un petit jouet de bain, ressemblant aux \"canards en caoutchouc\" classiques. Les tests indiquent que l\'objet est fait en polychlorure de vinyle plastifié. Il est conçu pour émettre un \"couinement\" aigu lorsqu\'il est pressé.<br><br>Lorsqu\'il est tenu par un sujet humain, l\'objet semble déplacer l\'eau liquide. Si un sujet tenant l\'objet tente d\'entrer dans un lac ou une piscine, celui-ci remarquera que tous les liquides se trouvant dans une zone s\'étendant approximativement à 152,4 x 81,3 x 45,7 cm du corps disparaissent.<br><br>Les tests réalisés dans une petite piscine couverte ont révélés que le volume approximatif d\'eau avant et après exposition à SCP-1356 reste constant. Néanmoins, même en présence d\'un sujet tenant le canard anormal, les niveaux d\'eau n\'ont jamais été observés monter. Il est supposé que l\'objet déplace le liquide jusqu\'à un emplacement inconnu, à partir duquel il finit par \"revenir\". Aucune substance inhabituelle ou étrangère n\'a encore été détectée dans les eaux \"déplacées\", bien que le niveau de pH indique une légère augmentation de l\'acidité.<br><br>Comme la profondeur de l\'eau déplacée ne dépasse jamais une moyenne de 46 cm, un sujet se dirigeant vers une piscine profonde finira par trouver ses pieds et ses jambes submergés, alors que le reste du corps reste sec. Même des mouvements et des plongeons dynamiques, toutefois, ne suffisent jamais à mettre le haut du corps au contact de l\'eau— \"l\'espace sec\" rectangulaire se déplace sans problème pour s\'adapter même aux mouvements les plus brusques. Des tests pour découvrir les paramètres de ce phénomène, ainsi que d\'éventuelles applications, sont en cours.',
        16,
        17
    );

/*!40000 ALTER TABLE `scps` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `users`
--
DROP TABLE IF EXISTS `users`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `users` (
    `user_id` tinyint (4) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant unique de l''utilisateur',
    `user_nick` varchar(32) NOT NULL COMMENT 'Pseudonyme de l''utilisateur',
    `user_gender` varchar(12) DEFAULT NULL COMMENT 'Genre de l''auteur',
    `user_loc` varchar(48) DEFAULT NULL,
    `user_bio` text DEFAULT NULL,
    `_scp_id` int(11) NOT NULL,
    PRIMARY KEY (`user_id`)
) ENGINE = MyISAM AUTO_INCREMENT = 20 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Liste des utilisateurs';

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--
LOCK TABLES `users` WRITE;

/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO
    `users`
VALUES
    (
        1,
        'snorlinson',
        NULL,
        NULL,
        '<em class=\"italic\">The road was made to go from There to There. You were never meant to stop Here. Yet you tarried on this shoulder; Naught but decay and abandon, and above it the hungry-dark deep blue sky.</em>',
        1
    ),
    (
        2,
        'DrHeiteira',
        'homme',
        'Dans la chambre de confinement de SCP-173',
        NULL,
        2
    ),
    (
        3,
        'djkatus',
        'homme',
        'Atlanta, GA',
        '<a href=\"https://twitter.com/djkaktus_\">https://twitter.com/djkaktus_</a>',
        2
    ),
    (4, 'deBeauharnais', NULL, NULL, NULL, 2),
    (5, 'Shkeil AkShek', NULL, NULL, NULL, 3),
    (6, 'The Administrator', NULL, NULL, NULL, 4),
    (7, 'Dark Spy', NULL, NULL, NULL, 4),
    (8, 'Salman Corbette', NULL, NULL, NULL, 5),
    (9, 'D-2108', 'homme', 'Sa cellule.', NULL, 5),
    (10, 'DolphinSlugchugger', NULL, NULL, NULL, 6),
    (
        11,
        'Dr Benji',
        'homme',
        'Bourg-en-Vol',
        'Benji, Benjo, Uncle Benj\', Grille-pain… Appelez moi comme vous voulez.',
        6
    ),
    (12, 'Dr Gears', 'homme', NULL, NULL, 7),
    (13, 'Fouin', NULL, NULL, NULL, 7),
    (14, 'Yossipossi', NULL, NULL, NULL, 8),
    (15, 'Vaalxeny', NULL, NULL, NULL, 8),
    (
        16,
        'floridapologia',
        NULL,
        NULL,
        'You don\'t need to tell me it sucks, I live here.',
        9
    ),
    (17, 'Pika Pika', NULL, NULL, NULL, 9),
    (18, 'none', NULL, NULL, NULL, 0);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-28 11:56:04
