-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2022 at 06:21 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dpweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `articleImage` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `author`, `title`, `description`, `articleImage`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Dr. Nasir Uddin', 'ULTRASONIC SCALING', 'Ultrasonic scaling is a form of tooth cleaning which refers to the non-surgical technique of scaling, sometimes called “root debridement.”\n\nIt’s typically a relatively painless procedure in which small dental instruments are used to physically remove deposits from the surfaces of teeth.\n\nUltrasonic scaling has been around for decades and should be part of the dental hygienist’s daily patient routine. Sonic scalers are still around, but most have transitioned to ultrasonic scalers.\n\nTo fight periodontal disease, this is needed to reduce plaque, calculus, and the number of bacteria in the pockets in mouth. One device dentists use to remove calculus from teeth is an ultrasonic scaler. It consists of a wand with a small scaling tip that produces a soft ultrasonic vibration. The small, quick vibrations in combination with a water flow give us a whole new level of effectiveness in calculus removal. Ultrasonic scaling removes calculus and reduces the number of harmful bacteria below the gum line. It is an important tool in the prevention and treatment of periodontal disease. Routine cleanings remove plaque and tartar that exist on your teeth above the gum line, but sometimes, especially if you don’t floss regularly, plaque, tartar and bacteria can develop below the gum line. The goal of scaling and root planning is to remove this source of periodontal infection from below the gum line on the surfaces of the roots. Depending on the severity of the periodontitis, it may take less than half an hour, or it may take multiple sessions to complete the treatment.', 'article/2022/10/CdNP16AHkUXhkksIjRXeCC5yTi0FTnUAqIXHVWvC.png', '2022-10-07 23:26:23', '2022-10-07 23:26:55'),
(2, 'Prof. Dr. Nasir Uddin', 'TOOTH WHITENING', 'Teeth whitening involves bleaching teeth to make them lighter. It can lighten the existing color by several shades. Teeth whitening is a form of dentistry and should only be carried out by a dentist or another regulated dental professional, on the prescription of a dentist. The dentist takes an impression of teeth to make a mouth guard and tell the patient how to use it with a bleaching gel. Then, using mouth guard at home, patient regularly apply the gel for a specified period of time over a few weeks. Some whitening gels can be left on for up to 8 hours at a time, which can shorten the treatment period.\r\n\r\nLaser whitening, also known as power whitening, is another type of teeth whitening system that a dentist can provide. A bleaching product is painted onto teeth and then a light or laser is shone on them to activate the whitening. Laser whitening takes about an hour. Teeth whitening isn’t permanent. It can last from a few months to up to 3 years – it varies from person to person. The whitening effect won’t last as long if anyone smokes cigarettes or drinks alcohol, tea or coffee in a regular basis, which can all stain human teeth.\r\n\r\nDental whitening should be done in a regular basis by a skilled dentist to ensure dental health.', 'article/2022/10/7zPPd68dvIFu2CobiwXJndDPhOtGblixsckk0xZs.jpg', '2022-10-07 23:33:27', '2022-10-07 23:33:27'),
(3, 'Prof. Dr. Nasir Uddin', 'TOOTH POLISHING', 'Tooth polishing is a dental technique that is used to keep teeth in good shape. Teeth appear whiter, stain-free, and gleaming as a result of this treatment. This surgery promotes oral health while also improving the appearance of the teeth. Tooth polishing was once considered a standard element of dental prophylaxis. However, it was quickly discovered that overusing this procedure erodes the outermost layer of the tooth structure. Teeth that have lost their outer structure are more susceptible to stains and plaque collection. The protective fluoride coating that surrounds the teeth is also removed with repeated usage of this treatment.\r\n\r\nDentists no longer advocate tooth polishing as a normal dental procedure, and cases are carefully selected before this procedure. Tooth polishing is a process that polishes the teeth while also removing dental stains, plaque, and bacteria that have accumulated on the teeth’s outer surface. The main benefit of tooth polishing over tooth scaling (deep tooth cleaning) is that it is a painless process. In addition, patients immediately notice that their teeth are clean and smooth following the process.\r\n\r\nBoth manual and engine-driven tooth polishing tools are available. Dentists utilize manual polishers to polish the tooth surface manually with their hands, whereas engine-driven polishing tools require hand pieces. Polishing teeth is usually done with the use of a mechanical device and a polishing substance. To reduce abrasion on the tooth surface, proper technique should be used during the operation. When polishing the teeth, use a less abrasive polishing chemical. The dentist should keep a close eye on the pressure, speed of the polishing instrument, and duration of the process.\r\n\r\nTo maintain dental health, tooth polishing should be done on a regular basis by a qualified dentist.', 'article/2022/10/NSlPcNrHkC03BYEfh4VUQfIZ09rc2Q3UzwnQuyY6.jpg', '2022-10-07 23:34:00', '2022-10-07 23:34:00'),
(4, 'Prof. Dr. Nasir Uddin', 'PULP CAPPING', 'Pulp capping is a dental restoration treatment that prevents the dental pulp from necrosis after it has been exposed, or almost exposed, during cavity preparation, a traumatic injury, or a deep cavity that reaches the middle of the tooth, causing the pulp to die. All or most of the diseased and weakened enamel and dentin are removed when dental caries is removed from a tooth. Pulpitis can result if the pulp of the tooth is exposed or almost exposed as a result of this (inflammation).Pulpitis can then become permanent, resulting in discomfort and pulp necrosis, needing root canal therapy or extraction. The ultimate goal of pulp capping, also known as progressive caries reduction, is to preserve a healthy tooth pulp and avoid root canal surgery.\r\n\r\nWhen a dental restoration comes close to the pulp, the dentist will apply a little quantity of sedative dressing, such as calcium hydroxide or MTA, to prevent the pulp from degrading. These components shield the pulp from harmful agents (heat, cold, germs) and encourage the pulp’s cell-rich zone to lay down a dent in bridge. Dentin development normally begins within 30 days post pulp capping and is nearly complete by 130 days.\r\n\r\nThere are two main types of pulp caps. In direct pulp capping, a thin layer of softened dentin is left in place and the protective dressing is placed on top of an exposed pulp; in indirect pulp capping, a thin layer of softened dentin is left in place and the protective dressing is placed on top of an exposed pulp. A direct pulp cap is a one-step operation, whereas stepwise caries removal is a two-step technique that takes roughly six months to complete.', 'article/2022/10/dD7pzuLmNORSwpNSOlcV57foavKX2KyAMW38ofXa.jpg', '2022-10-07 23:34:28', '2022-10-07 23:34:28'),
(5, 'Prof. Dr. Nasir Uddin', 'METALLIC CAP/CROWN (PORCELAIN)', 'A dental crown is a tooth-shaped “cap” that is placed over a tooth, covering it and restoring its shape, size, strength, and/or look. When cemented in place, crowns completely surround the visible area of a tooth above and below the gum line. The following situations may necessitate the use of a dental crown:\r\n\r\nTo prevent a weak tooth from shattering or to hold sections of a broken tooth together.\r\nTo repair a tooth that has already been fractured or significantly worn down.\r\nWhen there isn’t much tooth left, a big filling can be used to cover and support a tooth.\r\nIt can also be used to hold a dental bridge in place.\r\nCovering a dental implant.\r\nTo hide a misshaped or excessively discolored tooth.\r\nPermanent crowns can be made from all metal, porcelain-fused-to-metal, or all ceramic. Gold alloy, other alloys, or a base-metal alloy are among the metals used in crowns. Metal crowns require less tooth structure to be removed than other crown types, and opposing teeth wear is maintained to a minimum. Metal crowns are the most resistant to biting and chewing pressures and are likely to survive the longest in terms of wear. They also don’t chip or break very often. The primary flaw is the shiny color. Metal crowns are a fantastic option for molars that are hidden from view.\r\n\r\nThe color of your dental crowns can be matched to the color of your neighboring teeth (unlike the metallic crowns). However, when compared to metal crowns, this crown type causes more wear to the opposing teeth. The porcelain element of the crown can potentially chip or crack. Porcelain-fused-to-metal crowns, as compared to all-ceramic crowns, look the most natural. However, the metal beneath the crown’s porcelain can occasionally show through as a black line, particularly around the gum line and much more so if your gums recede. These crowns are suitable for both front and back teeth.\r\n\r\nAll-ceramic or all-porcelain dental crowns have the best natural color match of any crown type and may be better for persons who are allergic to metals. They are, however, not as sturdy as porcelain-fused-to-metal crowns, and they wear opposing teeth down a little more than metal crowns. For front teeth, all-ceramic crowns are a viable option.', 'article/2022/10/8O78opvECWKaJpbMTuESOnGgXfYUGqseJ4ffBU76.png', '2022-10-07 23:35:06', '2022-10-07 23:35:06'),
(6, 'Prof. Dr. Nasir Uddin', 'LIGHT CURE FILLING', 'A dental curing light is a piece of dental equipment that helps light-cure resin-based composites polymerize. This light is utilized to polymerize light-cured resin-based composites, which are the white fillings that we place in teeth.  It can be used on a variety of dental materials that are light-curable. The light used belongs to the visible blue spectrum. Light can be used to cure a variety of materials. Tungsten halogen, LED, plasma, and laser lights are all options. The most common types are halogen and LED.\r\n\r\nDentists believe that activating a light-curing equipment cures restorative materials consistently and predictably. When light-curing resin adhesives, resin-based composites, resin cements, and other restorations, numerous aspects must be considered to assure the quality and durability of the restorations being put. Dentists have a variety of light-curing devices to choose from. Despite the fact that all curing lights appear to be appropriate, research has revealed that not all light-curing equipment are created equal! According to recent research, the light probe tip width and orientation have a substantial impact on the degree of light curing in terms of increased physical characteristics and adhesion.\r\n\r\nThe invention of the curing light had a significant impact on dentistry. Different materials had to be utilized prior to the introduction of the dental curing light in order to place a resin-based composite material in a tooth. Prior to this discovery, the material used was a self-curing resin. New light activated resin materials have emerged as a result of the development of this new technology. These new materials are vastly different from the ones that came before them. These ingredients don’t need to be mixed and can be used right away on the job site. Only a dental curing laser can fully cure this innovative bendable resin substance. This provides dentists with new benefits: the time constraint is no longer an issue, and the dentist can ensure that the material is appropriately placed.', 'article/2022/10/9pJqyw0X70V4EGggP0jZea25nqhLLkOBqqbW20lG.jpg', '2022-10-07 23:48:53', '2022-10-07 23:48:53'),
(7, 'Prof. Dr. Nasir Uddin', 'GINGIVECTOMY', 'Gingivectomy is a dental surgery that involves a dentist or oral surgeon removing a portion of the gums in the mouth. The procedure is the total removal of a portion of your gums from in and around a tooth or teeth in order to treat gum disease or to lengthen the height or width of a tooth or a section of teeth.\r\n\r\nA surgical scalpel is typically used to complete procedures, but a low-frequency laser may be used in some cases. The diseased tissue is cut and removed, and the remaining gums are stitched back in place in and around the teeth. The area is then cleaned with saltwater and specific rinses.\r\n\r\nDuring the procedure, a local anesthetic is given to make the patient comfortable. A surgical dressing, or pack, is placed in and around the teeth and gums once the treatment is completed. This dressing should be left on for about a week. The healing process might be aided by swishing with an antimicrobial mouthwash.\r\n\r\nMost patients can return to a normal oral care regimen in less than a month after the procedure. Routine checkups with a dentist ensures that the surgery is a success.', 'article/2022/10/0xdiG81h5DEBMAdAbJGtqDsmjBHxxkAf1W3hLrjl.jpg', '2022-10-07 23:49:32', '2022-10-07 23:49:32'),
(8, 'Prof. Dr. Nasir Uddin', 'OPERCULECTOMY', 'Operculectomy is the surgical procedure of removing the operculum, or the flap of gum that partially covers a tooth. Pericoronitis, a dental condition characterized by pain and inflammation of the operculum, is treated with this technique.\r\n\r\nPericoronitis is most common in young adults, particularly those whose wisdom teeth are beginning to erupt.\r\n\r\nOn a partially erupted tooth, the dental operculum is a mass of soft tissue. Its most often connected with lower wisdom teeth, but it can also cover permanent molars and certain infant teeth. When a tooth begins to emerge and peek through the gum tissue, it is immediately noticeable. The gum tissue recedes as the tooth erupts and moves into its natural location in typical circumstances.\r\n\r\nThere should be no gum tissue flap on the chewing surface of a fully erupted tooth. In the case of lower wisdom teeth, there is usually little to no room for them to properly erupt and emerge from the gum line.\r\n\r\nAs a result, the operculum above the wisdom teeth does not entirely retreat, and the impacted tooth may be permanently covered. Oral health problems are occasionally caused by the presence of operculum. There’s a higher probability of biting the operculum or the cheek tissue that’s nearby. Because it is difficult to clean the area beneath the gums, tooth decay is another possibility. Even if you follow good dental hygiene, this problem can develop. The higher molars may also exert pressure on the lower teeth, causing discomfort.\r\n\r\nOperculectomy is appropriate for patients who have acute pericoronitis or operculitis. This illness is marked by a sudden onset of operculum inflammation, which causes pain and discomfort. Swelling of the gum tissue, fever, and pus buildup in the affected area are all symptoms of acute pericoronitis. Other systemic problems, such as swollen lymph nodes, weakness, and general malaise, might occur if the condition is not addressed. The discomfort may spread to other regions of the face, including the ear, jaw, and mouth floor. It might also cause throat discomfort. In severe cases of acute pericoronitis, the patient may be unable to chew food or even open their mouth, making it impossible to eat. Operculectomy is a reasonably straightforward and safe treatment with a high percentage of success. In most cases, patients get instant pain and discomfort relief. Further plaque or tartar buildup is also prevented. It will also be easier for patients to maintain this area of the mouth clean. If the tooth is not impacted, the operculum will be removed, allowing it to fully erupt.', 'article/2022/10/S2CJt3ylIS3lORRAYs4NpoOc4Kmj3eEXfCb1O3GE.jpg', '2022-10-07 23:50:21', '2022-10-07 23:50:21'),
(9, 'Prof. Dr. Nasir Uddin', 'স্কেলিং সম্পর্কে ৬ টি প্রচলিত ভুল ধারণা', 'দাঁত নিয়ে মানুষের চিন্তার শেষ নাই। আর এই দাঁত নিয়ে মানুষের চিন্তা আর বেড়ে যায় ঠিকমতো দাঁত পরিষ্কার না করলে বা ঠিক সময় স্কেলিং না করলে। বিশেষ করে দাঁতের স্কেলিং করা নিয়ে অনেকেই সঠিক নিয়ম জানেন না কিংবা বিষয়টি হেলায় ফেলায় দেখেন এবং প্রচলিত অনেক গুজব আমলে নিয়ে দাঁতের স্কেলিং করা থেকে বিরত থাকেন। একটা সময় এই পরিণাম ভোগ করতে হয়। ব্রাশ করার পরেও অবশিষ্ট খাদ্য কনা / ডেন্টাল প্লাক জমতে থাকে। সময়ের সাথে ডেন্টাল প্লাক ডেন্টাল ক্যালকুলাস বা পাথরে এ রূপান্তর হয়।এই পাথর দাঁতের গোড়া থেকে সরানোর জন্য দরকার ডেন্টাল স্কেলিং।\r\n\r\n \r\n\r\nস্কেলিং কি?\r\n\r\nদাঁত ও মাড়ির মাঝে অনেক খাবার আটকে থাকে। নিয়মিত ব্রাশ করলে সেটা চলেও যায়। কিন্তু যদি এই সামান্য খাবারের অংশ লেগে থাকা অবস্থায় ব্রাশ না করা হয়, তাহলে সেটা কিছুটা শক্ত হয়ে যায়। একে বলে প্লাক। এই কিছুটা শক্ত হয়ে যাওয়া প্লাকের কিছু অংশ পরে ব্রাশের সঙ্গে উঠতে চায় না। আর প্রত্যেকবার এ রকম একটু একটু প্লাক জমে শক্ত হয়ে তৈরি হয় ক্যালকুলাস বা পাথর। ক্যালকুলাসকে পরিষ্কার করার প্রসেসের নামই হলো স্কেলিং। এটি সাধারণত আল্ট্রাসনিক মেশিনে করা হয়।\r\n\r\n \r\n\r\n দাঁতের স্কেলিং নিয়ে প্রচলিত ৬ টি ভুল ধারণা\r\n\r\n১/ বছরে একবার বা দুবার স্কেলিং করতে হয়: এটি ভুল ধারণা। স্কেলিং একমাত্র চিকিৎসকের পরামর্শ মোতাবেক করতে হবে। অনেক ভালো ওরাল হাইজিন মেনটেইন করেন এমন ব্যক্তির সাধারণত অনেক বছর পর স্কেলিং করা লাগে। আর যিনি ওরাল হাইজিনের প্রতি উদাসীন, তার স্কেলিংয়ের প্রয়োজন হবে বেশি। সহজ কথায়, চিকিৎসক যদি প্রয়োজন মনে করেন তবেই স্কেলিংয়ের জন্য বলেন। নিয়মিত ইন্টারভেলে স্কেলিং করানোর প্রয়োজন নেই।\r\n\r\n২/ স্কেলিং করলে দাঁত ফাঁকা হয়ে যায়: এটিও ভুল ধারণা। আসলে যখন ক্যালকুলাস সরে যায়, তখন ক্যালকুলাসের দরুন দাঁত থেকে আলাদা হয়ে যাওয়া মাড়ি আবার স্বাভাবিক জাগায় আসতে কয়েক দিন সময় লাগে। এ সময় ওই জায়গাগুলো জিহ্বায় ফাঁকা ফাঁকা মনে হয় এবং ঠান্ডা পানিতে দাঁত শিরশির করে। কয়েক দিন পরই যখন মাড়ি স্বাভাবিক জায়গায় চলে আসে, তখন এই দাঁত ফাঁকা হয়ে যাওয়ার অনুভূতি ঠিক হয়ে যায়।\r\n\r\n৩/ স্কেলিং করলে দাঁতের ক্ষতি হয়: স্কেলার মেশিনের মূল মেকানিজম হলো আল্ট্রাসনিক ভাইব্রেশন এবং স্কেলিং করার কিছু স্পেসিফিক নিয়ম আছে। এসব নিয়ম না মেনে স্কেলিং করলে দাঁতের ক্ষতি হতে পারে।\r\n\r\n৪/ স্কেলিংয়ে ব্যথা পাওয়া যায়: এটা আরেকটি ভুল ধারণা। স্কেলারের ভাইব্রেশনের জন্য স্কেলিংয়ের সময় শিরশির অনুভূতি হয়। তবে হ্যাঁ, ক্যালকুলাসের পরিমাণ যদি খুব বেশি হয় তবে স্কেলিংয়ের সময় বেশি শিরশির করতে পারে। তাই সময়মতো স্কেলিং করানো উচিত। সমস্যা দেখা দিলেই বা অন্তত বছরে একবার ডেন্টিস্টের কাছে চেকআপ করানো উচিত।\r\n\r\n৫/ স্কেলিং করার কারণে দাঁত পাতলা হয়ে যায়: আসলে স্কেলিং করার পর পাথর যখন অপসারিত হয় তখন সব রোগীই মুখে সজীবতা অনুভব করেন আবার পাথর থাকার কারণে মুখে যে ভারি ভারি ভাব থাকত তা চলে গিয়ে রোগী হালকা অনুভব করতে থাকেন। এই অনুভূতিকেই অনেক রোগী বলে থাকেন তাঁর দাঁত পাতলা হয়ে গেছে।\r\n\r\n৬/ স্কেলিং করার ফলে দাঁতের এনামেলের ক্ষতি হয়: স্কেলিং এর সময় দাঁতের উপরের থাকা দাগ, দাঁতের মাঝে জমে থাকা পাথর গুলো বিশেষ আলট্রাসাউন্ড যন্ত্রের মাধ্যমে পরিষ্কার করা হয়।সুতরাং এনামেলের ক্ষতির কোন প্রশ্নই আসে না।\r\n\r\n \r\n\r\nদাঁতের সুস্বাস্থ্য নিশ্চিত করতে চাইলে স্কেলিং এর কোন বিকল্প নেই। এবং দাঁতের স্কেলিং করাতে হলে অবশ্যই একজন দক্ষ ডেন্টিস্টের শরণাপন্ন হতে হবে।  দাঁতে কোন অসুবিধা বোধ করলে অবহেলা না করে দ্রুত একজন বিশেষজ্ঞ চিকিৎসকের পরামর্শ নিন', 'article/2022/10/dC4BPROgid3SqOdALpudHXGfUGm4zNuh5ESpsevO.jpg', '2022-10-07 23:51:02', '2022-10-07 23:51:02'),
(10, 'Prof. Dr. Nasir Uddin', 'দাঁত উত্তোলন', 'চিকিৎসাবিজ্ঞানের উন্নতির সাথে সাথে বিভিন্ন রোগে দ্রুত সময়মতো চিকিৎসা নিলে দাঁত ফেলে দেওয়ার আর দরকার পড়ে না। তবুও অনেক সময় একজন দন্ত বিশেষজ্ঞ কে রোগীর দাঁত ফেলার সিদ্ধান্ত নিতে হয় সংরক্ষণের কোনো উপায় না থাকার কারণে।\r\n\r\n \r\n\r\nযে ৭ টি কারনে দাঁত ফেলে দিতে হয় :\r\n\r\n১. আক্কেল দাঁত উঠলে: অপেক্ষাকৃত দেরিতে ওঠে বলে মাড়ির সর্বশেষ দাঁতগুলোকে ওইজডম টুথ বা আক্কেল দাঁত বলা হয়। বেশির ভাগ ক্ষেত্রে মাড়ি শক্ত ও দাঁতটি বাঁকা হয়ে ওঠার কারণে এই দাঁতের জায়গায় ব্যথা হয়। মাড়িতে বড় গর্ত হয়ে যায়, অনেক সময় পাশের দাঁতও ক্ষতিগ্রস্ত হয়। অবস্থানগত কারণে বেশির ভাগ সময় এই দাঁতগুলো ফেলে দেওয়ার সিদ্ধান্ত নিতে হয়।\r\n\r\n২. দাঁত ক্ষতিগ্রস্ত হলে: প্রতিটি দাঁত চোয়ালের হাড় ও মাড়ির মাধ্যমে শক্তভাবে নিজ স্থানে আটকে থাকে। দীর্ঘমেয়াদি মাড়ির রোগ বা দাঁতের সংক্রমণ, দুর্ঘটনা, ডেন্টাল ফ্লসের পরিবর্তে টুথপিক বা ধাতব কাঠির অতিরিক্ত ব্যবহার, ক্যালসিয়ামের অভাব ও হাড় ক্ষয়, অটোইমিউন রোগ বা অন্য কোনো কারণে দাঁতের ভিত দুর্বল হয়ে অতিরিক্ত মাত্রায় নড়ে গেলে দাঁত ফেলে দিতে হয়।\r\n\r\n৩. রুট ক্যানেল চিকিৎসা অসমাপ্ত থাকলে: দাঁতের ভেতরের মজ্জা সংক্রমিত হলে রুট ক্যানেল চিকিৎসার প্রয়োজন পড়ে। এটি সময়সাপেক্ষ, জটিল ও অপেক্ষাকৃত ব্যয়বহুল। তবে এ চিকিৎসার পর ব্যথা কমে গেলে কেউ কেউ চিকিৎসাটি সম্পূর্ণ করেন না। এতে পরে দাঁতটি এমনভাবে ভাঙতে পারে যে আর তা সংরক্ষণ করার উপায় থাকে না।\r\n\r\n৪. অর্থোডন্টিক চিকিৎসা: আঁকাবাঁকা বা এলোমেলো দাঁতের চিকিৎসায় অর্থোডন্টিক চিকিৎসা এখন জনপ্রিয় ও নিরাপদ। যদি পর্যাপ্ত পরিমান জায়গা না থাকে আঁকাবাঁকা বা এলোমেলো দাঁতের চিকিৎসায়, সেক্ষেত্রে দাঁত উত্তোলন এর প্রয়োজন হতে পারে।\r\n\r\n৫. দীর্ঘদিন অবহেলা করলে: দীর্ঘদিন দাঁতের ব্যথা থাকা সত্ত্বেও চিকিৎসা না নেওয়া অথবা চিকিৎসকের পরামর্শ ছাড়া ওষুধ সেবনে দাঁত ক্রমান্বয়ে ভেঙে যেতে পারে এবং বড় ধরনের ক্ষতি হতে পারে। এ ক্ষেত্রে দাঁত সংরক্ষণ কষ্টসাধ্য।\r\n\r\n৬. দাঁতের সিস্ট এর কারনে: দাঁতের গোড়ায় সিস্ট হলে এবং তা বড় আকার ধারন করলে অনেক সময় দাঁত উত্তোলন করার প্রয়োজন হতে পারে। চোয়ালের ভেতরে সিস্ট হলে চোয়ালের হাড় ক্ষয় হয়ে যায় সংক্রমিত হলে বড় হতে থাকে, লাল রং ধারণ করে এবং প্রচণ্ড ব্যথা থাকে। অনেক সময় সিস্টের ভেতর থাকা পুঁজ বের হতে থাকে, সেক্ষেত্রে দাঁত উত্তোলন অনেকটা বাধ্যতামূলক হয়ে যায়। যদি সঠিক সময়ে এটা ধরা না পড়ে, তবে হতে পারে তীব্র যন্ত্রণা বা ব্যথা কিংবা এর থেকেও জটিল কিছু ।\r\n\r\n৭. অন্যান্য কারণ: দাঁতের কাছাকাছি টিউমার, ক্যানসার বা চোয়ালের হাড় ভেঙে গেলে অথবা দুর্ঘটনায় বা ক্যারিজ থেকে দাঁতের শিকড় ক্ষতিগ্রস্ত হলে দাঁত ফেলতে হবে।\r\n\r\nদাঁতের বর্তমান অবস্থা বিবেচনায় দাঁত উত্তোলনের প্রয়োজন রয়েছে কি না তা নির্ধারণ করা হয়। সঠিক পদ্ধতিতে দাঁত উত্তোলন করলে পরবর্তীতে রোগীকে ভোগান্তি পোহাতে হয় না। দাঁতে কোন অসুবিধা বোধ করলে অবহেলা না করে দ্রুত একজন বিশেষজ্ঞ চিকিৎসকের পরামর্শ নিন।', 'article/2022/10/3JMQq2hljIR847eoAEUUxIPimremj0NFA5OL7hzw.jpg', '2022-10-07 23:51:35', '2022-10-07 23:51:35'),
(11, 'Prof. Dr. Nasir Uddin', 'মুখের ক্যান্সার এর ৬ টি লক্ষণ', 'ক্যান্সার নানান ধরণের হয়। ক্যান্সারের নাম আমরা এটি কোন জায়গায় হয় তার ওপর ভিত্তি করে রাখি। যেমন মুখের ভিতর ক্যান্সার হলে আমরা একে মুখ ক্যান্সার বা মৌখিক ক্যান্সার বলে থাকি। যদি মুখের ক্যান্সার প্রাথমিক অবস্থায় ধরে পড়ে তাহলে খুব সহজেই এর চিকিৎসা করা যায়। কিন্তু প্রথমিক অবস্থায় এটা তখনই ধরা পরবে যখন মানুষ এর সম্বন্ধে জানবে এবং এর লক্ষণ গুলি ঠিক করে বুঝতে পারবে। চলুন দেখে নেই মুখের ক্যানসারের গুরুত্বপূর্ণ ৬ টি লক্ষণ কখনোই এড়িয়ে যাওয়া উচিত নয়।\r\n\r\n১/ মুখে ক্ষত\r\n\r\nঅধিকাংশ ক্ষেত্রে মুখের ক্ষত ভাইরাস দ্বারা সৃষ্ট ক্যানসার ক্ষত বা ফোঁড়ার মতো  হয়ে থাকে। এসব ক্ষত সাধারণত দশ দিনের মধ্যে সেরে ওঠে, কিন্তু কোনো ক্ষত দুই সপ্তাহ বা তারও বেশি সময় লেগে থাকলে তা দুশ্চিন্তা করার মতো লক্ষণ হতে পারে। ক্ষতের গঠনবিন্যাসও আপনাকে ধারনা দিতে পারে যে এটি ওরাল ক্যানসার বা মুখের ক্যানসার।\r\n\r\n২/ জিহ্বা ব্যথা\r\n\r\nআপনার জিহ্বার ক্ষত বা ফুলে যাওয়ার ব্যথা স্বাভাবিক মাত্রা ছাড়িয়ে যেতে পারে। জিহ্বা অতিমাত্রায় সেনসিটিভ বা সংবেদনশীল হয়ে যেতে পারে। সেনসিটিভিটির ক্ষেত্রে এটি ফিঙ্গারটিপের মতোই।\r\n\r\n৩/ মুখে অসাড়তা\r\n\r\nযদি মুখ ক্যানসারের টিউমার আপনার মুখের স্নায়ুকে আঘাত করার মতো যথেষ্ট বড় হয়, আপনি মুখের কোনো স্থানে অসাড়তা লক্ষ্য করতে পারেন। যদিও এ অসাড়তা অন্য কোথাও প্রসারিত হবে না। টিউমার ঐ জায়গায় ছড়ানোর পূর্বে আপনি সম্ভবত মাসের পর মাস টিউমার থেকে ব্যথা অনুভব করে থাকবেন।\r\n\r\n৪/ কর্কশ কন্ঠ\r\n\r\nহ্যাঁ, স্মোকারদের মধ্যে মুখে ক্যানসার হওয়ার সম্ভাবনা সবচেয়ে বেশি, যাদের কণ্ঠস্বর বছরের পর বছর ধীরে ধীরে পরিবর্তন হয়। যদি আপনার কণ্ঠস্বর হঠাৎ করে কর্কশ হয়ে যায় এবং এ কর্কশ কন্ঠ দুই সপ্তাহ বা তারও অধিক সময় ধরে থাকে, এটি মুখ ক্যানসারের একটি লক্ষণ হতে পারে যা আপনার কণ্ঠস্বরকে প্রভাবিত করছে।\r\n\r\n৫/স্পষ্টভাবে শব্দ উচ্চারণে সমস্যা\r\n\r\nমুখের ক্যানসার জিহ্বার ক্ষতি করে, যে কারণে কথা বলা কষ্টকর হতে পারে অথবা জিহ্বা নাড়ানো কঠিন হতে পারে। এসবের যেকোনো একটি ঘটলে আপনি লক্ষ্য করতে পারেন যে স্পষ্টভাবে শব্দ উচ্চারণে আপনার সমস্যা হচ্ছে যা পূর্বে হতো না।\r\n\r\n৬/ চোয়াল ব্যথা\r\n\r\nমুখে ক্যানসার হলে আপনার মুখ খোলার সময় চোয়াল ব্যথাদায়ক হতে পারে। আপনার চোয়ালের মাংসপেশি সংকুচিত হয়ে যেতে পারে, যে কারণে দাঁতের সঙ্গে দাঁত লেগে যাবে এবং মুখ খোলা কঠিন হবে। যখন আপনি মুখ খুলবেন ব্যথা আরো বেড়ে যাবে।\r\n\r\nউপরে বর্ণিত উপসর্গ সমূহ দেখা দিলে দেরি না করে বিশেষজ্ঞ চিকিৎসকের শরণাপন্ন হউন এবং সুস্থ-স্বাভাবিক জীবনযাপন নিশ্চিত করুন।', 'article/2022/10/CCcivAg5b1eXrV6fWWIiYuhlpEOldy6IEAJhTcqj.jpg', '2022-10-07 23:52:32', '2022-10-07 23:52:32'),
(12, 'Prof. Dr. Nasir Uddin', 'দাঁত সাদা করার কার্যকরী ৩ পদ্ধতি', 'মুখের সৌন্দর্য অনেকটা নির্ভর করে আমাদের দাঁতের ওপর। দাঁতের স্বাভাবিক রং পরিবর্তিত হলে তা অবশ্যই আমাদের বাহ্যিক সৌন্দর্যেও প্রভাব ফেলে। নিজেকে সুন্দর করে তুলে ধরতে ঝকঝকে দাঁতের মুক্তোঝরা হাসিই যথেষ্ট। দাঁতের রঙের পরিবর্তন দেখতে খারাপ লাগে। অনেকে তখন হাসতেও সংকোচবোধ করেন। দাঁত থাকতে দাঁতের মর্যাদা না বুঝলে পরে বিপদে পড়তে হয় এই কথা সবাই জানেন। দাঁত সুস্থ, সবল, পরিষ্কার ও উজ্জ্বল করতে যখন প্রাকৃতিক কিংবা ঘরোয়া পদ্ধতি কাজে না দেয় তখন হলুদ কিংবা কালচে দাঁত সাদা করতে চাইলে ডেন্টিস্ট এর শরণাপন্ন হতে হয়।\r\n\r\n \r\n\r\nদাঁত হলুদ হওয়ার কারণগুলো কি কি?\r\n\r\n১. অনেকসময় জিনগত কারণে দাঁত হলুদ দেখায়। যদি আপনার বাবা-মায়ের দাঁত হলুদ থাকে তাহলে আপনার দাঁতের হলদেটে ভাবও দূর করা মুশকিল। আবার ঠিক করে দাঁত না মাজলে কিংবা পানিতে ফ্লুরাইডের পরিমাণ বেশি থাকলেও দাঁত হলুদ হতে পারে।\r\n\r\n২. ঘন ঘন চা খেলে দাঁত তার স্বাভাবিক রঙ হারিয়ে ফেলে। তখন দাঁত হলদেটে দেখায়।\r\n\r\n৩. ভিটামিন সি সমৃদ্ধ ফল বেশি খেলে দাঁতের রঙ নষ্ট হয়ে যায়।\r\n\r\n৪. অতিরিক্ত মিষ্টি খেলেও দাঁত হলুদ হতে পারে। কারণ মিষ্টি শুধু ক্যাভিটি সৃষ্টি করে না, দাঁতের এনামেলও নষ্ট করে দেয়। তখন দাঁতে হলদেটে ভাব দেখা যায়।\r\n\r\n৫. অনেকেই মনে করেন দিনে একবার ব্রাশ করাই যথেষ্ট। কিন্তু রাতে ব্রাশ না করলে দাঁতের স্বাস্থ্য নষ্ট হয়।সেই সঙ্গে দাঁতও হলুদ দেখায়।\r\n\r\n৬. অতিরিক্ত সফট ড্রিংক দাঁতের ক্ষতি করে।\r\n\r\n৭. অতিরিক্ত ধূমপানে দাঁতের ক্ষয় হয়। সেই সঙ্গে দাঁতে হলদেটে ভাবও দেখা দেয়।\r\n\r\n \r\n\r\nদাঁত সাদা করার কার্যকরী ৩ চিকিৎসা পদ্ধতি\r\n\r\n১/ ডেন্টাল ক্রাউন : সিগারেট কিংবা পান বা অন্যান্য বস্তু গ্রহণের ফলে দাঁতের রং পরিবর্তিত হয়ে থাকলে একজন দন্তচিকিৎসকের কাছে গিয়ে স্কেলিং ও পলিশ করে দাঁতগুলো আবার ঝকঝকে করে নিতে পারেন। ওষুধজনিত কারণে দাঁতের রং পরিবর্তিত হয়ে থাকলে দাঁতে ভিনিয়ার কিংবা ক্রাউন করে সুন্দর ঝকঝকে করা যায়।\r\n\r\n২/ টুথ ব্লিচিং : দন্তমজ্জা নষ্ট হওয়া দাঁত কিংবা আঘাতজনিত কারণে দন্তমজ্জা নষ্ট হয়েছে ও পরে রুট ক্যানেল করা হয়েছে কিংবা রুট ক্যানেলের ফলে দাঁতের রং পরিবর্তন হয়েছে, সেসব ক্ষেত্রে ‘টুথ ব্লিচিং’-এর মাধ্যমে দাঁত সাদা করা যায়।\r\n\r\n৩/ লাইট কিউর ফিলিং : যদি দাঁতের ব্লিচিং পদ্ধতি সম্ভব না হয়, তবে লাইট কিউর ফিলিং বা কালার ম্যাচিং ফিলিংয়ের মাধ্যমেও দাঁত সাদা করা যায়। কালার ম্যাচিং ফিলিং ডেন্টাল সায়েন্সে দাঁত সাদা করার সবচেয়ে আধুনিক চিকিৎসা। এটা আগে উন্নত বিশ্বে থাকলেও বর্তমানে বাংলাদেশে এই পদ্ধতিতে দাঁত সাদা করা যাচ্ছে।\r\n\r\nদাঁতে কোন প্রকার অসুবিধা বোধ করলে অবহেলা না করে দ্রুত একজন বিশেষজ্ঞ চিকিৎসকের পরামর্শ নিন এবং দাঁতের সুস্বাস্থ্য নিশ্চিত করুন।', 'article/2022/10/hXEH2Qh9DUSVeVK7TIenVqGcmXMGSGVeLUCYXYqo.jpg', '2022-10-07 23:53:17', '2022-10-07 23:53:17'),
(13, 'Prof. Dr. Nasir Uddin', 'ওরাল সার্জারি', 'ওরাল ও ম্যাক্সিলোফেসিয়াল সার্জারী, চিকিৎসা বিজ্ঞানের একটি গুরুত্বপূর্ণ শাখা। বর্তমানে চিকিৎসা বিজ্ঞানের এই শাখায় প্রভূত পরিবর্তন ও উন্নতি এসেছে । উন্নত চিকিৎসাপন্থায় বিশেষজ্ঞ ডাক্তারের পর্যবেক্ষণে ওরাল সার্জারীর মাধ্যমে জটিল সমস্য়ার সমাধান করা সম্ভব । ওরাল সার্জারি বলতে বোঝায় দাঁত, মাড়ি, চোয়াল, জিব, তালু ও  মুখমন্ডলের  অন্যান্য অংশের অপারেশন করার পদ্ধতি। এর মধ্যে রয়েছে\r\n\r\nমুখমন্ডলের ক্যান্সার, টিউমার, সিস্ট, ঘা প্রভৃতির অপারেশন ও চিকিৎসা\r\nক্যান্সার বা টিউমার জনিত মুখ মন্ডলের বিকৃতি পূনর্ঘটন (Reconstruction)সার্জারী\r\nদূর্ঘটনাজনিত মুখ মন্ডলের দাঁত ও চোয়াল এবং অন্যান্য হাঁড়ভাঙ্গা অপারেশন ও চিকিৎসা\r\nইমপ্লান্ট পদ্ধতিতে হারানো দাঁতের পুনঃস্থাপন\r\nদাঁত ও মুখ মন্ডলের যে কোন গুরুতর ইনফেকশন এর চিকিৎসা ও অপারেশন।\r\nজন্মগত ঠোঁট কাটা ও তালু কাটা অপারেশন।\r\nমুখ ও চোয়ালের জন্মগত বিকৃতি বা অসামঞ্জস্যতার অপারেশন ও চিকিৎসা\r\nচোয়ালের জয়েন্ট সমস্যার চিকিৎসা ও অপারেশন।\r\nআক্কেল দাঁত ও অন্যান্য জটিল দাঁতের অপারেশন\r\nদাঁত ও মুখের যেকোনো সমস্যার স্থায়ী চিকিৎসার জন্য ওরাল ও ম্যাক্সিলোফেসিয়াল সার্জনের পরামর্শ গ্রহণ করুন।', 'article/2022/10/WAi9gy002aNZGVCed81s79gOnnxLxoOd0s4rqAOn.png', '2022-10-07 23:53:55', '2022-10-07 23:53:55'),
(14, 'Prof. Dr. Nasir Uddin', 'মুখমন্ডলের আঘাতের চিকিৎসা', 'সড়ক দুর্ঘটনা বর্তমানে বেশ উদ্বেগজনক একটি সমস্যা যা খুব ঘন ঘন হচ্ছে। সড়ক দুর্ঘটনার কারণে অনেকে অকালে প্রাণ হারাচ্ছেন আবার অনেকে আঘাতপ্রাপ্ত হয়ে দীর্ঘদিন ধরে নানান জতিলতায় ভুগছেন। যেহেতু মুখের হাড় সামনে থাকে তাই সড়ক দুর্ঘটনায় সবচেয়ে বেশি আঘাত পাওয়ার প্রবণতা থাকে মুখের হাড়ে । মুখের হাড়ে প্রবলভাবে আঘাত পেলে হাড় অনেক সময় ভেঙে যেতে পারে। চোখ থেকে শুরু করে কপাল, নাক, নিচের চোয়াল, ওপরের চোয়ালের হাড় ভেঙে যেতে পারে দুর্ঘটনায়। শুধু সড়ক দুর্ঘটনাতেই নয়, আরও অনেক কারণে আঘাতপ্রাপ্ত হয়ে মুখের হাড় ক্ষতিগ্রস্ত হতে পারে। বাচ্চারা অনেকসময় খেলতে গিয়েও মুখের হাড়ে আঘাত পায়।\r\n\r\n \r\n\r\nএই ধরনের সমস্যার চিকিৎসার জন্য বেশিরভাগ সময়েই দ্রুত সার্জারির প্রয়োজন হয়। অতি দ্রুত সঠিক চিকিৎসা নিশ্চিত করতে না পারলে মুখের হাড়ের অসমতা, ইনফেকশন এমনকি মস্তিষ্কে জটিলতা দেখা দিতে পারে। সঠিক সময়ে এবং সঠিক পদ্ধতিতে চিকিৎসা করলে মুখের হাড়কে পূর্বের ন্যায় করে তোলা সম্ভব। এই ধরনের রোগীর সঠিক চিকিৎসা সেবা নিশ্চিত করতে পারেন একজন ম্যাক্সিলোফেসিয়াল সার্জন। কেবলমাত্র একজন ম্যাক্সিলোফেসিয়াল সার্জনই দাঁত সম্পর্কে এবং মুখের হাড় সম্পর্কে সঠিক ধারণা রাখেন। দাঁতের সাথে  মিলিয়ে মুখের হাড়ের চিকিৎসা না করলে পরিপূর্ণ চিকিৎসা হয় না এবং ভবিষ্যতে এর দীর্ঘমেয়াদি নেতিবাচক প্রভাব পরিলক্ষিত হতে পারে এমনকি রোগীর খাবার খেতে অসুবিধা হতে পারে এবং জয়েন্টে ব্যথা হতে পারে।\r\n\r\n \r\n\r\nমুখের হাড়ে আঘাত জনিত সমস্যার সম্মুখিন হলে দেরি না করে অতি দ্রুত একজন অভিজ্ঞ ম্যাক্সিলোফেসিয়াল সার্জন এর শরণাপন্ন হউন।', 'article/2022/10/5XeldTXdFHaz4u9dKBIvRuJpHppVs7B6eSqG2qvU.png', '2022-10-07 23:55:00', '2022-10-07 23:55:00'),
(15, 'Prof. Dr. Nasir Uddin', 'ডেন্টাল ইমপ্লান্ট', 'দাঁত মানুষের শরীরের এমন একটি অঙ্গ যার সুস্থতার সাথে শরীরের অন্যান্য অঙ্গসমুহের সুস্থতা জড়িত। এই দাঁত নিয়েই অনেককে নানান রকম ভোগান্তিতে পড়তে হয়। বিভিন্ন কারণে অনেকের দাঁত সম্পূর্ণ পড়ে যায়।\r\n\r\n\r\nঅনেকের অর্ধেক ভেঙে যায় দুর্ঘটনায় আবার অনেকে বিভিন্ন জতিলতার কারণে দাঁত ফেলে দেন। যার ফলে চিবিয়ে খাওয়া যায় না, খাওয়ার আনন্দও পাওয়া যায় না। আবার বার্ধক্য জনিত কারনেও দাঁত পড়ে যেতে পারে। দাঁত পড়ে যাওয়ার চিকিৎসায় কিছুদিন আগেও প্রচলিত একটি পদ্ধতি ছিল রিমুভেবল প্রোসথেসিস পদ্ধতি। এটি হলো, প্লেটে দাঁত লাগিয়ে মুখের মধ্যে প্রতিস্থাপন করা। মুখের ভেতর অন্য একটি বস্তু রাখা যে কারো জন্যই বেশ অস্বস্তিকর। এর আবার অনেক যত্নও করতে হয়। এটি সনাতন পদ্ধতি ছিল। এই পদ্ধতির পর আবিষ্কৃত হল ফিক্সড প্রসথোডনটিক্স পদ্ধতি। এই পদ্ধতিতে যে দাঁতটি পড়ে গেছে সেটিকে পাশের দাঁতের সঙ্গে যুক্ত করা হতো। এটি হলো, ডেন্টাল ব্রিজ তৈরি করা। এতে যে সমস্যা হতো তা হলো, পাশের দাঁত কেটে সেখানে ক্যাপ করে ডেন্টাল ব্রিজ করা হতো। পাশের ভালো দাঁত দুটোকে কাটার প্রয়োজন পড়তো।\r\n\r\nঅধ্যাপক ডাঃ নাসির উদ্দিন দীর্ঘদিন যাবত ডেন্টাল ইমপ্ল্যান্ট পদ্ধতির মাধ্যমে অসংখ্য রোগীর দাঁতের চিকিৎসা করে আসছেন। বাংলাদেশে ডেন্টাল ইমপ্ল্যান্ট পদ্ধতির অন্যতম এই পথিকৃৎ দাঁতের অন্যান্য রোগের চিকিৎসার পাশাপাশি দাঁত প্রতিস্থাপন বিষয়ে দেশে ও বিদেশে দীর্ঘদিন যাবত গবেষণা করে যাচ্ছেন এবং দাঁত প্রতিস্থাপনের বিষয়ে সর্বাধুনিক প্রযুক্তি ব্যবহার করে তুলনামূলক কম খরচে চিকিৎসা সেবা নিশ্চিত করে যাচ্ছেন। দাঁত নিয়ে উপরিউক্ত সমস্যাগুলোর কোন একটির সম্মুখিন হলে সময় নষ্ট না করে অতি দ্রুত বিশেষজ্ঞ ডেন্টাল ইমপ্ল্যান্ট সার্জনের পরামর্শ নিন এবং সুস্থ থাকুন।', 'article/2022/10/6Vpxu6ojwAENQwOcJKTYwQsAAzIfcoUGe8MI6fSw.jpg', '2022-10-07 23:55:31', '2022-10-07 23:55:31'),
(16, 'Prof. Dr. Nasir Uddin', 'ডেন্টাল চিকিৎসা', 'অনেকেই দাঁতের সমস্যাকে গুরুত্ব দেন না এবং দাঁতের সমস্যাগুলোকে ক্ষণস্থায়ী মনে করেন। কিন্তু সঠিক সময়ে চিকিৎসা না হলে সমস্যাগুলো ভবিষ্যতে গুরুতর আকার ধারণ করতে পারে। দাঁত এবং মুখের ভেতর নানা সমস্যা হতে পারে, যার মধ্যে দন্তক্ষয় বা ডেন্টাল ক্যারিজ, মাড়ির রোগ বা পেরিওডেন্টাল ডিজিজ, মুখের ক্ষত বা ঘা, আঁকাবাঁকা দাঁত, মুখের ক্যান্সার ইত্যাদি। এসব রোগ পরীক্ষার মাধ্যমে শনাক্ত করে সঠিক চিকিৎসা করলে বেশির ভাগ রোগীই ভালো হয়ে যায়। দাঁত কিংবা মুখের ভেতরের রোগসমূহের চিকিৎসা করতে পারেন কেবলমাত্র একজন ডেন্টিস্ট। একজন ডেন্টিস্ট রোগীর দাঁত, মাড়ি, চোয়াল ও মুখের ক্ষয় এবং অন্যান্য রোগ নির্ণয় ও নিরাময়ের জন্য পরামর্শ, পরীক্ষা, অস্ত্রোপচার ও খাদ্যতালিকা তৈরির কাজ করে থাকেন।\r\n\r\n \r\n\r\nদাঁতের চিকিৎসা অনেক ব্যয়বহুল মনে করে অনেকে চিকিৎসা নেয়া থেকে বিরত থাকেন। আবার অনেকে নিকটস্থ ফার্মেসি থেকে ব্যথানাশক ওষুধ খেয়ে রোগটিকে বয়ে বেড়ান। এতে দাঁতের দীর্ঘমেয়াদি ক্ষতি হয়ে যায়। সঠিক সময়ে একজন অভিজ্ঞ ডেন্টিস্টের শরণাপন্ন হলে দাঁত এবং মুখের রোগগুলোর থেকে সহজেই মুক্তি মেলে।\r\n\r\n \r\n\r\nআপনার দাঁতের সমস্যাকে অবহেলা না করে বিশেষজ্ঞ চিকিৎসকের পরামর্শ নিন এবং আপনার দাঁতের সুস্বাস্থ্য নিশ্চিত করুন।', 'article/2022/10/BYocKWeg83gLPX5RURFNdTsCmcK4Iz1izNsLLW0T.jpg', '2022-10-07 23:56:19', '2022-10-07 23:56:19'),
(17, 'Prof. Dr. Nasir Uddin', 'মুখের টিউমার অপারেশন', 'শরীরের অন্যান্য অংশের মত মুখেও টিউমার হতে পারে। মুখের হাড়, নরম টিস্যু যেমন জিহ্বা, কিছু লালা গ্রন্থি- এসব বিভিন্ন স্থানে টিউমার হতে পারে। চোয়ালের টিউমার এর মধ্যে অন্যতম। কিছু টিউমার অনেকদিন ধরে থাকে, আবার কিছু টিউমার অল্প দিনের হয়। আবার কিছু লালা গ্রন্থির টিউমার থাকে। আবার মুখের যে রক্তনালি সেখানেও টিউমার হতে পারে। এরপর আমাদের গালে যে চর্বি থাকে সেখানেও টিউমার হতে পারে। মুখে বিভিন্ন অংশে বিভিন্ন ধরনের টিউমার হতে পারে। মুখের টিউমারের বেশ কিছু লক্ষণের মধ্যে প্রথম দিকে যেই লক্ষণ প্রকাশ পায় তা হচ্ছে মুখের ভেতর কোন অংশ ফুলে যাওয়া। যখন এই ফোলা অংশ মুখের কোনো গুরুত্বপূর্ণ গঠনের ওপর চাপ দেয়, তখন ব্যথা শুরু হয়। আবার কিছু সংখ্যক রোগীর অনেক সময় ধিরে ধিরে বড় হতে হতে এত বড় টিউমার হয়ে যায় যে, চোখ ছোট হয়ে আসে বা চোখ বন্ধ হয়ে আসে। তখন এই টিউমার রোগীর জন্য ঝুঁকিপূর্ণ হয়ে পড়ে।\r\n\r\nটিউমার সাধারণত দুই ধরনের হয়। একটা বিনাইন টিউমার। যেটা তুলনামুলক কম ক্ষতিকর। এটি হলে ৫-১০ বছর ধরে রোগীর চোয়াল ফুলে থাকে। ধীরে ধীরে ওই ফুলাটা বাড়তে থাকে। এই একটি টিউমার যাকে বিনাইন টিউমার বলা হয়। আর কিছু আছে ম্যালিগনেন্ট টিউমার। ওগুলো খুবই ভয়ের। ইতিহাস কম দিনের থাকে। এমনকি রোগী বোঝার আগেই হয়তো খুব খারাপ দিকে চলে যায়। এই ধরনের টিউমার মুখে বা মুখের আশপাশের গঠনে হতে পারে। অনেক দাঁত যদি চোয়ালের ভেতর থাকে, সেক্ষেত্রে কিছু সিস্ট বা টিউমার হয়ে থাকে। এছাড়াও কারো যদি জর্দা পান, সুপারির অভ্যাস থাকে, এই ক্ষেত্রেও কিছু কিছু টিউমার হয়ে থাকে।\r\n\r\nমুখের টিউমারের ধরন এবং বর্তমান অবস্থা বিবেচনায় চিকিৎসা পদ্ধতি নির্ধারণ করা হয়। সঠিক পদ্ধতিতে অপারেশন করলে অনেক ক্ষেত্রেই রোগীর সম্পূর্ণ সুস্থ হবার সম্ভাবনা থাকে এবং মুখের গঠনও স্বাভাবিক করে দেয়া সম্ভব হয় ।মুখের টিউমারের লক্ষণ প্রকাশ পেলে অবহেলা না করে দ্রুত একজন বিশেষজ্ঞ চিকিৎসকের পরামর্শ নিন।', 'article/2022/10/og0vKzzYFjmMAjpPNvLXJxxeVAJ9NQazZN3B13VZ.png', '2022-10-07 23:56:57', '2022-10-07 23:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitingtime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `location`, `mobile`, `email`, `visitingtime`, `created_at`, `updated_at`) VALUES
(1, 'SHAHEED SUHRAWARDY MEDICAL COLLEGE AND HOSPITAL', 'Sher-E-Bangla Nagar, Dhaka- 1207, Bangladesh', '+8801611606095, +8801819226460, +8801944099099, +8801819208670', 'nasiruddin200@yahoo.com', '8:00 AM-2:30 PM ( Friday closed )', '2022-10-15 07:48:13', '2022-10-16 11:48:37'),
(2, 'AVENUE DENTAL CARE, CENTRE FOR DENTAL MAXILLOFACIAL SURGERY AND RESEARCH (CDMSR)', '3A, Satmosjid Road, Dhaka - 1205 (Opposite Bank Asia, Lalmatia)', '+8801611606095, +8801944099099, +8801819208670, +8801819226460', 'nasiruddin200@yahoo.com', '4:00 PM - 9:00 PM ( Friday closed )', '2022-10-15 07:52:34', '2022-10-16 11:48:30'),
(3, 'BANGLADESH ENT HOSPITAL LTD', '4/1/A, Sobhanbag, Mirpur Road, Dhaka 1207', '+8801717250667, +8801611606095, +8801819226460, +8801819208670', 'nasiruddin200@yahoo.com', '2:30 PM - 4:00 PM ( Friday closed )', '2022-10-15 07:53:31', '2022-10-16 11:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2022_10_06_120137_create_services_table', 2),
(6, '2022_10_07_032219_create_treatments_table', 3),
(11, '2014_10_12_000000_create_users_table', 4),
(12, '2014_10_12_100000_create_password_resets_table', 4),
(13, '2019_08_19_000000_create_failed_jobs_table', 4),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(15, '2022_10_08_044339_create_articles_table', 5),
(16, '2022_10_15_133831_create_contacts_table', 6),
(18, '2022_10_16_134257_create_teams_table', 7),
(19, '2022_10_17_143823_create_mores_table', 8),
(20, '2022_10_25_172231_create_homes_table', 9),
(21, '2022_10_25_172839_create_sliders_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `mores`
--

CREATE TABLE `mores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mores`
--

INSERT INTO `mores` (`id`, `topic`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Factors Influencing Early Recurrence and Survival of Oral Squamous Cell Carcinoma- A Study in a Tertiary level Hospital of Bangladesh. Bangladesh Journal of Dental Research & Education. Vol.08, No. 01, January 2018: 20-24. (First author).', 'Publications', '2022-10-17 08:46:07', '2022-10-17 09:32:54'),
(2, 'Buccal Fat Pad Flap for the Reconstruction of Oral Defects. Bangladesh Journal of Dental Research & Education. Vol.08, No. 01, January 2018: 09-12. (First author)', 'Publications', '2022-10-17 08:46:17', '2022-10-17 08:46:17'),
(3, 'Annual Clinical Audit of Indoor, Dhaka Dental College and Hospital (January 2004-December 2005). Bangladesh Journal of Dental Research & Education. Vol.05, No. 02, July 2015: 37-39. (First author)', 'Publications', '2022-10-17 08:46:25', '2022-10-17 08:46:25'),
(4, 'Cavernous haemangioma of face- A case report.  Bangladesh Journal of Medical Science. Vol. 19, no.01, Sep. 2013, 50-52.(Co- author)', 'Publications', '2022-10-17 08:46:33', '2022-10-17 08:46:33'),
(5, 'Clinical stage-Grading of oral cancer in a tertiary level hospital at Dhaka.  Bangladesh Journal of Medical Science. Vol. 19, no.01, Sep. 2013, 25-31.(Co- author)', 'Publications', '2022-10-17 08:46:41', '2022-10-17 08:46:41'),
(6, 'Bilateral temporomandibular joint dislocation in a 42-year-old man. A case report. Journal of oral health. April 2013, Vol 15, no 1: 32-33. (Co-author).', 'Publications', '2022-10-17 08:46:49', '2022-10-17 08:46:49'),
(7, 'Efficacy of CT scan for the diagnosis of bone invasion in oral squamous cell carcinoma. Bangladesh    Journal of Medical Science. Vol. 17, no.02, Sep. 2011, 153-158. (First author).', 'Publications', '2022-10-17 08:46:56', '2022-10-17 08:46:56'),
(8, 'Evaluation of periodontal status in operated complete cleft lip and palate patients. Bangladesh Dental Journal. Vol. 21, 2011, 1-4 (First author).', 'Publications', '2022-10-17 08:47:03', '2022-10-17 08:47:03'),
(9, 'Benign fibrous histiocytoma may be a life threatening condition in maxillofacial region- A case report. Bangladesh Journal of Medical Science. Vol. 17, no.02, Sep. 2011, 183-186. (Co-author).', 'Publications', '2022-10-17 08:47:09', '2022-10-17 08:47:09'),
(10, 'A study on detection of neck metastasis of oral squamous cell carcinoma by palpation and CT scan.  Bangladesh Dental Journal. 2010. Vol.26, 22-24. (Co-author).', 'Publications', '2022-10-17 08:47:16', '2022-10-17 08:47:16'),
(11, 'Upper lip reconstruction by using Abbe Flap. Bangladesh Dental Journal. Vol. 10, no. 1, 1993-94, 25-30. (First author).', 'Publications', '2022-10-17 08:47:24', '2022-10-17 08:47:24'),
(12, 'Epidermoid cyst occurring in the preauricular region. The Journal of Osaka University Dental School, Japan. Vol. 31, Dec 1991, 111-115.  ( First author).', 'Publications', '2022-10-17 08:47:32', '2022-10-17 08:47:32'),
(13, 'Surgical Approaches to Midface. AOCMF seminar 2019 May. BSMMU, Dhaka.', 'Presentations', '2022-10-17 08:47:49', '2022-10-17 08:47:49'),
(14, 'Survival and Recurrence status of Oral Squamous Cell Carcinoma. A Report of 186 Cases. International Dental Conference 2019 April, Chittagong. Academy of Creative Dentistry. 8th International Dental Congress. Feb. 2018, KIB Auditorium, Dhaka.', 'Presentations', '2022-10-17 08:47:56', '2022-10-17 08:47:56'),
(15, 'Control and Management of Oral Cancer in Bangladesh. A proposal for National Program of Comprehensive Management of Oral Cancer Patients. Bangladesh International Cancer Congress 2018 October, Army Golf Club, Dhaka, Bangladesh.', 'Presentations', '2022-10-17 08:48:03', '2022-10-17 08:48:03'),
(16, 'Maxillofacial Surgery Overview, Dhaka Dental College and Hospital, Bangladesh. Mizan Complex Auditorium, Toronto, Canada. Feb 03, 2018.', 'Presentations', '2022-10-17 08:48:10', '2022-10-17 08:48:10'),
(17, 'Factors Influencing Early Recurrence and Survival of Oral Squamous Cell Carcinoma. A Report of 171 Cases. 6th International Dental Congress. (21-22 Jan 2016), KIB Auditorium, Dhaka. Head-Neck Surgery Conference 2016 (Feb 17-18, 2016), MAG Osmani Medical College and Hospital, Sylhet.', 'Presentations', '2022-10-17 08:48:17', '2022-10-17 08:48:17'),
(18, 'Mortality and Morbidity in Oral Cancer- How it is related with Management System. Bangladesh Cancer Congress ( 16-17 Nov. 2015). Army Golf Club, Dhaka.', 'Presentations', '2022-10-17 08:48:25', '2022-10-17 08:48:25'),
(19, 'Maxillofacial Surgical Pathology in Dhaka Dental College and Hospital, Bangladesh. Department of Plastic and Re-constructive Surgery, The Hospital for Sick Children, University of Toronto, Canada.(27 March 2015).', 'Presentations', '2022-10-17 08:48:33', '2022-10-17 08:48:33'),
(20, 'Distraction osteogenesis in mandibular deficiency due to bilateral temporomandibular joint ankylosis. 5th International Dental Congress, (23-24 Jan 2015). KIB Auditorium, Dhaka.', 'Presentations', '2022-10-17 08:48:39', '2022-10-17 08:48:39'),
(21, 'Mortality and Morbidity in Oral Cancer- How it is related with management system. July 2014. Marriott Marquis, New York, NY, USA.', 'Presentations', '2022-10-17 08:48:46', '2022-10-17 08:48:46'),
(22, 'Anatomical Subunit Surgical Technique in unilateral Cleft Lip Repair. 3th International Dental Congress. (25-26 Jan 2013). Ruposhi Bangla Hotel, Dhaka', 'Presentations', '2022-10-17 08:48:52', '2022-10-17 08:48:52'),
(23, 'Modern Concept and Innovation in Oral and Maxillofacial Surgery in Bangladesh. South Asian Dental Congress. Jan.2012. Dhaka, Bangladesh.', 'Presentations', '2022-10-17 08:48:59', '2022-10-17 08:48:59'),
(24, 'Evaluation of periodontal status and micro-organisms in unilateral complete cleft lip and palate patients. 18th International Conference (International Association of Oral and Maxillofacial Surgeons) on Oral and Maxillofacial Surgery, Nov. 2007. Bangalore, India.', 'Presentations', '2022-10-17 08:49:06', '2022-10-17 08:49:06'),
(25, 'Correction of unilateral cleft lip nasal deformity. 9th International Surgical Congress. Dec. 2004. Society of Surgeons of Bangladesh. 2004. Dhaka, Bangladesh.', 'Presentations', '2022-10-17 08:49:15', '2022-10-17 08:49:15'),
(26, 'Correction of unilateral cleft lip nasal deformity. Conference of Asian Association of Oral and Maxillofacial Surgeons. Nov. 2004, Tokyo, Japan.', 'Presentations', '2022-10-17 08:49:22', '2022-10-17 08:49:22'),
(27, 'Correction of unilateral cleft lip nasal deformity. 2nd national and 1st international conference, Bangladesh Association of Oral and Maxillofacial Surgeons. Sep. 2004 Dhaka, Bangladesh.', 'Presentations', '2022-10-17 08:49:27', '2022-10-17 08:49:27'),
(28, 'Annual clinical audit of indoor, Dhaka Dental College and Hospital. 2nd national and 1st international conference, Bangladesh Association of Oral and Maxillofacial Surgeons. Sep. 2004. Dhaka, Bangladesh.', 'Presentations', '2022-10-17 08:49:35', '2022-10-17 08:49:35'),
(29, 'Inferior alveolar nerve disturbances following mandibular third molar surgery. 26th Annual Conference of Association of Oral and Maxillofacial Surgeons of India. Dec. 2000. Bangalore, India.', 'Presentations', '2022-10-17 08:49:41', '2022-10-17 08:49:41'),
(30, 'Upper lip reconstruction by using Abbe Flap. 13th Asia Pacific Federation Congress, International College of Surgeons. Nov. 1999, Dhaka, Bangladesh.', 'Presentations', '2022-10-17 08:49:48', '2022-10-17 08:49:48'),
(31, 'Vice President, Bangladesh Association of Oral and Maxillofacial Surgeons (BAMOS).', 'Involvement', '2022-10-17 08:50:02', '2022-10-17 08:50:02'),
(32, 'Treasurer, Bangladesh Oral Cancer Foundation (BOCF).', 'Involvement', '2022-10-17 08:50:08', '2022-10-17 08:50:08'),
(33, 'Fellow, International Association of Oral and Maxillofacial Surgeons (IAOMS).', 'Involvement', '2022-10-17 08:50:15', '2022-10-17 08:50:15'),
(34, 'Facial injury, facial bone fracture', 'Specialization', '2022-10-17 08:50:26', '2022-10-17 08:50:26'),
(35, 'Dental Implant', 'Specialization', '2022-10-17 08:50:32', '2022-10-17 08:50:32'),
(36, 'Oral and facial tumor/ cancer surgery', 'Specialization', '2022-10-17 08:50:38', '2022-10-17 08:50:38'),
(37, 'Reconstructive facial surgery', 'Specialization', '2022-10-17 08:50:44', '2022-10-17 08:50:44'),
(38, 'Lengthening of jaw bone by distraction osteogenesis', 'Specialization', '2022-10-17 08:50:51', '2022-10-17 08:50:51'),
(39, 'Cleft lip and palate operation', 'Specialization', '2022-10-17 08:50:57', '2022-10-17 08:50:57'),
(40, 'Orthognathic surgery', 'Specialization', '2022-10-17 08:51:03', '2022-10-17 08:51:03'),
(41, 'Surgical removal of wisdom tooth', 'Specialization', '2022-10-17 08:51:09', '2022-10-17 08:51:09'),
(42, 'Office Secretary, Bangladesh Association of Oral and Maxillofacial Surgeons.', 'Social Work', '2022-10-17 08:51:19', '2022-10-17 08:51:19'),
(43, 'Treasurer, Bangladesh Oral Cancer Foundation.', 'Social Work', '2022-10-17 08:51:25', '2022-10-17 08:51:25'),
(44, 'Fellow, International Association of Oral and Maxillofacial Surgeons.', 'Social Work', '2022-10-17 08:51:31', '2022-10-17 08:51:31'),
(45, 'Health Secretary, Dhagonbhuyan Samity, Dhaka.', 'Social Work', '2022-10-17 08:51:38', '2022-10-17 08:51:38'),
(46, 'Chief Adviser, Barahi Gobinda Forum.', 'Social Work', '2022-10-17 08:51:45', '2022-10-17 08:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `type`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Ultrasonic Scaling', 'BDT 3,000- 5,000', '2022-10-06 06:26:09', '2022-10-06 06:26:09'),
(2, 'Tooth Whitening', 'BDT 4,000.00', '2022-10-06 06:26:37', '2022-10-06 06:26:37'),
(3, 'Root Canal Therapy', 'BDT 5,000.00', '2022-10-06 06:27:17', '2022-10-06 06:27:17'),
(4, 'Pulp Capping', 'BDT 4,000.00', '2022-10-06 06:44:50', '2022-10-06 12:04:23'),
(5, 'Polishing', 'BDT 4,000.00', '2022-10-06 06:45:10', '2022-10-06 12:05:08'),
(6, 'Operculectomy', 'BDT 5,000.00', '2022-10-06 12:05:29', '2022-10-06 12:05:29'),
(7, 'Metallic Cap/Crown (Porcelain)', 'BDT 8,000.00', '2022-10-06 12:05:44', '2022-10-06 12:05:44'),
(8, 'Light Cure Filling', 'BDT 5,000.00', '2022-10-06 12:05:56', '2022-10-06 12:05:56'),
(9, 'Gingivectomy', 'BDT 5,000.00', '2022-10-06 12:06:38', '2022-10-06 12:06:38'),
(10, 'Extraction-Wisdom / Complicated Tooth – Upper Jaw', 'BDT 5000.00', '2022-10-06 12:06:52', '2022-10-06 12:06:52'),
(14, 'Extraction - Permanent Tooth', 'BDT 3,000.00', '2022-10-08 03:27:02', '2022-10-08 03:28:04'),
(15, 'Extraction-Wisdom / Complicated Tooth – Lower Jaw', 'BDT 10,000.00', '2022-10-08 03:27:48', '2022-10-08 03:27:48'),
(16, 'Extraction - Milk Tooth', 'BDT 500.00', '2022-10-08 03:28:22', '2022-10-08 03:28:22'),
(17, 'Dental Implant', 'BDT 38,000 / 50,000', '2022-10-08 03:28:34', '2022-10-08 03:28:34'),
(18, 'Curettage-PD Pocket/Pericoronal', 'BDT 2,000.00', '2022-10-08 03:28:45', '2022-10-08 03:28:45'),
(19, 'Consultation Fee', 'BDT 1,000.00', '2022-10-08 03:28:55', '2022-10-08 03:28:55'),
(20, 'Build-up filling after RCT Glass ionomer filling for tooth margin abrasion/ attrition/ erosion', 'BDT 3000.00', '2022-10-08 03:29:12', '2022-10-08 03:29:12'),
(21, 'Artificial Tooth', 'BDT 2,000.00', '2022-10-08 03:29:23', '2022-10-08 03:29:23'),
(22, 'Apicectomy Under LA', 'BDT 10,000.00', '2022-10-08 03:29:36', '2022-10-08 03:29:36'),
(23, 'Amalgam Filling', 'BDT 3,000.00', '2022-10-08 03:29:48', '2022-10-08 03:29:48'),
(24, 'Abscess Drainage', 'BDT 3,000.00', '2022-10-08 03:29:58', '2022-10-08 03:29:58'),
(25, 'Glass Ionomer Filling', 'BDT 4,000.00', '2022-10-08 03:30:13', '2022-10-08 03:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sliderPicture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `sliderPicture`, `created_at`, `updated_at`) VALUES
(2, 'sliders/2022/10/vtv3PhpVQ2rbzTWUuhF0qxbnwneINRfhaNurfqr6.png', '2022-10-25 11:39:57', '2022-10-25 11:39:57'),
(3, 'sliders/2022/10/zn5aK8N35CRYzdVAspGrjvUDcZdijygZVYHLtr7x.png', '2022-10-25 11:42:18', '2022-10-25 11:42:18'),
(4, 'sliders/2022/10/iK1N6HLOMALIPMMdr5IEQxEyGBWJMgq813mKg5ue.png', '2022-10-25 11:45:29', '2022-10-25 11:45:29'),
(5, 'sliders/2022/10/FXZKk2kocFnzBRmSuoNStT1qo5UkPJ4xms9NXmdB.png', '2022-10-25 11:55:44', '2022-10-25 11:55:44'),
(6, 'sliders/2022/10/M6A3VFMRNUUQYwH0kGe5qtKBriJT6EbjQu6ZhjlD.png', '2022-10-25 11:57:36', '2022-10-25 11:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desig` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `profilePicture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fblink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitterlink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedinlink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmaillink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `desig`, `bio`, `profilePicture`, `fblink`, `twitterlink`, `linkedinlink`, `gmaillink`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Dr. Nasir Uddin', 'FACIAL PLASTIC & RECONSTRUCTIVE SURGEON', 'He completed Bachelor of Dental Surgery (BDS) course from Dhaka Dental College in 1985. Obtaining the Fellowship award from Japan Dental Association in 1990 he got admission in Advanced Surgical Study Program in the Department of Oral and Maxillofacial Surgery at Osaka University, Japan and awarded Diploma in Oral and Maxillofacial Surgery. He joined in Government service in 1995. In Sept. 2010, he joined as an Assistant Professor (CC) in the Dept. of Oral and Maxillofacial Surgery, Dhaka Dental College and Hospital. He got promotion as Asst. Professor of Oral and Maxillofacial Surgery (Regular) by Departmental Promotion Committee, Ministry of Health and Family Welfare in May 2013.', 'team/2022/10/hWIr0HTrKa9h0KvRovvUtuVSbsrcetlF9qDPEQaB.png', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://mail.google.com/', '2022-10-16 10:03:41', '2022-10-16 10:16:21'),
(2, 'Dr. Rokeya Rahman Tani', 'CONSULTANT ORTHODONTIST', 'CONSULTANT ORTHODONTIST', 'team/2022/10/Z2mw6i9bGKz2RrYRZaHcqtBM0T896QM9R2sWQPWY.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://mail.google.com/', '2022-10-16 10:08:37', '2022-10-16 10:08:37'),
(3, 'Dr. Mohsin Munir Khan Nabil', 'ORAL & DENTAL SURGEON', 'ORAL & DENTAL SURGEON', 'team/2022/10/bbMoH3yUO3ttqheyOjv6peI47VH22doSaSXMKUnQ.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://mail.google.com/', '2022-10-16 10:09:10', '2022-10-16 10:09:10'),
(4, 'Dr.Maliha Ishaque Purnata', 'DENTAL SURGEON', 'Dr.Maliha graduated from Holy Family Red Crescent Medical College and Hospital Dental Unit in 2019.After that she completed six months post graduation training (PGT) in the department of Oral and Maxillofacial Surgery in Shaheed Suhrawardy Medical College and Hospital in 2021.She is currently doing masters in Public Health in North South University.She has been working as consultant dental surgeon in Avenue Dental Care, Dhaka since 2021.She is specially skilled in Root Canal Therapy (RCT), Filling, Implantation of missing tooth.She specializes herself in clinical management of both pediatric and adult patients.She performs minor oral and maxillofacial surgery and participates in major surgeries.', 'team/2022/10/KfJMRuIKkp8uomzdO9zHRqmWQoKgjkvri94KoTcI.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://mail.google.com/', '2022-10-16 10:10:17', '2022-10-16 10:10:17'),
(5, 'Dr. Tahmina Akter Tonny', 'DENTAL SURGEON', 'Dr. Tonny graduated from Holy Family Red Crescent Medical College and Hospital Dental Unit in 2018.After that,she completed six months post graduation training (PGT)in department of Oral and Maxillofacial Surgery in Shaheed Suhrawardy Medical College and Hospital in 2021.She has been working as consultant dental surgeon in Avenue Dental Care.She performs minor oral and maxillofacial surgery and participates in major surgeries.She is specially skilled in Root Canal Therapy(RCT),Filling, Implantation of missing tooth.Besides all these,Dr.Tonny participated in various community dental camps. Dr.Tahmina Akter Tonny ,Dental Surgeon,BDS(DU),PGT(Oral and Maxillofacial Surgery, Shaheed Suhrawardy Medical College and Hospital)', 'team/2022/10/4uS8P0JyaQ0dpF3cBSO3gXULdo3wDeLiq92BVgk0.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://mail.google.com/', '2022-10-16 10:10:50', '2022-10-16 10:10:50'),
(6, 'Ishrat Jahan Sweety', 'DENTAL HYGIENIST & TECHNOLOGIST', 'Diploma in Medical Technology (Dental)\r\nGovt. Institute of Health Technology, Bogura.', 'team/2022/10/au4yKpHQrtrd361T6oTsRCJaghkoLJR5HXRUKI9E.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://mail.google.com/', '2022-10-16 10:11:26', '2022-10-16 10:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `beforeOperationImage` text COLLATE utf8mb4_unicode_ci,
  `afterOperationImage` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`id`, `name`, `description`, `beforeOperationImage`, `afterOperationImage`, `created_at`, `updated_at`) VALUES
(14, 'TONGUE PRECANCEROUS LESION (LEOKOPLAKIA)', 'Leukoplakia is a condition in which one or more white patches or spots (lesions) forms inside the mouth. Leukoplakia is different from other causes of white patches such as thrush or lichen planus because it can eventually develop into oral cancer.', 'treatment/beforeop/2022/10/Adx9tJyjleuszJb76CsgpOv7k1LYAawb9w1mHctG.jpg', 'treatment/afterop/2022/10/c5gabLBhghFAOteSpu0dZ4vBtxuwYOPTjDgjeHoX.jpg', '2022-10-07 08:53:38', '2022-10-07 08:53:38'),
(15, 'TMJ ANKYLOSIS', 'Temporomandibular joint ankylosis is defined as bony or fibrous adhesion of the anatomic joint components accompanied by a limitation in opening the mouth, causing difficulties with mastication, speaking and oral hygiene as well as inadvertently influencing mandibular growth.', 'treatment/beforeop/2022/10/thURpOQNZufpwSgBRGkODegYx4DaB3ZiaE9t22B3.jpg', 'treatment/afterop/2022/10/cID8VgpmdEcHLPk9v5tE8o154NHfEST7XExMK0XT.jpg', '2022-10-07 09:01:40', '2022-10-07 09:01:40'),
(16, 'SOFT PALATE CLEFT REPAIR', 'Palate repair surgery is usually done when your baby is 6 to 12 months old. The gap in the roof of the mouth is closed and the muscles and the lining of the palate are rearranged. The wound is closed with dissolvable stitches. The operation usually takes about 2 hours and is done using a general anaesthetic.', 'treatment/beforeop/2022/10/gewBE0Z6d4r3hFvcNcmuDC0DBtOkOVsZ46llUOeG.jpg', 'treatment/afterop/2022/10/nJRUUeQF71w66TyDxnS3AcTxj7ji3M3WOUXEt2I6.jpg', '2022-10-07 09:02:13', '2022-10-07 09:02:13'),
(17, 'ORAL CANCER', 'Mouth cancer, also known as oral cancer, is where a tumour develops in a part of the mouth. It may be on the surface of the tongue, the inside of the cheeks, the roof of the mouth (palate), the lips or gums.', 'treatment/beforeop/2022/10/h2IetLpDQmO0f9044fEFgeS5WQmv6PomoTza1te6.jpg', 'treatment/afterop/2022/10/SIRjIAciMsx6p9ClJlCEdPVeuHx55JzeDrpUhB1G.jpg', '2022-10-07 09:02:35', '2022-10-07 09:02:35'),
(18, 'ORTHO CROWDING', 'Crowding is the lack of space for all the teeth to fit normally within the jaws. The teeth may be twisted or displaced. Crowding occurs when there is disharmony in the tooth to jaw size relationship, or when the teeth are larger than the available space.', 'treatment/beforeop/2022/10/sPFAM2xUHYWhFruht6nvMFCx4PPjv5DZQArMDVyV.jpg', 'treatment/afterop/2022/10/1qXJhAwIoq1UUnoU8D1tgLDgItkYrSYFtKMH3uu9.jpg', '2022-10-07 09:03:07', '2022-10-07 09:03:07'),
(19, 'CLEFT LIP REPAIR', 'Lip repair surgery is usually done when your baby is around 3 months old. Your baby will be given a general anaesthetic (where they\'re unconscious) and the cleft lip will be repaired and closed with stitches. The operation usually takes 1 to 2 hours. Most babies are in hospital for 1 to 2 days.', 'treatment/beforeop/2022/10/piYf8fnMZ51M7xcrH26FWm2XrgM8VP9Wdr5P8Era.jpg', 'treatment/afterop/2022/10/QhqqUcXGccfffXSYhcEj70nuhb39UdwAVGgONsiC.jpg', '2022-10-07 09:03:44', '2022-10-07 09:03:44'),
(20, 'BROKEN TOOTH BUILD-UP BY LIGHT CURE COMPOSITE FILLING', 'Composite bonding is a modern way to restore teeth, either for cosmetic reasons, or to build up tooth structure that has been lost. It involves bonding a tooth coloured resin material to existing teeth to reshape them or improve their colour.', 'treatment/beforeop/2022/10/HQ1einKfjozVQIm6OkVBoycU6715V3sJ5mwiorBS.jpg', 'treatment/afterop/2022/10/qwRl1b7pLHN03PWtKpFmN1tNlcWbUR119TpSYaJG.jpg', '2022-10-07 09:04:11', '2022-10-07 09:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Samiur Rahman', 'sami@gmail.com', NULL, '$2y$10$IscYe4lajvMjC55Ng6XKK.go.82GVYby8PYPiLNJjOPDVOTRNQjY.', NULL, '2022-10-07 13:42:47', '2022-10-07 13:42:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mores`
--
ALTER TABLE `mores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mores`
--
ALTER TABLE `mores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
