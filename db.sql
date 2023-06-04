-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : dim. 04 juin 2023 à 12:14
-- Version du serveur : 8.0.32
-- Version de PHP : 8.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2023_06_02_191332_create_sessions_table', 1),
(10, '2023_06_03_115523_create_movie_table', 2),
(12, '2023_06_03_125523_create_trending_movie_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `movie`
--

CREATE TABLE `movie` (
  `id` bigint UNSIGNED NOT NULL,
  `id_tmdb` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci,
  `release_date` date DEFAULT NULL,
  `poster_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `movie`
--

INSERT INTO `movie` (`id`, `id_tmdb`, `title`, `overview`, `release_date`, `poster_path`, `created_at`, `updated_at`) VALUES
(36, 569094, 'Spider-Man : Across the Spider-Verse', 'Miles Morales revient dans un nouveau chapitre de la franchise oscarisée Spider-Man : New Generation, pour une aventure épique qui entraînera notre héros sympa originaire de Brooklyn, à travers le Multivers pour unir ses forces à celles de Gwen Stacy et une nouvelle équipe de Spider-héros pour faire face au méchant le plus puissant qu\'ils n\'aient jamais affronté.', '2023-05-31', '/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(37, 961718, 'Medellin', 'Pablito est un jeune Youtubeur, fasciné par Pablo Escobar. Il décide de réaliser son rêve en partant à Medellin sur les traces du baron de la drogue. Quelques jours plus tard, c\'est par une vidéo postée sur ses réseaux sociaux, que le monde découvre que Pablito est aux mains de dangereux narcos, qui exigent une énorme rançon pour le libérer. \" Plata o Plomo ! \" . Mais ce que les Narcos ignorent c\'est que Pablito a un grand frère et que ce grand frère a un plan aussi simple que totalement insensé : monter une équipe, faire une descente en Colombie pour affronter les hommes du cartel et ramener son petit frère sain et sauf.', '2023-06-01', '/voFtaPPOfgU15YqnFq72ayKMA04.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(38, 603692, 'John Wick : Chapitre 4', 'John Wick affronte ses adversaires les plus redoutables dans ce quatrième volet de la série.  De New York à Osaka, en passant par Paris et Berlin, John Wick mène un combat contre la Grande Table, la terrible organisation criminelle qui a mis sa tête à prix, en affrontant ses tueurs les plus dangereux...', '2023-03-22', '/jAMVKvqxdNbUY2YQWhCclYI6coP.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(39, 447277, 'La Petite Sirène', 'Les années 1830, dans les eaux d\'une île fictive des Caraïbes. Ariel, la benjamine des filles du roi Triton, est une jeune sirène belle et fougueuse dotée d’un tempérament d’aventurière. Rebelle dans l’âme, elle n’a de cesse d’être attirée par le monde qui existe par-delà les flots. Au détour de ses escapades à la surface, elle va tomber sous le charme du prince Eric. Alors qu\'il est interdit aux sirènes d\'interagir avec les humains, Ariel sent pourtant qu’elle doit suivre son cœur. Elle conclut alors un accord avec Ursula, la terrible sorcière des mers, qui lui octroie le pouvoir de vivre sur la terre ferme, mais sans se douter que ce pacte met sa vie - et la couronne de son père - en danger...', '2023-05-18', '/vP4t7DynrGPNwhXX8Z7Guq9FpS3.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(40, 1016084, 'BlackBerry', 'L\'ascension et la chute de la marque canadienne BlackBerry qui a mis sur le marché le premier smartphone au monde.', '2023-05-11', '/neV35lK7em4rIY9QIoH1cruErPA.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(41, 536437, 'Hypnotic', 'Un détective, qui enquête sur une série de braquages de grande ampleur, se retrouve embarqué dans une affaire impliquant sa fille disparue et un programme secret du gouvernement.', '2023-05-11', '/3IhGkkalwXguTlceGSl8XUJZOVI.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(42, 502356, 'Super Mario Bros. le film', 'Alors qu’ils tentent de réparer une canalisation souterraine, Mario et son frère Luigi, tous deux plombiers, se retrouvent plongés dans un nouvel univers féerique à travers un mystérieux conduit. Mais lorsque les deux frères sont séparés, Mario s’engage dans une aventure trépidante pour retrouver Luigi.  Dans sa quête, il peut compter sur l’aide du champignon Toad, habitant du Royaume Champignon, et les conseils avisés, en matière de techniques de combat, de la Princesse Peach, guerrière déterminée à la tête du Royaume. C’est ainsi que Mario réussit à mobiliser ses propres forces pour aller au bout de sa mission.', '2023-04-05', '/ahMxyHMSJXingQr4yJBMzMU9k42.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(43, 385687, 'Fast & Furious X', 'Après bien des missions et contre toute attente, Dom Toretto et sa famille ont su déjouer, devancer, surpasser et distancer tous les adversaires qui ont croisé leur route. Ils sont aujourd’hui face à leur ennemi le plus terrifiant et le plus intime : émergeant des brumes du passé, ce revenant assoiffé de vengeance est bien déterminé à décimer la famille en réduisant à néant tout ce à quoi, et surtout à qui Dom ait jamais tenu.', '2023-05-17', '/7Br9F8EHrtNT2hFgD5oTfDMRgud.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(44, 493529, 'Donjons & Dragons : L\'Honneur des voleurs', 'Un voleur beau gosse, une bande d\'aventuriers improbables entreprennent un casse épique pour récupérer une relique perdue. Les choses tournent mal lorsqu\'ils s\'attirent les foudres des mauvaises personnes.  Donjons & Dragons : L\'honneur des voleurs transpose sur grand écran l\'univers riche et l\'esprit ludique du légendaire jeu de rôle à travers une aventure hilarante et pleine d\'action.', '2023-03-23', '/tT8ys0GKleuWQ3mBHrFdAE0boNf.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(45, 1119173, 'A Beautiful Life', 'Elliott, un jeune pêcheur doté d\'une voix extraordinaire, se voit offrir la chance de sa vie lorsqu\'il est découvert par Suzanne, une manager de musique célèbre et couronnée de succès. Suzanne associe bientôt Elliott à sa fille divorcée et productrice de musique, Lilly. Sur le chemin de la célébrité, les luttes de son passé menacent non seulement sa percée, mais aussi son amour naissant pour Lilly.', '2023-06-01', '/dVpNAqYARoj8QXkEZzNFDw9yVjq.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(46, 1126852, 'Riche en amour 2', 'Paula et Teto rencontrent des difficultés et traversent une zone de turbulence. Lorsque Paula, suivant ses rêves, reprend son travail de médecin volontaire auprès d\'une communauté indigène d\'Amazonie, Teto convainc ses partenaires d\'établir leur coopérative de tomates dans un village de la région. Mais pour sauver l\'entreprise de la faillite et regagner le cœur de Paula, Teto doit définitivement abandonner ses habitudes d\'enfant gâté et s\'opposer aux intérêts d\'un puissant exploitant agricole.', '2023-06-02', '/s9RT2tuQ5N67RoKay2yGu9xP8lf.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(47, 640146, 'Ant-Man et la Guêpe : Quantumania', 'Tout va pour le mieux : Scott a écrit un livre à succès tandis que Hope défend avec le plus grand dévouement des causes humanitaires. Leur famille - Janet van Dyne et Hank Pym (les parents de Hope) et Cassie, la fille de Scott - font enfin partie de leur quotidien. Cassie partage la passion de sa nouvelle famille pour la science et la technologie, notamment en ce qui concerne le domaine quantique. Mais sa curiosité les entraîne tous dans une odyssée imprévue et sans retour dans le vaste monde subatomique, un endroit mystérieux où ils rencontrent d’étranges nouvelles créatures, une société en crise et un impitoyable maître du temps dont l’ombre menaçante commence tout juste à s’étendre. Scott et Cassie sont soudainement happés dans une direction tandis que Hope, Janet et Hank se retrouvent propulsés dans une autre. Tous se perdent dans un monde en guerre, sans savoir comment ils pourront en sortir ni même s\'ils retrouveront un jour le chemin de leur foyer...', '2023-02-15', '/2hq8EKF6kaUyOxB9KhmIb5JUxEe.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(48, 324857, 'Spider-Man : New Generation', 'Miles Morales, un adolescent afro-américain et portoricain vit à Brooklyn et s’efforce de s’intégrer dans son nouveau collège à Manhattan. Mais la vie de Miles se complique quand il se fait mordre par une araignée radioactive et se découvre des super-pouvoirs : il est désormais capable d’empoisonner ses adversaires, de se camoufler, de coller littéralement aux murs et aux plafonds ; son ouïe est démultipliée... Dans le même temps, le plus redoutable cerveau criminel de la ville, le Caïd, a mis au point un accélérateur de particules nucléaires capable d’ouvrir un portail sur d’autres univers. Son invention va provoquer l’arrivée de plusieurs autres versions de Spider-Man dans le monde de Mile.', '2018-12-06', '/jw9TRNYIMI1KsTjgQ3wVYSMXxlh.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(49, 667538, 'Transformers : Rise of the Beasts', 'Renouant avec l\'action et le grand spectacle qui ont fait des premiers Transformers un phénomène mondial il y a 14 ans, Transformers : Rise of The Beasts transportera le public dans une aventure aux quatre coins du monde au coeur des années 1990. On y découvrira pour la première fois les Maximals, Predacons et Terrorcons rejoignant l\'éternel combat entre les Autobots et les Decepticons.', '2023-06-06', '/kq6AYN96FjWSZQVRYpAPmBAVq2s.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(50, 447365, 'Les Gardiens de la Galaxie : Volume 3', 'Peter Quill, encore sous le choc de la perte de Gamora, doit rallier son équipe pour une mission dangereuse visant à sauver Rocket. Une mission qui, en cas d’échec, pourrait bien conduire à la fin des Gardiens tels que nous les connaissons.', '2023-05-03', '/aaGDsYYjltMxrwgs4qnHse4qlGX.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(51, 890771, 'The Black Demon', 'Lorsque Paul Sturges (Josh Lucas) emmène sa famille à Bahia Negra, le joyau de la couronne de Baja, la ville côtière mexicaine autrefois animée s\'est mystérieusement effondrée.  Dans la ville devenue fantôme, ses derniers habitants disent à Paul que la plate-forme pétrolière offshore a réveillé \"El Demonio\" (Black Demon)... Paul doit se rendre sur la plateforme dont il a la responsabilité, et enmène sa famille avec lui.', '2023-04-26', '/uiFcFIjig0YwyNmhoxkxtAAVIL2.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(52, 532408, 'Le Croque-Mitaine', 'Sadie Harper, une jeune lycéenne, et sa petite sœur Sawyer sont encore sous le choc de la mort récente de leur mère. Dévasté par sa propre douleur, leur père Will, thérapeute de profession, ne leur prodigue ni le soutien ni l’affection qu’elles tentent de lui réclamer. Lorsqu\'un patient désespéré se présente à l\'improviste à leur domicile pour demander de l\'aide, celui-ci fait entrer avec lui une terrifiante entité s’attaquant aux familles et se nourrissant de leurs plus grandes souffrances.', '2023-05-31', '/tf8iDxTQ0rr7Pe67bszmrpTg6h5.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(53, 921785, 'Mixed by Erry', 'L’ascension, dans les années 1990, de l’empire des frères Frattasio, deux DJ napolitains qui, avec leurs cassettes de compilations piratées, ont marqué toute une époque.', '2023-03-02', '/fFS7M6lD68JM3VZxrqhrCK9kBl9.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(54, 1098110, 'Blood & Gold', 'Printemps 1945. \"Blood & Gold\", qui se déroule à la fin de la Seconde Guerre mondiale, raconte l\'histoire de Heinrich, un déserteur allemand, d\'Elsa, une courageuse fermière, et d\'une horde de nazis. De retour du front pour retrouver sa fille, Heinrich tombe aux mains d\'un groupe de SS en maraude. Leur chef le laisse pendu à un arbre, mais Heinrich est sauvé in extremis par Elsa qui le cache dans sa ferme. Les SS reprennent leur route à la recherche d\'un trésor juif caché dans un village des environs. Les villageois excédés et, qui veulent garder le trésor, décident de leur résister. Heinrich et Elsa sont bientôt entraînés malgré eux dans cette chasse à l\'or riche en action qui va se terminer dans un bain de sang à l\'église du village.', '2023-04-21', '/2fKh1woJdmd1fUOz1V4NmZ1LyYc.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(55, 882569, 'Guy Ritchie\'s The Covenant', 'Lors de sa dernière mission en Afghanistan, le sergent John Kinley fait équipe avec l\'interprète Ahmed pour arpenter la région. Lorsque leur unité tombe dans une embuscade au cours d\'une patrouille, Kinley et Ahmed sont les seuls survivants. Alors que des combattants ennemis les poursuivent, Ahmed risque sa vie pour transporter Kinley, blessé, en sécurité. De retour sur le sol américain, Kinley apprend qu\'Ahmed et sa famille n\'ont pas obtenu la possibilité d\'entrer aux Etats-Unis comme promis. Déterminé à protéger son ami et à rembourser sa dette, Kinley retourne dans la zone de guerre pour récupérer Ahmed et les siens.', '2023-04-19', '/kVG8zFFYrpyYLoHChuEeOGAd6Ru.jpg', '2023-06-04 11:53:44', '2023-06-04 11:53:44'),
(56, 713704, 'Evil Dead Rise', 'Alors que Beth n’a pas vu sa grande sœur Ellie depuis longtemps, elle vient lui rendre visite à Los Angeles où elle élève, seule, ses trois enfants. Mais leurs retrouvailles tournent au cauchemar, quand ils découvrent un mystérieux livre dans le sous-sol de l’immeuble, dont la lecture libère des démons qui prennent possession des vivants...', '2023-04-12', '/eDfimAZLXksB48zMWoZa9uzLzrI.jpg', '2023-06-04 11:54:03', '2023-06-04 11:54:03'),
(57, 840326, 'Sisu : de l\'or et du sang', 'Au cours des derniers jours de la Seconde Guerre mondiale, un prospecteur solitaire croise la route de nazis lors d\'une retraite sur la Terre brûlée dans le nord de la Finlande. Lorsque les soldats décident de voler son or, ils découvrent rapidement qu\'ils viennent de s\'emmêler avec un mineur ordinaire.', '2023-01-27', '/7U5ytZz3eInnBJaJUMFTdIqyZjj.jpg', '2023-06-04 11:54:03', '2023-06-04 11:54:03'),
(58, 552688, 'The Mother', 'Une tueuse à gages de haut vol quitte la clandestinité quand ses anciens partenaires enlèvent la fille qu\'elle a dû abandonner des années plus tôt.', '2023-05-04', '/qiMsJw3fKtuNvVun14caRkPVCJh.jpg', '2023-06-04 11:54:03', '2023-06-04 11:54:03'),
(59, 964980, 'Air', 'AIR dévoile le partenariat qui a changé la donne entre Michael Jordan, alors inconnu, et le tout jeune département basket de Nike, qui a révolutionné le monde du sport et de la culture avec la marque Air Jordan.', '2023-04-05', '/6JQu7F1YCPm2ylTTmpxrspwoAFA.jpg', '2023-06-04 11:54:03', '2023-06-04 11:54:03'),
(60, 76600, 'Avatar : La Voie de l\'eau', 'Jake Sully et Neytiri sont devenus parents. L\'intrigue se déroule une dizaine d\'années après les événements racontés dans le long-métrage originel. Leur vie idyllique, proche de la nature, est menacée lorsque la « Resources Development Administration », dangereuse organisation non-gouvernementale, est de retour sur Pandora. Contraints de quitter leur habitat naturel, Jake et sa famille se rendent sur les récifs, où ils pensent trouver asile. Mais ils tombent sur un clan, les Metkayina, aux mœurs différentes des leurs...', '2022-12-14', '/hYeB9GpFaT7ysabBoGG5rbo9mF4.jpg', '2023-06-04 11:54:03', '2023-06-04 11:54:03'),
(61, 700391, '65 : La Terre d\'avant', 'Après un terrible crash sur une planète inconnue, le pilote Mills découvre rapidement qu’il a en réalité échoué sur Terre… il y a 65 millions d’années. Pour réussir leur unique chance de sauvetage, Mills et Koa, l’unique autre survivante du crash, doivent se frayer un chemin à travers des terres inconnues peuplées de dangereuses créatures préhistoriques dans un combat épique pour leur survie.', '2023-03-02', '/jYxRG1aeVKoLG48Jlka0QMpGzsb.jpg', '2023-06-04 11:54:03', '2023-06-04 11:54:03'),
(62, 594767, 'Shazam! La rage des Dieux', 'Investis des pouvoirs des dieux, Billy Batson et ses copains apprennent encore à concilier leur vie d’ados avec leurs responsabilités de super-héros dès lors qu’ils se transforment en adultes. Mais quand les Filles de l’Atlas, trio d’anciennes déesses ivres de vengeance, débarquent sur Terre pour retrouver la magie qu’on leur a volée il y a longtemps, Billy, alias Shazam, et sa famille s’engagent dans une bataille destinée à conserver leurs superpouvoirs, à rester en vie et à sauver la planète. Mais une bande d’adolescents peut-elle vraiment empêcher la destruction du monde ? Et, surtout, Billy en a-t-il seulement envie ... ?', '2023-03-15', '/fcBXkQygo8h2PK0KnxOxzkbD9p.jpg', '2023-06-04 11:54:03', '2023-06-04 11:54:03'),
(63, 758323, 'L\'Exorciste du Vatican', 'Inspiré des véritables archives du Père Gabriele Amorth, exorciste en chef du Vatican. Le Père Gabriele Amorth enquête suite à la découverte terrifiante d\'un jeune garçon possédé. Ses investigations le mèneront à dévoiler une conspiration séculaire que le Vatican a désespérément tenté de maintenir dans l\'oubli.', '2023-04-05', '/nelLXDgKEvyVs86RLrTxxUzie4t.jpg', '2023-06-04 11:54:03', '2023-06-04 11:54:03');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0rGtyrz5b4WZ9Dzt0AN3VE3YZsmHtjPrv3JPdT3L', NULL, '172.19.0.1', 'PostmanRuntime/7.26.10', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiM1BnbGZkNWY2RkJWcXluZTh6aENvQzhqd1Aybm5qSnZBR0EzWmhEciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1685871441),
('2mzMzl5hxHUTv0TJJueJQQuWX6XXEOa6u7pyzzQp', 1, '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVUNJQVFoN0g0VnI3R3ZpWHM4aHVHWWhnb29CRmo0TExxTWppQW52bCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIzOiJodHRwOi8vbG9jYWxob3N0L21vdmllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkdzdydW4waUV3bERNMnZuSFZsRDBsZUQ5VDdYOFc2dWJwMU1OdlAwdlBadENMbC5BVzBvM3kiO30=', 1685880575),
('2WHoTHhV8ba11qVWUFP0cZdUh1D9IiCJbnftG5eG', 1, '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidE5YT0J2ZkZnQ1hIUWdNdERQcjQ1TEZLOWo3dDZscE80cG5hcTVqMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly9sb2NhbGhvc3QvbW92aWVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR3N3J1bjBpRXdsRE0ydm5IVmxEMGxlRDlUN1g4VzZ1YnAxTU52UDB2UFp0Q0xsLkFXMG8zeSI7fQ==', 1685869718),
('cEo6BeQZjBmhsSxMpvoP9qY3RHEuJ9etvRNphmkG', NULL, '172.19.0.1', 'PostmanRuntime/7.26.10', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOG10Y2pyWU5CUGV2Q2hOeGdJaUZXb011Tnh4TWhkQnc4a3NnV3ZjQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjEvbW92aWVzLzMzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1685819629),
('EMvhYydjoKCoFAPqzcU8pKcwbt5sZIgs2TpPvk5e', 1, '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiT2FYbjJUc3VuTUJMekU1RGdOaG1WQ2tLcVVCTzdBMmE0VEVOTkEzNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3QvbW92aWVzL2RldGFpbC8zMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkdzdydW4waUV3bERNMnZuSFZsRDBsZUQ5VDdYOFc2dWJwMU1OdlAwdlBadENMbC5BVzBvM3kiO30=', 1685819636),
('ZYoUyKovASHbNbJcVTcIZW1OOstmVVPTlPMuGTA9', NULL, '172.19.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic29iRHFWSzA4RHNoYUNNN2JIWmIwWk1VOVplOGNDbGhWTnZOMENNMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xMjcuMC4wLjEvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1685817378);

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'Olivier\'s Team', 1, '2023-06-02 19:44:33', '2023-06-02 19:44:33');

-- --------------------------------------------------------

--
-- Structure de la table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `trending_movie`
--

CREATE TABLE `trending_movie` (
  `id` bigint UNSIGNED NOT NULL,
  `id_movie` bigint UNSIGNED NOT NULL,
  `period` enum('week','day') COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trending_movie`
--

INSERT INTO `trending_movie` (`id`, `id_movie`, `period`, `rank`, `created_at`, `updated_at`) VALUES
(41, 38, 'week', 6036, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(42, 36, 'week', 1963, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(43, 42, 'week', 4551, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(44, 43, 'week', 2997, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(45, 39, 'week', 2077, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(46, 44, 'week', 572, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(47, 50, 'week', 1345, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(48, 47, 'week', 1578, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(49, 41, 'week', 178, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(50, 56, 'week', 1675, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(51, 57, 'week', 1592, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(52, 58, 'week', 996, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(53, 54, 'week', 238, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(54, 59, 'week', 143, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(55, 60, 'week', 1215, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(56, 49, 'week', 453, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(57, 61, 'week', 260, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(58, 62, 'week', 1001, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(59, 55, 'week', 1268, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(60, 63, 'week', 999, '2023-06-04 12:09:07', '2023-06-04 12:09:07'),
(61, 36, 'day', 1963, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(62, 37, 'day', 71, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(63, 38, 'day', 6036, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(64, 39, 'day', 2077, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(65, 40, 'day', 31, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(66, 41, 'day', 178, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(67, 42, 'day', 4551, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(68, 43, 'day', 2997, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(69, 44, 'day', 572, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(70, 45, 'day', 80, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(71, 46, 'day', 59, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(72, 47, 'day', 1578, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(73, 48, 'day', 797, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(74, 49, 'day', 453, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(75, 50, 'day', 1345, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(76, 51, 'day', 521, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(77, 52, 'day', 166, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(78, 53, 'day', 25, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(79, 54, 'day', 238, '2023-06-04 12:09:17', '2023-06-04 12:09:17'),
(80, 55, 'day', 1268, '2023-06-04 12:09:17', '2023-06-04 12:09:17');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Olivier', 'o.ettlin@gmail.com', NULL, '$2y$10$w7run0iEwlDM2vnHVlD0leD9T7X8W6ubp1MNvP0vPZtCLl.AW0o3y', NULL, NULL, NULL, 'DVHb8Fs9eLWuntqwq0EJGkQS804dMkihxqsSuoj9ypst2G8ACqM2l6Wb1RKU', 1, NULL, '2023-06-02 19:44:33', '2023-06-02 19:44:36');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movie_id_tmdb_unique` (`id_tmdb`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Index pour la table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Index pour la table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Index pour la table `trending_movie`
--
ALTER TABLE `trending_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trending_movie_id_movie_foreign` (`id_movie`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `trending_movie`
--
ALTER TABLE `trending_movie`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `trending_movie`
--
ALTER TABLE `trending_movie`
  ADD CONSTRAINT `trending_movie_id_movie_foreign` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id`) ON DELETE CASCADE;
--
-- Base de données : `testing`
--
CREATE DATABASE IF NOT EXISTS `testing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `testing`;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2023_06_02_191332_create_sessions_table', 1),
(10, '2023_06_03_115523_create_movie_table', 1),
(11, '2023_06_03_125523_create_trending_movie_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `movie`
--

CREATE TABLE `movie` (
  `id` bigint UNSIGNED NOT NULL,
  `id_tmdb` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci,
  `release_date` date DEFAULT NULL,
  `poster_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint UNSIGNED NOT NULL,
  `team_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `trending_movie`
--

CREATE TABLE `trending_movie` (
  `id` bigint UNSIGNED NOT NULL,
  `id_movie` bigint UNSIGNED NOT NULL,
  `period` enum('week','day') COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movie_id_tmdb_unique` (`id_tmdb`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Index pour la table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Index pour la table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Index pour la table `trending_movie`
--
ALTER TABLE `trending_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trending_movie_id_movie_foreign` (`id_movie`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `trending_movie`
--
ALTER TABLE `trending_movie`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `trending_movie`
--
ALTER TABLE `trending_movie`
  ADD CONSTRAINT `trending_movie_id_movie_foreign` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
