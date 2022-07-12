-- --------------------------------------------------------
-- ホスト:                          127.0.0.1
-- サーバーのバージョン:                   10.7.3-MariaDB - mariadb.org binary distribution
-- サーバー OS:                      Win64
-- HeidiSQL バージョン:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- テーブル jobhunting_db.account: ~65 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`ACCOUNTID`, `ACCOUNTNAME`, `ACCOUNTMAILADDRESS`, `CLASSNUMBER`, `ACCOUNTPASSWORD　`, `　ROLEID`) VALUES
	('20194101', '貫空', '20194101@kcska.onmicrosoft.com', 'R3A1', 'wja830az', 2),
	('20194102', '八重石慎也', '20194102@kcska.onmicrosoft.com', 'R3A1', '3j89c3ar', 2),
	('20194103', '有井和男', '20194103@kcska.onmicrosoft.com', 'R3A1', '3ja8cpah', 2),
	('20194105', '今野彩花', '20194105@kcska.onmicrosoft.com', 'R3A1', 'f2j3e0@a', 2),
	('20194106', '程田久雄', '20194106@kcska.onmicrosoft.com', 'R3A1', 'je32q0-c', 2),
	('20194107', '永井勉', '20194107@kcska.onmicrosoft.com', 'R3A1', 'fej20fzf', 2),
	('20194108', '則意英', '20194108@kcska.onmicrosoft.com', 'R3A1', 'e3jk0t4a', 2),
	('20194109', '鴛正', '20194109@kcska.onmicrosoft.com', 'R3A1', '3j90afja', 2),
	('20194110', '中田光隆', '20194110@kcska.onmicrosoft.com', 'R3A1', 'j3ea@0f4', 2),
	('20194111', '高山貞通', '20194111@kcska.onmicrosoft.com', 'R3A2', 'vmq80qt9', 2),
	('20194112', '毎川李百', '20194112@kcska.onmicrosoft.com', 'R3A2', 'vnq-t7qc', 2),
	('20194113', '中石正勝', '20194113@kcska.onmicrosoft.com', 'R3A2', 'vn9qtq70', 2),
	('20194114', '野村結柊', '20194114@kcska.onmicrosoft.com', 'R3A2', 'nv9tqt75', 2),
	('20194115', '檀浦サンヤ', '20194115@kcska.onmicrosoft.com', 'R3A2', 'vqn8-nt3', 2),
	('20194116', '新田宿海麗', '20194116@kcska.onmicrosoft.com', 'R3A2', 'nc489q0t', 2),
	('20194117', '平藤希洋', '20194117@kcska.onmicrosoft.com', 'R3A2', 'xtn8q30t', 2),
	('20194118', '河村剣星', '20194118@kcska.onmicrosoft.com', 'R3A2', 'vbtq8-c4', 2),
	('20194119', '瓜生津みゆき', '20194119@kcska.onmicrosoft.com', 'R3A2', 'qv8t-qbc', 2),
	('20194120', '橋本葵唯', '20194120@kcska.onmicrosoft.com', 'R3A2', 'sv8tb4-3', 2),
	('20203101', '弥勒寺晟運', '20203101@kcska.onmicrosoft.com', 'S2A1', 'jie92fb9', 2),
	('20203102', '小葉倉並壱', '20203102@kcska.onmicrosoft.com', 'S2A1', 'j29fb3h7', 2),
	('20203103', '福永陽', '20203103@kcska.onmicrosoft.com', 'S2A1', 'elpa812r', 2),
	('20203104', '上瀧和也', '20203104@kcska.onmicrosoft.com', 'S2A1', '92h9d674', 2),
	('20203105', '五十嵐幸礼', '20203105@kcska.onmicrosoft.com', 'S2A1', 'g8fa3lga', 2),
	('20203106', '芦埜偲', '20203106@kcska.onmicrosoft.com', 'S2A1', 'j290jfa3', 2),
	('20203107', '薄尾屋銀河', '20203107@kcska.onmicrosoft.com', 'S2A1', 'j3-f3b2h', 2),
	('20203108', '染野絢', '20203108@kcska.onmicrosoft.com', 'S2A1', '2ghf3jhq', 2),
	('20203109', '星屋萩之海', '20203109@kcska.onmicrosoft.com', 'S2A1', '83ghsa3t', 2),
	('20203110', '千垣優美', '20203110@kcska.onmicrosoft.com', 'S2A1', '2hq9-fhe', 2),
	('20203111', '玉巻雨', '20203111@kcska.onmicrosoft.com', 'S2A2', 'nv8rq0t-', 2),
	('20203112', '栗藤貴嘉', '20203112@kcska.onmicrosoft.com', 'S2A2', 'cy481n0t', 2),
	('20203113', '鶫将如', '20203113@kcska.onmicrosoft.com', 'S2A2', 'nqtv49-3', 2),
	('20203114', '大上戸越', '20203114@kcska.onmicrosoft.com', 'S2A2', 'p@un94q@', 2),
	('20203115', '党教玄', '20203115@kcska.onmicrosoft.com', 'S2A2', 'v0qmt0-[', 2),
	('20203116', '宮川道昌', '20203116@kcska.onmicrosoft.com', 'S2A2', 'nvu8q3-n', 2),
	('20203117', '池之谷真司', '20203117@kcska.onmicrosoft.com', 'S2A2', 'cntu9q*{', 2),
	('20203118', '鮒利空弥', '20203118@kcska.onmicrosoft.com', 'S2A2', 'vq8^nvvq', 2),
	('20203119', '堯登', '20203119@kcska.onmicrosoft.com', 'S2A2', '843-qbvt', 2),
	('20203120', '五百竹二郎', '20203120@kcska.onmicrosoft.com', 'S2A2', 't4qny8-t', 2),
	('20212101', '山田太郎', '20212101@kcska.onmicrosoft.com', 'J1A1', 'hoa02f71', 2),
	('20212102', '鎌田洋己', '20212102@kcska.onmicrosoft.com', 'J1A1', '20fj83lw', 2),
	('20212103', '岡戸隆則', '20212103@kcska.onmicrosoft.com', 'J1A1', '9fja73j3', 2),
	('20212104', '富田譲', '20212104@kcska.onmicrosoft.com', 'J1A1', '93f83jfk', 2),
	('20212105', '蔵真由', '20212105@kcska.onmicrosoft.com', 'J1A1', 'djk92hqa', 2),
	('20212106', '鈴木誠', '20212106@kcska.onmicrosoft.com', 'J1A1', 'js9b27f4', 2),
	('20212107', '中原健一', '20212107@kcska.onmicrosoft.com', 'J1A1', '92jd73bq', 2),
	('20212108', '南雅也', '20212108@kcska.onmicrosoft.com', 'J1A1', '93jdf0ah', 2),
	('20212109', '桜井灯', '20212109@kcska.onmicrosoft.com', 'J1A1', 'h82db9fw', 2),
	('20212110', '荒川一樹', '20212110@kcska.onmicrosoft.com', 'J1A1', '2678tdgi', 2),
	('20212111', '成清憲猛', '20212111@kcska.onmicrosoft.com', 'J1A2', '30ajf340', 2),
	('20212112', '右衛門佐悠翔', '20212112@kcska.onmicrosoft.com', 'J1A2', '3ja8pcf3', 2),
	('20212113', '笠江烈司', '20212113@kcska.onmicrosoft.com', 'J1A2', 'n83af9a3', 2),
	('20212114', '土生信雄', '20212114@kcska.onmicrosoft.com', 'J1A2', 'fj3q9n-3', 2),
	('20212115', '専称拓実', '20212115@kcska.onmicrosoft.com', 'J1A2', '3rqnaf38', 2),
	('20212116', '矢鋪ひより', '20212116@kcska.onmicrosoft.com', 'J1A2', 'jmn903fa', 2),
	('20212117', '小堆成美', '20212117@kcska.onmicrosoft.com', 'J1A2', 'f390dasa', 2),
	('20212118', '石橋淳一', '20212118@kcska.onmicrosoft.com', 'J1A2', 'fvyw4e54', 2),
	('20212119', '星哉衛門', '20212119@kcska.onmicrosoft.com', 'J1A2', '4agjipv4', 2),
	('20212120', '焔空貴', '20212120@kcska.onmicrosoft.com', 'J1A2', '4t8hsg04', 2),
	('H199507', '安藤将', 'tadashi@kcska.onmicrosoft.com', 'J1A2', '3h28ab4a', 1),
	('H200118', '服部星', 'hikari@kcska.onmicrosoft.com', 'J1A1', '83fh0a38', 1),
	('H200503', '小四郎丸明音', 'akito@kcska.onmicrosoft.com', 'R1A1', 'fh23qc0n', 1),
	('H200803', '賀谷皇磨', 'koma@kcska.onmicrosoft.com', 'S1A1', 'fj3aqvb8', 1),
	('H201010', '九冨綾音', 'ayane@kcska.onmicrosoft.com', 'R1A2', '47af2wvb', 1),
	('H201715', '東伏見宮楽', 'tano@kcska.onmicrosoft.com', 'S1A2', 'fb734ao0', 1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

-- テーブル jobhunting_db.bookmark: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `bookmark` DISABLE KEYS */;
INSERT INTO `bookmark` (`BOOKMARKNUMBER`, `BUSINESSNO`) VALUES
	(1, '0');
/*!40000 ALTER TABLE `bookmark` ENABLE KEYS */;

-- テーブル jobhunting_db.business: ~50 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` (`BUSINESSNO`, `BUSINESSNAME`, `TELLNUMBER`, `BUSINESSCONTENT`, `POSTALCODE`, `LOCATION`, `LUDUSTRY`, `EXISTENCE`, `RECEPTIONISTSNUMBER`, `HOMEPAGE`, `RECEIPTFIELD`, `SALARY2`, `SALARY3`, `SALARY4`, `NUMBEROFEMPLOYEES`, `HUMANRESOURCESDEPARTMENTNAME`, `HUMANRESOURCESDEPARTMENTMAILADDRESS`, `SEVERANCEPAY`, `OVERTIMEPAY`, `QUALIFICATIONALLOWNCE`, `HOLIDAY`) VALUES
	(1, '株式会社郡元', '099-234-5678', '開発', '890-0065', '鹿児島県鹿児島市郡元町', '情報処理サービス', '有', 10, 'https://kabushikikorimoto.com', 'SE・PG,運用', 170000, 180000, 190000, 50, '奥村晟央', 'okumura@kabushikikorimoto.gmail.com', '有', 'みなし残業', '有', '完全週休二日制'),
	(2, '株式会社SYSTEM', '099-938-1038', '運用・保守', '890-0054', '鹿児島県鹿児島市荒田町', '通信', '有', 5, 'https://kabusikisystem.com', 'SE・PG,運用', 180000, 185000, 190000, 50, '山本一三', 'yamamoto@kabusikisystem.gmail.com', '有', 'みなし残業', '有', '週休二日制'),
	(3, '株式会社ソフト', '099-123-4567', '開発', '890-0008', '鹿児島県鹿児島市伊敷', 'ソフトウェア', '有', 20, 'https://kabushikisoft.com', 'SE・PG', 175000, 185000, 200000, 50, '小野寺庸', 'onodera@kabushikisoft.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(4, '株式会社電子', '099-598-5893', '保守・管理', '890-0055', '鹿児島県鹿児島市上荒田町', 'ハードウェア', '有', 7, 'https://kabushikidensi.com', 'SE・PG,インフラ', 185000, 190000, 200000, 50, '増川陽介', 'masukawa@kabushikidensi.gmail.com', '有', 'みなし残業', '有', '週休二日制'),
	(5, '株式会社デザイン', '099-972-2947', 'SE関連', '890-0052', '鹿児島県鹿児島市上之園町', 'インターネット・Web', '有', 6, 'https://kabushikidesign.com', 'SE・PG', 170000, 180000, 190000, 50, '橋本わかこ', 'hasimoto@kabushikidesign.gmail.com', '有', 'その都度', '有', '完全週休二日制'),
	(6, '株式会社情報処理', '099-927-4862', 'SE関連', '890-0073', '鹿児島県鹿児島市宇宿町', '情報処理サービス', '有', 8, 'https://kabushikizyouhousori.com', 'SE・PG,運用', 170000, 180000, 190000, 50, '渡辺仁', 'watanabe@kabushikizyouhousori.gmail.com', '有', 'みなし残業', '有', '週休二日制'),
	(7, '株式会社通信', '099-203-4823', 'SE関連', '891-0123', '鹿児島県鹿児島市卸本町', '通信', '有', 3, 'https://kabushikituusin.com', 'SE・PG,運用', 170000, 180000, 190000, 50, '足立優斗', 'adati@kabushikituusin.gmail.com', '有', 'その都度', '無', '週休二日制'),
	(8, 'ソフトウェア株式会社', '099-302-9946', 'SE関連', '892-0846', '鹿児島県鹿児島市鍛治屋町', 'ソフトウェア', '有', 4, 'https://softwarekabushiki.com', 'SE・PG', 180000, 185000, 190000, 50, '三上昭一', 'mikami@softwarekabushiki.gmail.com', '有', 'その都度', '有', '完全週休二日制'),
	(9, 'ハードウェア株式会社', '099-483-8362', 'SE関連', '891-0116', '鹿児島県鹿児島市上福元町', 'ハードウェア', '有', 13, 'https://hardwarekabushiki.com', 'SE・PG,インフラ', 175000, 185000, 200000, 50, '大久保健', 'okubo@hardwarekabushiki.gmail.com', '有', 'みなし残業', '有', '週休二日制'),
	(10, '通信株式会社', '099-936-2993', 'SE関連', '890-0064', '鹿児島県鹿児島市鴨池新町', '通信', '有', 16, 'https://tuusinkabushiki.com', 'SE・PG,運用', 185000, 190000, 200000, 50, '平田佳子', 'hirata@tuusinkabushiki.gmail.com', '有', 'みなし残業', '有', '完全週休二日制'),
	(11, 'ネットWeb株式会社', '099-281-6036', 'SE関連', '892-0837', '鹿児島県鹿児島市甲突町', 'インターネット・Web', '有', 7, 'https://netwebkabushiki.com', 'SE・PG,WEB', 170000, 180000, 190000, 50, '中嶋永之助', 'nakazima@netwebkabushiki.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(12, 'システムサービス株式会社', '099-386-6378', 'SE関連', '891-0114', '鹿児島県鹿児島市小松原町', '情報処理サービス', '有', 4, 'https://systemservicekabushiki.com', 'SE・PG,運用', 170000, 180000, 190000, 50, '橋本良政', 'hasimoto@systemservicekabushiki.gmail.com', '有', 'みなし残業', '有', '週休二日制'),
	(13, '有限会社ソフトウェア開発', '099-328-6493', '開発', '891-0175', '鹿児島県鹿児島市桜ヶ丘6丁目', 'ソフトウェア', '有', 10, 'https://yugensoftwaredevelopment.com', 'SE・PG', 170000, 180000, 190000, 50, '小倉駿', 'ogura@yugensoftwaredevelopment.gmail.com', '有', 'その都度', '有', '完全週休二日制'),
	(14, '有限会社インターネット', '099-964-0736', 'SE関連', '890-0056', '鹿児島県鹿児島市下荒田町', 'インターネット・Web', '有', 6, 'https://yugeninternet.com', 'SE・PG,WEB', 180000, 185000, 190000, 50, '八幡恵世', 'yahata@yugeninternet.gmail.com', '有', 'みなし残業', '有', '週休二日制'),
	(15, '有限会社通信', '099-839-6428', 'SE関連', '890-0072', '鹿児島県鹿児島市新栄町', '通信', '有', 3, 'https://yugentuusin.com', 'SE・PG,運用', 175000, 185000, 200000, 50, '中野琳稀', 'nakano@yugentuusin.gmail.com', '有', 'その都度', '有', '完全週休二日制'),
	(16, '有限会社ハードウェア', '099-576-9362', 'SE関連', '890-0015', '鹿児島県鹿児島市草牟田町', 'ハードウェア', '有', 8, 'https://yugenhardware.com', 'SE・PG,インフラ', 170000, 180000, 190000, 50, '青木和', 'aoki@yugenhardware.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(17, '有限会社ソフトウェア', '099-829-6362', 'SE関連', '890-0035', '鹿児島県鹿児島市田上町', 'ソフトウェア', '有', 9, 'https://yugensoftware.com', 'SE・PG', 185000, 190000, 200000, 50, '寺迫哲也', 'tarasako@yugensoftware.gmail.com', '有', 'みなし残業', '有', '完全週休二日制'),
	(18, '武サービス株式会社', '099-947-7239', 'SE関連', '890-0045', '鹿児島県鹿児島市武', '情報処理サービス', '有', 4, 'https://takeservicekabushiki.com', 'SE・PG,運用', 170000, 180000, 190000, 50, '秋原敏子', 'akihara@takeservicekabushiki.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(19, '谷山通信株式会社', '099-382-4293', 'SE関連', '891-0141', '鹿児島県鹿児島市谷山中央', '通信', '有', 3, 'https://taniyamatuusinkabushiki.com', 'SE・PG,運用', 185000, 190000, 200000, 50, '小野しゅうり', 'ono@taniyamatuusinkabushiki.gmail.com', '無', 'その都度', '有', '完全週休二日制'),
	(20, 'Webネット天保山株式会社', '099-648-2843', 'SE関連', '890-0061', '鹿児島県鹿児島市天保山町', 'インターネット・Web', '有', 5, 'https://webnettenpozankabushiki.com', 'SE・PG,WEB', 170000, 180000, 190000, 50, '白井巧', 'sirai@webnettenpozankabushiki.gmail.com', '有', 'みなし残業', '有', '完全週休二日制'),
	(21, 'ソフト開発株式会社', '099-927-2846', 'SE関連', '891-0863', '鹿児島県鹿児島市西坂元町', 'ソフトウェア', '有', 9, 'https://softdevelopmentkabushiki.com', 'SE・PG', 175000, 185000, 200000, 50, '小津絆華', 'ozu@softdevelopmentkabushiki.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(22, 'ハードウェアマネジメント株式会社', '099-573-9462', '保守・管理', '890-0026', '鹿児島県鹿児島市原良', 'ハードウェア', '有', 6, 'https://hardwaremanegementkabushiki.com', 'SE・PG', 185000, 190000, 200000, 50, '角田茉納', 'sunoda@hardwaremanegementkabushiki.gmail.com', '有', 'みなし残業', '有', '週休二日制'),
	(23, '鹿児島ソフトウェア株式会社', '099-937-1284', 'SE関連', '892-0855', '鹿児島県鹿児島市冷水町', 'ソフトウェア', '有', 10, 'https://kagosimasoftwarekabushiki.com', 'SE・PG', 180000, 185000, 190000, 50, '川口文絃', 'kawaguti@kagosimasoftwarekabushiki.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(24, 'インフォサービス鹿児島株式会社', '099-635-9725', 'SE関連', '899-2702', '鹿児島県鹿児島市福山町', '情報処理サービス', '有', 20, 'https://infoservicekagosimakabushiki.com', 'SE・PG', 170000, 180000, 190000, 50, '坂本義之', 'sakamoto@infoservicekagosimakabushiki.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(25, '通信鹿児島株式会社', '099-937-1936', 'SE関連', '892-0821', '鹿児島県鹿児島市名山町', '通信', '有', 8, 'https://tuusinkagosimakabushiki.com', 'SE・PG', 175000, 185000, 200000, 50, '藤井久美', 'huzii@tuusinkagosimakabushiki.gmail.com', '有', 'その都度', '有', '完全週休二日制'),
	(26, '鹿児島Webデザイン株式会社', '099-235-1992', 'SE関連', '892-0871', '鹿児島県鹿児島市吉野町', 'インターネット・Web', '有', 5, 'https://kagosimawebdesignkabushiki.com', 'SE・PG,WEB', 185000, 190000, 200000, 50, '松下花音', 'matusita@kagosimawebdesignkabushiki.gmail.com', '有', 'みなし残業', '有', '完全週休二日制'),
	(27, 'カゴソフト株式会社', '099-838-8892', 'SE関連', '891-0143', '鹿児島県鹿児島市和田', 'ソフトウェア', '有', 6, 'https://kagosoftkabushiki.com', 'SE・PG', 170000, 180000, 190000, 50, '木下優弥', 'kinosita@kagosoftkabushiki.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(28, 'アイラシステムズ株式会社', '0995-82-0932', 'SE関連', '899-5543', '鹿児島県姶良市住吉', 'ハードウェア', '有', 10, 'https://airasystemskabushiki.com', 'SE・PG,インフラ', 170000, 180000, 190000, 50, '多田愛佳', 'tada@airasystemskabushiki.gmail.com', '有', 'みなし残業', '有', '完全週休二日制'),
	(29, '鍋倉インフォサービス株式会社', '0995-72-0373', 'SE関連', '899-5411', '鹿児島県姶良市鍋倉', '情報処理サービス', '有', 8, 'https://nabekurainfoservicekabushiki.com', 'SE・PG', 170000, 180000, 190000, 50, '三浦怜寿', 'miura@nabekurainfoservicekabushiki.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(30, 'WebシステムKAGOSHIMA株式会社', '0995-97-1632', 'SE関連', '899-5655', '鹿児島県姶良市船津', 'インターネット・Web', '有', 9, 'https://websystemkagoshimakabushiki.com', 'SE・PG,WEB', 170000, 180000, 190000, 50, '酒井芽', 'sakai@websystemkagoshimakabushiki.gmail.com', '有', 'みなし残業', '有', '完全週休二日制'),
	(31, 'サイコキネシス株式会社', '0995-73-2263', 'SE関連', '899-5544', '鹿児島県姶良市大山', '通信', '有', 2, 'https://psychokinesiskabushiki.com', 'SE・PG,運用', 185000, 190000, 200000, 50, '白日司', 'sirakusa@psychokinesiskabushiki.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(32, 'キャビネット株式会社', '0995-26-2642', 'SE関連', '899-5314', '鹿児島県姶良市加治木町仮屋町', 'ハードウェア', '有', 8, 'https://cabinetkabushiki.com', 'SE・PG,インフラ', 170000, 180000, 190000, 50, '津田幸子', 'tuda@cabinetkabushiki.gmail.com', '有', 'みなし残業', '有', '完全週休二日制'),
	(33, 'ジュラシック株式会社', '0995-87-8264', 'SE関連', '899-5203', '鹿児島県姶良市加治木町小山田', 'ソフトウェア', '有', 19, 'https://jurassickabushiki.com', 'SE・PG', 185000, 190000, 200000, 50, '上原成飛', 'uehara@jurassickabushiki.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(34, 'オリオンサービス株式会社', '0995-87-2845', 'SE関連', '899-5301', '鹿児島県姶良市蒲生町上久徳', '情報処理サービス', '有', 3, 'https://orionservicekabushiki.com', 'SE・PG,運用', 180000, 185000, 190000, 50, '野田和永', 'noda@orionservicekabushiki.gmail.com', '有', 'その都度', '有', '完全週休二日制'),
	(35, 'アルテミス株式会社', '0995-26-2273', 'SE関連', '899-5545', '鹿児島県姶良市木津志', 'ハードウェア', '有', 8, 'https://artemiskabushiki.com', 'SE・PG,インフラ', 170000, 180000, 190000, 50, '大西尊詠', 'onisi@artemiskabushiki.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(36, '01システム株式会社', '0995-83-1023', 'SE関連', '899-5401', '鹿児島県姶良市寺師', 'インターネット・Web', '有', 5, 'https://zeroonesystemkabushiki.com', 'SE・PG,WEB', 175000, 185000, 200000, 50, '岩崎幹夫', 'iwasaki@zeroonesystemkabushiki.gmail.com', '無', 'みなし残業', '有', '週休二日制'),
	(37, 'インフォネット株式会社', '0995-34-2743', 'SE関連', '899-5431', '鹿児島県姶良市西餅田', '通信', '有', 6, 'https://infonetkabushiki.com', 'SE・PG,運用', 185000, 190000, 200000, 50, '福田由世', 'hukuda@infonetkabushiki.gmail.com', '有', 'みなし残業', '有', '完全週休二日制'),
	(38, 'ツナグ株式会社', '092-283-2339', 'SE関連', '811-1334', '福岡県福岡市南区的場', 'インターネット・Web', '有', 9, 'https://tunagukabushiki.com', 'SE・PG,WEB', 170000, 180000, 190000, 50, '大野理恵', 'oono@tunagukabushiki.gmail.com', '有', 'みなし残業', '有', '完全週休二日制'),
	(39, 'ノア株式会社', '0942-22-9473', 'SE関連', '830-0011', '福岡県久留米市旭町', 'ハードウェア', '有', 5, 'https://noakabushiki.com', 'SE・PG,インフラ', 170000, 180000, 190000, 50, '萩原真夢乃', 'hagiwara@noakabushiki.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(40, 'フィーチャー株式会社', '0942-20-2842', 'SE関連', '830-0033', '福岡県久留米市天神町', '通信', '有', 7, 'https://featurekabushiki.com', 'SE・PG,運用', 185000, 190000, 200000, 50, '原子歩', 'harako@featurekabushiki.gmail.com', '有', 'その都度', '有', '完全週休二日制'),
	(41, 'OEC株式会社', '099-003-4483', 'SE関連', '818-0123', '福岡県太宰市梅ヶ丘', 'インターネット・Web', '有', 9, 'https://oeckabushiki.com', 'SE・PG,WEB', 185000, 190000, 200000, 50, '富田曖', 'tomita@oeckabushiki.gmail.com', '有', 'みなし残業', '有', '週休二日制'),
	(42, '五条ソフトウェアサービス株式会社', '092-022-3336', 'SE関連', '818-0125', '福岡県太宰市五条', 'ソフトウェア', '有', 5, 'https://gozyosoftwareservicekabushiki.com', 'SE・PG', 185000, 190000, 200000, 50, '香月奈央', 'kagetu@gozyosoftwareservicekabushiki.gmail.com', '有', 'その都度', '有', '完全週休二日制'),
	(43, 'イズミインフォサービス株式会社', '06-2834-5958', 'SE関連', '540-0019', '大阪府大阪市中央区和泉町', '情報処理サービス', '有', 7, 'https://izumiinfoservicekabushiki.com', 'SE・PG,運用', 170000, 180000, 190000, 50, '久保田京子', 'kubota@izumiinfoservicekabushiki.gmail.com', '有', 'みなし残業', '有', '週休二日制'),
	(44, 'RYUZIN株式会社', '072-564-2932', 'SE関連', '590-0972', '大阪府堺市竜神橋町', 'ハードウェア', '有', 4, 'https://ryuzinkabushiki.com', 'SE・PG,インフラ', 180000, 185000, 190000, 50, '青山亨', 'aoyama@ryuzinkabushiki.gmail.com', '有', 'みなし残業', '有', '週休二日制'),
	(45, 'マキウェブ株式会社', '059-838-2946', 'SE関連', '514-1123', '三重県津市牧町', 'インターネット・Web', '有', 6, 'https://makiwebkabushiki.com', 'SE・PG,WEB', 175000, 185000, 200000, 50, '高田灯理', 'takada@makiwebkabushiki.gmail.com', '有', 'その都度', '有', '完全週休二日制'),
	(46, 'TOKYOインフォサービス株式会社', '03-9827-2232', 'SE関連', '156-0055', '東京都世田谷区船橋', '情報処理サービス', '有', 3, 'https://tokyoinfoservicekabushiki.com', 'SE・PG,運用', 170000, 180000, 190000, 50, '本多有稀', 'honda@tokyoinfoservicekabushiki.gmail.com', '有', 'みなし残業', '有', '週休二日制'),
	(47, 'ソフトウェアJP株式会社', '03-7113-1932', 'SE関連', '106-0045', '東京都港区麻布十番', 'ソフトウェア', '有', 8, 'https://softwarejpkabushiki.com', 'SE・PG', 185000, 190000, 200000, 50, '大槻ハル', 'otukisoftwarejpkabushiki@marunoutituusinkabushiki.gmail.com', '有', 'みなし残業', '有', '完全週休二日制'),
	(48, '丸の内通信株式会社', '03-6029-2628', 'SE関連', '100-0005', '東京都千代田区丸の内', '通信', '有', 2, 'https://marunoutituusinkabushiki.com', 'SE・PG,運用', 175000, 185000, 200000, 50, '太田心詠', 'ota@marunoutituusinkabushiki.gmail.com', '有', 'その都度', '有', '週休二日制'),
	(49, '日本情報処理サービス株式会社', '03-6937-4467', 'SE関連', '166-0012', '東京都杉並区和田', '情報処理サービス', '有', 20, 'https://nihonzyouhousyoriservicekabushiki.com', 'SE・PG,運用', 185000, 190000, 200000, 50, '中山雀', 'nakayama@nihonzyouhousyoriservicekabushiki.gmail.com', '有', 'みなし残業', '有', '完全週休二日制'),
	(50, 'JPネット株式会社', '03-5387-2395', 'SE関連', '152-0035', '東京都目黒区自由が丘', 'インターネット・Web', '有', 12, 'https://jpnetkabushiki.com', 'SE・PG,WEB', 180000, 185000, 190000, 50, '村田恵嗣', 'murata@jpnetkabushiki.gmail.com', '有', 'その都度', '有', '完全週休二日制');
/*!40000 ALTER TABLE `business` ENABLE KEYS */;

-- テーブル jobhunting_db.businesspdf: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `businesspdf` DISABLE KEYS */;
/*!40000 ALTER TABLE `businesspdf` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
