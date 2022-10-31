-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221029.4bd3a1c423
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Okt 2022 pada 18.34
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amz_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Programming', 'programming', '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(2, 'Networking', 'networking', '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(3, 'Web Design', 'web-design', '2022-10-29 09:56:47', '2022-10-29 09:56:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_17_042511_create_posts_table', 1),
(6, '2022_10_17_072416_create_categories_table', 1),
(7, '2022_10_30_092106_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Voluptatem sed.', 'aut-sint-consequatur-ex-labore', NULL, 'Ratione minus dolores sed quis. Itaque voluptatum et ipsam non nulla et. Quis est voluptatem officia ab aut dolorem soluta. A eius doloribus veniam eum officiis.', '<p>Et similique rerum dolorem dolorum quasi sed. Et magni officiis qui aliquam accusantium. Veritatis et sint qui saepe commodi aperiam.</p><p>Sapiente neque consequatur enim voluptas iste sit. Eos amet praesentium repellendus vero. Excepturi culpa labore dolorem sunt quam similique.</p><p>Deserunt minima facere tenetur quo recusandae. Eum qui incidunt possimus. Sint aut fugit atque quam ratione. Fugit rem nihil hic. Rerum harum rerum ea mollitia.</p><p>Consequatur facilis nesciunt ea. Voluptas sit et impedit ex minus esse. Aut nihil est necessitatibus eveniet corrupti quia fugit. Et voluptates harum quia maiores soluta nihil minus.</p><p>Sit omnis ipsum quia eos aspernatur labore. Sed iure ipsam veniam ratione. Quis iusto itaque id. Sed eum omnis illum voluptas omnis distinctio.</p><p>Officia magnam et alias eos laudantium numquam modi. Iure ipsam quas aliquam debitis dolorem at. Rem ut dolorem iure magnam nihil quo nisi. Et officia velit enim dolor nam quidem et.</p><p>Ad dolores est quasi veniam minus saepe voluptas. Et qui commodi nulla. Voluptatem ab sed sint nobis officiis tempora. Sit quod dolorum corrupti vel ad error vel consequatur.</p><p>Aspernatur veritatis fugit nulla. Et facere inventore incidunt dignissimos natus rem pariatur nobis. Doloribus animi aperiam officia nesciunt odit. Et deserunt et fugit consectetur tenetur soluta dolores. Sit suscipit qui praesentium aperiam.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(2, 3, 3, 'Ipsum accusantium saepe dolorem ut voluptatem amet.', 'quibusdam-aut-sit-porro', NULL, 'Quas ipsum necessitatibus odit tenetur saepe repudiandae. Vel maxime reprehenderit autem neque voluptate accusamus blanditiis aspernatur. Aut distinctio voluptate voluptatem perferendis. Dignissimos aut nihil earum iusto possimus.', '<p>Veritatis aut corporis enim nihil tempore. Dicta voluptas consequatur expedita recusandae.</p><p>Quia magnam non quos velit. Sed voluptatem reiciendis quia qui. Magnam aperiam rerum molestiae et alias qui. Dicta deleniti aliquam et delectus magnam ea tempore. Beatae temporibus omnis asperiores fuga fugiat.</p><p>Maiores quia mollitia vel architecto sit quod velit. Et qui provident ut expedita cum dolor. Culpa dolores aliquid laborum omnis perspiciatis rem. Repellendus quis sunt dolores non modi saepe.</p><p>Ut voluptatem a reiciendis nobis. Doloribus quos tenetur harum libero error. Nostrum sit sit et ut maxime rerum. Quis blanditiis voluptatibus voluptas dolore fugiat.</p><p>Necessitatibus dolor nam ut vel veniam velit aut. Voluptate aspernatur ex aut nisi error maiores modi. Mollitia est eligendi quidem fugit dolores aut. Dolorem non alias similique vel.</p><p>Accusantium fuga sunt sed odio in cum atque aliquid. Reprehenderit aut consequatur numquam architecto sed cum consequuntur. Aut voluptas iure vel similique in perferendis.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(3, 2, 3, 'Deleniti consequatur omnis quia minus sit.', 'earum-eum-maiores-ut-inventore-nostrum-totam', NULL, 'Blanditiis voluptates aut id laudantium et. Dolore et et harum accusantium reiciendis eaque. Quisquam ea voluptatem sunt qui. Asperiores est est id ex velit.', '<p>Quia eos nihil autem fugit esse adipisci quia. Corrupti similique est velit sed et quas cupiditate. Laudantium dicta eligendi ab nulla temporibus.</p><p>Atque quae voluptas omnis dolor culpa ipsa. In odit quibusdam et odit quia perferendis minus. Omnis itaque velit soluta aspernatur ea dicta debitis mollitia. Ad in sed sequi omnis eaque labore sint voluptatem.</p><p>Sit molestiae delectus aut sit nobis. Dolorem adipisci pariatur illo quibusdam magnam qui. Sapiente doloremque at nisi sed cum a.</p><p>Quibusdam qui et est neque est nihil. Maxime itaque enim fuga qui. Repellendus totam at sit similique.</p><p>Magni reprehenderit fugiat unde. Labore aliquid nobis nulla delectus ipsa ad aut. Hic id accusantium repellat id voluptates. Quis quasi libero unde esse sint quo voluptatem earum.</p><p>Qui error fuga ipsum voluptas vel. Reprehenderit dolorem suscipit nemo distinctio illum at numquam. Similique ea qui voluptatem mollitia nisi voluptatem sunt.</p><p>Ipsa quo aut distinctio labore non. Nihil illum aut sed et dolores. Delectus consequatur libero voluptas ut aspernatur. Accusamus molestias et perspiciatis occaecati. Rerum corrupti ipsa consequatur aperiam quia voluptatum.</p><p>Minus non ut vitae fuga rerum. Voluptatum hic ut tenetur voluptate velit exercitationem.</p><p>Et quod architecto qui cumque iste. Suscipit blanditiis aut similique magni est est sint. Fugiat dolorem est modi voluptates rerum adipisci. Accusamus asperiores cupiditate id consequatur vitae minus. Est impedit aut molestiae et voluptatem doloremque.</p><p>Omnis minima voluptas culpa voluptas perferendis omnis. Aut qui iure rerum incidunt numquam earum quia. Est aspernatur quis non ut debitis. Necessitatibus cupiditate necessitatibus nisi earum eveniet.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(4, 2, 3, 'Fugit hic quasi minus tempore eos placeat.', 'et-accusamus-exercitationem-voluptatem-soluta', NULL, 'Facilis quidem iusto reiciendis animi dolorum aut. Incidunt nihil corrupti maiores qui ea. Odit rerum aliquid reiciendis ullam ex. Dolor omnis ipsam aut modi autem.', '<p>Libero ut voluptatem dolor repellendus voluptate. Voluptatum esse nostrum quaerat optio voluptate consequatur. Fuga vel molestias expedita nisi exercitationem ut labore. Tempore in sed reprehenderit. Culpa velit qui quas quia delectus ex.</p><p>Aspernatur a et saepe itaque ad at eos corrupti. Maxime quia aut rerum dolor reiciendis veritatis. Voluptatum consequatur eius ut quia iure vel est. Incidunt sunt itaque officia nostrum est magni.</p><p>Unde est aut quibusdam cupiditate a rem omnis. Aliquam est omnis aut facilis est ullam autem. Error facere fugiat et non perferendis assumenda.</p><p>Nesciunt harum architecto saepe sit qui. Qui sit quos dicta sequi est aut veritatis rem. Rerum quia quas occaecati. Id non voluptas voluptates atque assumenda eveniet.</p><p>Quam unde rerum quaerat qui. Nesciunt nobis aspernatur aliquam cumque. Cupiditate sit porro pariatur.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(5, 3, 2, 'Voluptatem ut dolor ipsa animi.', 'magnam-iste-ipsam-voluptate-id-sapiente', NULL, 'Labore sunt soluta sequi enim assumenda. Laudantium autem pariatur et sapiente. Eum ipsum non harum et in.', '<p>Quo sint quia molestias ipsum voluptate. Eum esse alias assumenda suscipit.</p><p>Sapiente sapiente deleniti sunt quibusdam. Rerum distinctio quis aut harum.</p><p>Nemo ut deleniti recusandae facilis iusto mollitia. Aut ratione non ex commodi qui nisi. Corporis eveniet cupiditate nihil et est. Atque pariatur sapiente autem itaque aspernatur voluptatem iure ex.</p><p>Alias enim iusto qui voluptatem debitis. Occaecati facere sunt blanditiis suscipit eum quia est. Ullam tenetur incidunt voluptas quo iure quod. Voluptas corporis non perspiciatis reprehenderit tenetur. Cumque perspiciatis recusandae cumque.</p><p>Sapiente sed quia excepturi iste repellat sed. Aut voluptatibus quisquam beatae eos. Atque esse incidunt iste aspernatur et.</p><p>Illo in eaque voluptate est sit recusandae. Alias dolorem placeat ab deleniti maiores maiores reprehenderit. Ut cum saepe nostrum repellat dolore ut nostrum possimus. Cumque et nobis beatae ipsum.</p><p>Qui doloremque neque voluptatibus qui. Voluptas facere similique suscipit corporis tempora quaerat dolorum alias. Sequi totam voluptas consectetur dolor non. Et accusamus quis minus illum quas autem.</p><p>Et officiis voluptate itaque incidunt. Sunt quis nihil corrupti aut molestiae. Laborum dolor maxime quia. Ratione ipsum omnis et sed minus vel voluptas.</p><p>Beatae dolore laborum qui laudantium cum quis. Dolor eum architecto excepturi voluptate earum voluptas. Possimus nostrum quisquam quis laborum. Repellat explicabo quod vel aliquam.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(6, 2, 3, 'Saepe ut facilis quisquam.', 'ipsam-omnis-quia-esse-autem-reiciendis-animi-molestiae', NULL, 'Quae quae dicta et. Aut autem illo inventore qui aut. Nemo sed quos porro. Est facilis inventore voluptate aspernatur consectetur quidem similique.', '<p>Maiores veritatis hic explicabo voluptas voluptas hic. Et aut illum eum cum mollitia corporis et dolores.</p><p>Aut voluptatem officiis cumque qui. Eveniet aut dolorem soluta in sit commodi.</p><p>Placeat qui quae aut amet consequatur autem possimus. Et magni sapiente pariatur sed sit quam modi itaque. Dolorem omnis adipisci et ullam rem.</p><p>Facilis accusamus quis consequatur qui iure. Aut quis quas accusamus quasi quae debitis ipsam. Saepe quia quos officia et eos. Totam iste a sit in animi.</p><p>Illo exercitationem aliquid omnis et quo eveniet distinctio. Accusamus et omnis cumque ipsam. Et quasi nihil quos a fugiat iste. Alias iure laborum rem illum qui fugiat.</p><p>Earum ab dolores illum tenetur aspernatur vitae dolore. Nam perspiciatis ut eveniet ea doloremque. Nihil ea ducimus deleniti quia rem id qui officiis.</p><p>Voluptas cupiditate consequuntur autem non illum. Voluptatibus error tempore facilis autem. Molestiae minus inventore ut adipisci ut.</p><p>In cum enim nostrum aut. Hic autem ut ullam iure nihil enim eum cumque. Dolore eos voluptatem minus et. Reprehenderit inventore quas sequi excepturi minima adipisci. Et necessitatibus debitis est numquam laudantium.</p><p>Ut esse assumenda ducimus magni nam. Vel aspernatur deleniti voluptates harum nulla aut. Ducimus doloremque itaque earum debitis veritatis aut aut et. Rerum laboriosam saepe soluta aut est.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(7, 3, 1, 'Qui eveniet ea velit itaque itaque molestiae numquam ut saepe.', 'quaerat-sed-delectus-consectetur-sequi-qui', NULL, 'Ratione sed aliquid dolore velit quo. Mollitia sint qui voluptas consequuntur voluptatem unde. Est quia et quo labore aliquam sint commodi. Corporis sed possimus aut sint atque esse. Exercitationem quia nisi ea alias.', '<p>Qui quia sint ut laborum cum. Error fuga velit facilis. Eos facere accusamus est eaque doloremque nisi distinctio porro.</p><p>Ut vero et dignissimos eligendi sint. Laborum aperiam odio possimus fuga non qui voluptatem. Mollitia voluptatum pariatur qui hic.</p><p>In aut est recusandae. Laborum nihil quod rerum vitae. Est nesciunt blanditiis laudantium sunt voluptas velit soluta.</p><p>Quos libero iusto sit voluptas hic sapiente minima. Consectetur eum ipsam placeat itaque odit dolorem. Optio itaque odio ipsum quo ducimus.</p><p>Voluptas ut hic quaerat consectetur. Adipisci excepturi ut amet nulla quos. Optio sint iusto ea possimus cupiditate fugit. Accusamus dignissimos eligendi ea omnis.</p><p>Maxime id ut est minus occaecati. Consequatur ex dolorem labore eligendi molestiae aut. Laboriosam quia omnis adipisci ad labore totam. Necessitatibus explicabo consectetur dolor omnis sequi.</p><p>Et vitae quisquam qui expedita omnis. Aut eos dolores aliquam veritatis laboriosam eum. Velit non rerum voluptas vero. Natus eos sit magnam nihil repudiandae dolores sed.</p><p>Dolore numquam accusamus aliquam occaecati. Quasi ut eius nostrum. Repellat illo dolorem dolore distinctio voluptatem aut officiis consequuntur.</p><p>Et et quia velit fugiat error eveniet cumque. Distinctio sed sit sint aut quaerat reiciendis. Sed aspernatur deserunt iure consequuntur quo exercitationem.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(8, 3, 1, 'Quidem nihil.', 'deleniti-ipsa-blanditiis-error', NULL, 'Beatae a ipsum laudantium voluptas nam molestias accusamus. Tempore ipsum voluptate voluptas et quia eaque totam. Molestiae ut in nesciunt et.', '<p>Esse voluptatum voluptatem sapiente recusandae expedita. Iusto aut dolor vel rem. Magnam soluta eveniet eos eum et et consequuntur dolor. Est consequatur sit ducimus natus repellendus modi ut.</p><p>Mollitia tempore molestias accusantium id nobis ratione. Reiciendis delectus consequatur qui reiciendis est accusantium.</p><p>Quod quia neque omnis. Repellat est facilis qui. Praesentium aspernatur ipsam ut. A exercitationem aspernatur et.</p><p>Laudantium sunt laudantium qui deserunt rerum. Corrupti minus pariatur beatae ut quam officiis autem. Quos quasi et atque asperiores fugiat voluptatem qui. Voluptates molestiae perferendis autem autem nostrum.</p><p>Dolores et aliquam ab et. Quia accusantium labore ipsa et numquam voluptatem voluptas. Ut in nisi quasi et et eum aspernatur.</p><p>Sit omnis autem ea qui facilis at sint. Commodi nostrum omnis dolores quisquam. Aut odit vel facere tenetur unde. Rem ut aut consequatur tenetur. Et qui magnam velit impedit rerum debitis.</p><p>Necessitatibus quos ut qui consequatur ut aliquid dolorem. Est voluptas dolor accusamus cum inventore ut. Voluptatem ea itaque et quia quia.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(9, 3, 1, 'Ea nobis sit ullam tempora quas quo architecto.', 'odit-asperiores-esse-eum-non-ea-modi-consequatur', NULL, 'Nisi dolores quo qui dolorem in. Qui perspiciatis beatae culpa odio. Est sint cumque nihil rem eos quaerat quisquam. Est qui ipsa ut quas et rerum.', '<p>Aut mollitia molestiae eum sunt architecto. Voluptatem incidunt eum omnis ut sunt. Doloremque ipsa impedit dicta dignissimos. Pariatur adipisci nam non quia voluptatem.</p><p>Maxime ut aut mollitia sit quo et voluptates. Doloremque deleniti aut nostrum nesciunt et quod. Occaecati nihil nisi unde. Similique exercitationem numquam laborum culpa.</p><p>Maxime hic et deserunt veritatis. Consectetur et deleniti impedit odio facere voluptates ut. Voluptatem iste consequatur nesciunt ea vel saepe.</p><p>Ad corrupti dolor reiciendis veritatis alias enim nulla. Odit sed soluta temporibus impedit provident est. Exercitationem voluptatibus aut explicabo quidem accusamus nemo consectetur. Adipisci itaque necessitatibus distinctio.</p><p>Voluptate tempora autem veniam suscipit nihil esse fuga ullam. Fugiat sunt officia numquam quia et vel magni. Cum accusantium aut est minima et. Dignissimos blanditiis assumenda et recusandae et minus vero.</p><p>Placeat odio excepturi voluptates velit voluptas vero. Alias deserunt quas aut quam. Sint et non minus excepturi reiciendis illo aut.</p><p>Id eius ipsam placeat et omnis labore earum est. Ut neque rerum animi molestiae corrupti. Consequatur qui molestiae tempore deleniti. Aperiam amet ut eum aut dolorem.</p><p>Dicta ipsum quae qui illum itaque. Ut ea impedit esse voluptate. Reprehenderit aut molestiae nulla voluptate fugit. Ipsum nihil molestiae est eveniet porro debitis eos.</p><p>Voluptas est est placeat est molestias. Ipsum labore voluptatem ipsum et accusantium blanditiis perferendis sint. Harum numquam porro sequi exercitationem est.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(10, 3, 2, 'Possimus rem et.', 'est-et-quidem-ipsam-alias', NULL, 'Qui eum dolor a fugit ipsum. Praesentium est fugiat doloremque culpa. Vel ex et cupiditate et numquam.', '<p>Commodi voluptatibus architecto sit vel quos perferendis dolores. Debitis laborum facilis deleniti itaque amet. Magnam in enim voluptate. Sequi sit autem dolores voluptatem fugiat officiis voluptatibus. Aperiam incidunt qui voluptas optio.</p><p>Sapiente nihil magni qui. Non hic vero ducimus voluptates minus eveniet et. Voluptatibus id officia possimus nam eius et maxime et.</p><p>Est commodi quidem perferendis laborum. Fugit commodi accusamus perspiciatis et nostrum eum. Rerum cumque sint tenetur facere sapiente.</p><p>Molestiae voluptatem suscipit incidunt rem quia. Consectetur voluptates ab voluptatem qui aut omnis eos. A nisi ratione non tempore molestiae et perferendis sint.</p><p>Dolorem sint tempora sit. Quod qui ea quas sed veniam qui reprehenderit est. Assumenda ut id eligendi laboriosam rerum. Voluptas autem labore incidunt doloremque.</p><p>Corporis quia deleniti minima saepe animi veniam et. Fugiat nesciunt occaecati omnis itaque quia. Sit dolores nostrum quos illum.</p><p>Ad corrupti repudiandae culpa repellat ea repellat nihil iste. Veniam odit enim et et cumque sit et sequi. Placeat accusantium et cum cupiditate.</p><p>Impedit repellat rem suscipit assumenda. Sed laborum sint explicabo error. Dolores ratione nihil laudantium molestias dolorem.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(11, 1, 2, 'Veritatis enim.', 'ut-rerum-explicabo-harum-ducimus', NULL, 'Est aliquid natus blanditiis sit minima est odio. Sunt tempore quos nam veniam. Quisquam tempore est odit culpa fuga autem. Delectus non laboriosam aut sunt.', '<p>Sit facere quos inventore tempore reiciendis ab. Deleniti dolores consequuntur velit laborum similique eum omnis fugiat. Omnis quae rem voluptatum vel unde iure temporibus.</p><p>Ipsa accusamus ab expedita. Odit suscipit et ut eos. Non ut praesentium pariatur velit voluptatem eveniet ullam.</p><p>Voluptate tempora in provident. Fugit voluptas rerum nam dolorem alias. Ut doloribus necessitatibus ea provident sunt ullam qui facilis.</p><p>Similique blanditiis velit ut consequatur et sit quasi. Ea ducimus et est aspernatur rerum voluptas facere. Qui asperiores omnis aliquid facere voluptas atque aspernatur. Id consectetur sit dolorum non.</p><p>Magnam ratione quia omnis id est mollitia est. Rerum dignissimos voluptatem assumenda tempora. Quis dolor voluptas et. Vel itaque similique sed explicabo debitis.</p><p>Aut error sunt et voluptatem non minus. Vel modi quae et. Quia voluptate voluptatem rerum cupiditate.</p><p>Quos eos quia exercitationem quis error itaque pariatur. Ut alias beatae provident impedit. Officia autem repellat neque hic.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(12, 3, 2, 'Corporis aut reprehenderit corrupti quas.', 'atque-necessitatibus-dolorem-minus-veniam-nesciunt-dicta-atque', NULL, 'Ullam aut recusandae recusandae eum. Natus tempore aut ut et. Aut dolor sint a eum.', '<p>Rerum aperiam illum qui quos voluptatem dicta. Iste illum dolorem quos. Illum consectetur corrupti non est sint dolores quos est.</p><p>Accusantium beatae temporibus quis vero architecto sed repellendus. Rerum autem voluptas et sit voluptates quos. Et distinctio architecto officiis architecto non voluptas sint. Qui dicta non quaerat rerum enim qui.</p><p>Fuga eum animi qui nesciunt quos voluptate. Nesciunt voluptate fuga eligendi ex numquam. Culpa excepturi nulla quis rem eos provident.</p><p>Nemo vel cum dolor et labore. Et nisi eos praesentium. Ad ad reiciendis unde adipisci blanditiis eum.</p><p>Voluptas ut mollitia alias non itaque. Eveniet quas id officia eaque nobis tempore dolores provident. Qui et corrupti ut officia consequatur et ratione. Totam sed voluptas temporibus nihil sequi.</p><p>Consequatur natus sed et aut. Ea provident earum sed aliquid. Quos voluptatem eligendi voluptatibus deserunt aperiam consequuntur alias. Dolore et laborum magnam autem eligendi ullam. Perferendis a facilis aut consequatur perspiciatis.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(13, 3, 3, 'Aut ab quo.', 'voluptatem-dolorum-quidem-in-odit', NULL, 'Ut voluptatum et ut itaque consequatur tempora ex. Molestiae voluptatibus dolorum non. Hic minima quis molestiae velit eum magnam. Provident qui nostrum illum impedit et quisquam quia.', '<p>Voluptatem nesciunt nihil eaque cum numquam quam magnam. Beatae rerum fuga fuga qui qui dolorem. Placeat perspiciatis iste sunt perspiciatis provident. Magnam illum modi distinctio nobis.</p><p>Itaque veniam maxime aspernatur. Facere saepe molestias itaque. Consequuntur facere cum officia id.</p><p>Ipsum suscipit aspernatur quod minus. Corrupti praesentium et quo. Enim non enim id quos ex aut. Facilis adipisci libero amet tenetur dignissimos.</p><p>Amet molestiae cum quas tenetur tempore fuga aliquam ab. Earum qui doloribus rerum quia numquam qui. Eligendi id laborum fuga officiis qui est. Saepe doloribus tempora sapiente voluptas. Cum harum eaque nemo provident.</p><p>Amet aut et eaque sequi explicabo temporibus consequatur. Odit et quaerat vitae in praesentium illo dolore. Earum quia dolorem molestias quas aut qui perspiciatis. Ipsa ut quam qui sapiente rerum saepe.</p><p>Atque et quibusdam nisi iste. Id voluptas cupiditate repudiandae. Est autem ut rerum labore autem ad vel est. Dolores aut est sunt officiis aut. Voluptas temporibus nostrum nostrum excepturi.</p><p>Impedit sit impedit ut modi. Facilis minus provident quia debitis sint accusantium quaerat. Nihil et aut dolores voluptas vel eaque adipisci. Aut sed ratione aut.</p><p>Vel dolorum est delectus impedit voluptates rerum quia repellendus. Iure dolorem neque quis dignissimos recusandae sit. Voluptas qui voluptatem quo iure dolorem et.</p><p>Sint voluptate a beatae. Ab voluptas quibusdam vero consectetur ea. Blanditiis amet voluptatum architecto. Doloremque beatae ratione dolor corporis voluptas id ipsa.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(14, 1, 3, 'Hic rerum velit eum ullam delectus sunt accusamus.', 'ipsam-eveniet-hic-illum-dolorem-molestiae-doloremque', NULL, 'Dolorum consequatur in hic. Reprehenderit repellendus ut nihil.', '<p>Et enim velit non esse dolores at voluptates eos. Aut iste corrupti blanditiis et quo perferendis. Magnam velit perspiciatis magnam tempore non porro aliquid.</p><p>Porro quo et id non maiores corrupti. Impedit voluptatem numquam libero in. Facere ut voluptate nisi asperiores. Error possimus fugiat magnam voluptatum.</p><p>Expedita aut cum consectetur fugit. Molestiae veniam ea doloremque sed qui voluptatibus. Non dolor est totam repellendus vero.</p><p>Omnis ut ea vel dolorum est quod. Sed consequatur minus perferendis voluptates. Dicta facilis consequatur recusandae sit officiis. Corporis expedita voluptatem et et ut repellendus fugit.</p><p>Sed tempora et nihil unde dolorum. Eos sint possimus labore ut. Quo ut quia quo quas enim. Pariatur modi voluptates officia deleniti recusandae cumque dolorem illum.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(15, 3, 1, 'Doloremque aperiam rerum reprehenderit aut eum veritatis nesciunt nobis et.', 'cum-omnis-animi-voluptatem-aliquid-molestiae-voluptas-quae', NULL, 'Quo dolor rem eius non non. Rerum ut facilis corporis dolor non voluptates sed.', '<p>Nulla excepturi accusantium numquam blanditiis. Possimus nesciunt voluptatem fuga explicabo. Consequuntur aut mollitia deleniti unde perferendis. Sint occaecati voluptatibus dolor corporis.</p><p>Voluptas dolor aut eaque voluptas. Eveniet at quibusdam voluptate exercitationem. Provident est sequi suscipit voluptatem est molestiae. Officia esse quisquam odit qui blanditiis provident.</p><p>Inventore hic beatae vero consequuntur ut officiis. Cumque est repellat fugit omnis exercitationem et et. Laborum ea accusantium quo voluptas officia facere est.</p><p>Et sed est sunt voluptatem sed. Facilis sint consequuntur id sed. Eaque doloribus veritatis consequatur dolor possimus quasi nobis dolores.</p><p>Sed odio in enim repellat incidunt odit accusamus qui. Eum rerum consequatur expedita facere tempore necessitatibus nobis. Eos quod veritatis corrupti totam. Nihil sed nihil et sed.</p>', NULL, '2022-10-29 09:56:47', '2022-10-29 09:56:47'),
(16, 2, 2, 'Illum deserunt sit voluptatem aut ex quia.', 'occaecati-consequatur-eos-aut-vero-ad-quia-est', NULL, 'Minus architecto ipsum enim. Sed sint laudantium sed ut magnam. At vel facilis quaerat a vero sed. Nihil eos impedit voluptatibus odit iusto ut perspiciatis qui.', '<p>Dicta sed architecto aut odit officiis labore. Laudantium ea qui quis. Eum laborum est qui consectetur sint magni. Voluptatum consequatur occaecati aut consequuntur.</p><p>Suscipit molestias tempora fugiat a ab. Hic aperiam earum esse hic est sed. Placeat mollitia ad impedit voluptatem aut. Iste sunt et aut eos eos.</p><p>Quas quisquam corrupti et eum qui temporibus minima. Nostrum minima autem itaque tempore sed et. Iste laboriosam quis consequuntur eos libero quae. Unde sed aut nihil aut.</p><p>Quis ducimus et molestiae suscipit nihil dicta sed aut. Autem est vel a quae.</p><p>Enim sunt dolor dolores nam natus vero. Modi dignissimos dolores sed nihil aut. Recusandae dolor beatae unde aliquid odit voluptatibus velit rerum. Voluptas est explicabo repellat voluptas.</p><p>Voluptatem praesentium quis non dolorem suscipit qui. Eum nobis sint aut ea magni qui ut et. Laboriosam cumque error iure occaecati ipsam numquam velit. Temporibus incidunt recusandae velit.</p>', NULL, '2022-10-29 09:56:48', '2022-10-29 09:56:48'),
(17, 2, 3, 'Ut ea et alias eos.', 'numquam-eaque-harum-consequatur', NULL, 'Occaecati similique ut consequatur. Eum praesentium ut culpa placeat commodi eos blanditiis. Vel aut quis explicabo ipsum. Ut adipisci harum dolorem tempore eos id ut porro.', '<p>Nam incidunt nulla quia reprehenderit rem. Maxime esse et odit porro. Cumque odit voluptas voluptatibus molestias libero fugiat neque. Sed et quia deleniti error reprehenderit minus.</p><p>Nulla fugiat eveniet maxime quos. Eos ducimus voluptatem quia voluptas ut. Vero sint alias eligendi nam quae autem.</p><p>Sit inventore consequatur totam in praesentium. Inventore voluptates error consectetur cumque. Soluta qui dolorem nihil temporibus. Est consequatur accusamus optio eos tempore enim. Voluptas voluptates doloremque labore et.</p><p>Repellendus facere quis saepe in dolores repellat aut. Quos aut et quidem quis consequatur autem. Maiores illum adipisci earum aut iusto. Quia assumenda magni qui sit.</p><p>Cumque totam porro quia labore. Molestiae nihil culpa harum veritatis voluptas error placeat. Rerum quia cupiditate omnis aut voluptates.</p><p>Amet omnis et dolores. Est magni at rerum dolore harum. Maiores quasi eveniet molestiae soluta. Sequi quos fugiat veritatis.</p>', NULL, '2022-10-29 09:56:48', '2022-10-29 09:56:48'),
(18, 1, 1, 'Sint maiores recusandae reiciendis.', 'impedit-quas-rerum-quis-corrupti-aliquid', NULL, 'Voluptatem et pariatur deserunt fuga veritatis perspiciatis quibusdam sit. Commodi inventore commodi ut nihil. Et et cupiditate perspiciatis sit in ad.', '<p>Blanditiis voluptas consequuntur amet. Sint dolor sapiente eum quia quis doloribus facilis facilis. Vero autem dolor id vel et laudantium.</p><p>Blanditiis itaque quo minima ut voluptatum eos. Nostrum enim a autem eveniet. Modi magnam tenetur ipsam eligendi ea perferendis nulla. Reprehenderit architecto ex dolore et omnis sit. Dolores consectetur ratione quia adipisci.</p><p>Sint quia occaecati earum quia consequatur. Aut voluptatem nam est unde consequuntur voluptatem. Assumenda quia doloremque a doloribus aliquam sunt.</p><p>In eius in delectus labore aspernatur tempora. Maiores soluta sunt dolorem molestiae. Sunt quae nam perspiciatis.</p><p>Dolores sed eos explicabo neque quos. Maxime eaque pariatur aut esse dolorum alias aut. Voluptatem ex quibusdam voluptatem qui ad similique laboriosam. Minus aperiam eveniet aperiam qui aut sit.</p><p>Beatae et quis quis ratione. Nam aut et id nihil sunt aut. Repudiandae doloremque nulla optio dignissimos quam facilis quis voluptatum. Vitae ut rerum minus delectus.</p><p>Commodi qui voluptate molestias quisquam quis eveniet non. Accusamus rem rerum repellat quis. Reprehenderit temporibus repudiandae delectus quo quo nulla facilis. Porro accusamus aut aspernatur voluptatum eius.</p><p>Accusamus et blanditiis asperiores voluptatum provident. Dolorem autem et in quos mollitia in. Et ut recusandae quod maxime maiores error nulla consequuntur.</p>', NULL, '2022-10-29 09:56:48', '2022-10-29 09:56:48'),
(19, 1, 1, 'Tempora rerum et voluptate.', 'sunt-aut-ex-porro-voluptatem-illum', NULL, 'Deleniti tenetur recusandae ab fuga enim voluptatem. Non id eveniet aliquam voluptatibus occaecati. Esse eligendi sit sed fugit est ullam veritatis. Earum placeat dolores et dolor omnis voluptas enim.', '<p>Mollitia labore iste sit molestias quo maxime dolor. Dolor assumenda labore qui rerum est. Occaecati corrupti suscipit architecto quisquam libero sequi sunt. Ipsa dolor et voluptatem aliquid qui.</p><p>Nostrum laboriosam explicabo eaque dolores necessitatibus. Sint corporis nihil alias aspernatur. Corrupti quia laboriosam et animi culpa.</p><p>Distinctio et non dolorem accusamus. Et voluptatibus nihil consequuntur vitae. Necessitatibus qui eius quo nemo asperiores et.</p><p>Beatae dolore aut magnam minus quia. Blanditiis delectus aliquam voluptatem molestiae aut. Sint eos velit unde temporibus a totam suscipit.</p><p>Sit accusamus nam quasi laboriosam sit non cum culpa. Id voluptas facilis quasi placeat et. Qui vel beatae vel assumenda.</p><p>Adipisci tempore harum a et optio est quaerat voluptas. Aspernatur illum fugiat porro nobis ut enim. Sunt distinctio ab libero ipsa.</p><p>Labore quis exercitationem iusto doloremque architecto quia et. Libero eaque voluptas repellat et. Saepe explicabo repellat voluptatem totam odit reprehenderit expedita. Quia non error eos aut libero aliquid eius.</p>', NULL, '2022-10-29 09:56:48', '2022-10-29 09:56:48'),
(20, 1, 2, 'Animi est consequatur consectetur nemo a ullam.', 'aut-quibusdam-provident-in-sed-totam-id-qui', NULL, 'Autem sint autem sunt. Veritatis corrupti quas quis est ex voluptatem. Similique distinctio eum dolor libero velit sed porro sunt. At quos quo eum enim facilis blanditiis.', '<p>Sit inventore et facere nemo aut est quidem. Asperiores placeat aliquid recusandae ut qui laborum. Corrupti alias autem aut eligendi debitis.</p><p>Asperiores eos et tenetur itaque. Iure officiis aliquam et. Nam et autem dolores ut neque.</p><p>Sequi recusandae aperiam dolor. Quaerat praesentium possimus repellat et non aut alias. Molestiae molestiae reiciendis architecto.</p><p>Unde fugit maiores sed. Atque ullam sed repellendus distinctio numquam et quis. Commodi ad velit consequatur ea.</p><p>Quam aut ea non. Molestiae omnis velit voluptates modi impedit quasi et sed.</p><p>At sit reiciendis sunt saepe animi voluptatem optio. Qui omnis saepe placeat et enim. Accusantium numquam temporibus mollitia dolorum quam magni quos magnam. Unde excepturi iste velit unde dolorem vero.</p><p>Natus sequi molestiae inventore qui eum dolor distinctio debitis. Cum beatae omnis accusantium dolor dolore. Magni velit pariatur voluptatum aperiam. Distinctio molestiae et suscipit aut eos corporis quam.</p><p>Perspiciatis blanditiis quis aut itaque similique rem voluptatibus. Assumenda voluptates occaecati est voluptatem architecto quasi rem fugit. Consequatur in quibusdam ut impedit qui.</p>', NULL, '2022-10-29 09:56:48', '2022-10-29 09:56:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Agam Mirza', 'agammz', 'agam.46mz@gmail.com', NULL, '$2y$10$HmSL/pVud1d8KS2MH4KshOw2LdUm5mtybOLO9kF16S/4MpMQNfY2u', NULL, '2022-10-29 09:56:46', '2022-10-29 09:56:46', 1),
(2, 'Makara Emas Wacana', 'aoktaviani', 'nasrullah.hidayanto@example.com', '2022-10-29 09:56:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aqzKxx99p7Vn5sM1QimBX8DNetVU51VBDD2NTDlLoZ7z3Th0k35hWLReFt8P', '2022-10-29 09:56:47', '2022-10-29 09:56:47', 0),
(3, 'Yoga Maulana', 'lailasari.amelia', 'lembah.zulaika@example.org', '2022-10-29 09:56:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L3G0V0tGfG', '2022-10-29 09:56:47', '2022-10-29 09:56:47', 0),
(4, 'Kenari Teguh Habibi S.IP', 'tnarpati', 'pranowo.latika@example.net', '2022-10-29 09:56:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pQpUuGW0UGM7d9rgnTkJOTz04WOiFkhQSgvchB50y2gsyjOV6uIzMK2giC5S', '2022-10-29 09:56:47', '2022-10-29 09:56:47', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
