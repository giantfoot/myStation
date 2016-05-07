/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/4/3 20:03:39                            */
/*==============================================================*/


drop table if exists manager;

drop table if exists user;

/*==============================================================*/
/* Table: manager                                               */
/*==============================================================*/
create table manager
(
   managerId            int not null auto_increment,
   managerName          varchar(50) not null,
   state                int not null,
   primary key (managerId)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   userId               int not null auto_increment,
   username             varchar(50) not null,
   password             varchar(50) not null,
   email                varchar(50) not null,
   state                integer not null,
   registerTime         date,
   validateCode         varchar(50),
   header               varchar(1024),
   primary key (userId)
);
drop table if exists item;

/*==============================================================*/
/* Table: item                                                  */
/*==============================================================*/
create table item
(
   itemId               int not null auto_increment,
   itemName             varchar(50) not null,
   itemUrl              varchar(512),
   itemPassword         varchar(50),
   itemDesc             text,
   itemImgUrl           varchar(512),
   itemNum              int,
   itemTab				varchar(50),
   itemTime				date,
   itemEname			varchar(50),
   primary key (itemId)
);


INSERT INTO item VALUES(NULL,'12岁','http://pan.baidu.com/s/1i52LiZF','xk6m','讲述正就读六年级的12岁小女生绫濑花日（加隈亚衣 配音）利用课间和同学们讨论恋爱和初吻的话题，少女的幻想引起同学的嘲笑，一时间教室里乱哄哄的。就在此时，过早的男生发表女生评选结果，心机女浜名心爱（原纱友里 配音）夺得榜首。当正准备宣读最糟糕女生时，花日上前阻止，而帅气的男孩高尾（齐藤壮马 配音）则制','/images/pic1/12岁.jpg',13,'syxf','2016-5-2 12:30:50','12s');
INSERT INTO item VALUES(NULL,'百武装战纪','http://pan.baidu.com/s/1i52LiZF','xk6m','原作描述一个充满陨石科技和恐怖外星生物『蛮族』（Savage）的地球。为了抵御蛮族的入侵，人类从陨石中炼製出一种特殊武器『百武装』（Hundred）。百武装不但是唯一能够对抗外星生物的兵器，而且只有能够和它起反应的『武艺者』（Slayer）才能够驾驭。男主角如月ハヤト是一个拥有史上最高反应值的高中生','/images/pic1/百武装战纪.jpg',12,'syxf','2016-5-3 12:40:50','bwzzj');
INSERT INTO item VALUES(NULL,'超时空要塞','http://pan.baidu.com/s/1i52LiZF','xk6m','公元2067年，以银河系边境的星系为中心，丧失自我而狂暴化、极尽破坏之能事的“Var”症候群，正在逐渐扩大。察觉事态严重性的星间复合企业体，为了将这一症状镇静化，将少女们的“战术音乐组合Walküre”与执行共同作战的“Valkyrie部队”编成到一起。','/images/pic1/超时空要塞.jpg',13,'syxf','2016-5-2 12:30:50','cskys');
INSERT INTO item VALUES(NULL,'潮与虎','http://pan.baidu.com/s/1i52LiZF','xk6m','本片故事描述一个平凡的少年苍月潮因缘际会邂逅一隻千年大妖怪阿虎，从此开启这对黄金拍档的不凡冒险。随著动画版在去年7月到12月放送二期，相信观众们都已深刻体会到他们和最大反派白面者之间存在著跨越世纪的恩怨情仇。而接下来的剧情将走完最后的1/3，人类与妖魔的缠斗只会愈来愈激烈。','/images/pic1/潮与虎.jpg',13,'jdhj,zztj,syxf','2016-5-2 09:30:50','cyh');
INSERT INTO item VALUES(NULL,'从零开始的异世界生活','http://pan.baidu.com/s/1i52LiZF','xk6m','从零开始的异世界生活','/images/pic1/从零开始的异世界生活.jpg',13,'四月新番站长推荐','2016-5-2 12:30:50','12s');
INSERT INTO item VALUES(NULL,'当女孩遇到熊','http://pan.baidu.com/s/1i52LiZF','xk6m','日本东北地区的某座深山里，国中生小町在一间祭拜熊的神社中，担任巫女的重责大任。有一天，小町对监护人（人？），也就是名为那津的熊说，「我想去念都市的高中」。为了能够让不经世事的小町，拥有在都市中生活的基本能力，那津展开了一连串的试炼，要求小町通过考验。','/images/pic1/当女孩遇到熊.jpg',13,'syxf,zztj','2016-5-2 20:30:50','dnhydx');
INSERT INTO item VALUES(NULL,'迷家','http://pan.baidu.com/s/1i52LiZF','xk6m','迷家讲述了30名男女出于兴趣而参加了一个可疑的巴士旅游。旅游的目的地是名为纳鸣村的、无法确定其存在的奇幻村庄。根据都市传说，“纳鸣村”里面可以让人享受如同乌托邦一样的生活。对于现实的世界绝望，想要从无聊的日常中脱身，想要人生重新来过，这30个人带着各自的思绪和心灵创伤，坐着巴士进入了深山之中……而当','/images/pic1/迷家.jpg',13,'syxf,zztj','2016-5-4 11:30:50','mj');
INSERT INTO item VALUES(NULL,'面包带来和平','http://pan.baidu.com/s/1i52LiZF','xk6m','讲述了进入高中生活的小南每天早上都吃着最喜欢的面包来开始愉快一天的故事。另外在班级当中还有和她有同样喜好的“面包友”，大家在一起每天都很HAPPY。从剧情设定而言应该是一部非常轻松的百合日常作品。','/images/pic1/面包带来和平.jpg',13,'syxf','2016-5-2 12:30:50','mbdlhp');
INSERT INTO item VALUES(NULL,'命运石之门','http://pan.baidu.com/s/1i52LiZF','xk6m','故事开始于2010年7月28日，“未来道具研究所”社团的两人，冈部伦太郎和椎名真由里去秋叶原广播会馆参加中钵博士的时间旅行理论发表会，见到了年仅18岁就在科学杂志上发表学术论文的天才少女牧濑红莉栖。发表会结束不久后，在会馆8楼深处，冈部发现了倒在血泊中的红莉栖。惊慌失措的他带着真由里立刻离开会馆','/images/pic1/命运石之门.jpg',13,'jdhj,zztj','2016-5-1 10:30:50','myszm');
INSERT INTO item VALUES(NULL,'铁甲城的卡巴内瑞','http://pan.baidu.com/s/1i52LiZF','xk6m','描述当世界被产业革命推至巅峰之时，却突然出现一种被钢铁皮肤所包覆、唯有摧毁心脏才能击败，且透过啃咬还会导致人类异化的怪物「卡巴内」……身处远东岛国日本的人们，为了对抗这项未知的威胁而在各地建造出了名为「驿」的城寨，并委身于其中来设法生存下去。并透过通称为「骏城」的装甲蒸气机关车来进行各驿站间的物资流','/images/pic1/铁甲城的卡巴内瑞.jpg',13,'syxf','2016-5-2 12:30:50','tjcdkbnr');
INSERT INTO item VALUES(NULL,'文豪野犬','http://pan.baidu.com/s/1i52LiZF','xk6m','以现代横滨为舞台讲述文豪们的超能力战斗！被孤儿院赶出，因为饥饿昏倒在旅途中的少年中岛敦救出了企图自杀的名为太宰治的青年。在听说太宰所属的组织“武装侦探社”正在追捕为害一方的猛兽“食人虎”时，敦意外地露出了惊惧的神情——食人虎与敦有什么关系？侦探们将如何捕捉它？后续又会有怎样的发展','/images/pic1/文豪野犬.jpg',13,'syxf','2016-5-2 12:30:50','whyq');

INSERT INTO item VALUES(NULL,'我们这一家','http://pan.baidu.com/s/1i52LiZF','xk6m','这部温馨爆笑的动画围绕着日本一个普普通通的小家庭展开，主人公是一家四口——爸爸花老爷、妈妈花师奶、长女花带柑和儿子花带桔。花师奶是个唠唠叨叨、偶尔占点小便宜的无厘头老妈，老爸花老爷则是个沉默寡言、我行我素的上班族，长女花带柑是个爱做白日梦的高二女生，阿柑的弟弟花带桔是花家最正常的一个','/images/pic1/我们这一家.jpg',13,'syxf','2016-5-2 11:30:50','wmzyj');
INSERT INTO item VALUES(NULL,'希德尼娅的骑士','http://pan.baidu.com/s/1i52LiZF','xk6m','改编自日本漫画家贰瓶勉从2009年开始连载的SF漫画。讲述被迫在宇宙旅行的人类舰队与谜之生命体之间战斗的故事。原作中的重要角色“白羽衣紬”也将在第二期动画中登场；而原作者贰瓶勉的早期作品《BLAME！》亦会在第二期动画中以剧中剧的形式动画化。','/images/pic1/希德尼娅的骑士.jpg',13,'jdhj','2016-5-2 12:30:50','xdnydqs');
INSERT INTO item VALUES(NULL,'学战都市','http://pan.baidu.com/s/1i52LiZF','xk6m','故事发生在世界最大的综合战斗娱乐项目“星武祭”的舞台，由六所学院包围、通称为六芒星的水上学园都市“六花”。转学到星导馆学园高等部的特待生·天雾绫斗，为了实现自己的愿望，而发誓在这个都市中战斗','/images/pic1/学战都市.jpg',13,'四月新番站长推荐','2016-5-2 12:30:50','xzds');
INSERT INTO item VALUES(NULL,'亚人','http://pan.baidu.com/s/1i52LiZF','xk6m','亚人也作亜人，是樱井画门创作并且连载于讲谈社旗下漫画杂志月刊《good!afternoon》上的科幻漫画。亚人是指与人类一样却又不会死亡的生物。亚人不会因为任何因素死亡，因此只能通过“死过一次”来分辨。普通的高中生永井圭在放学途中被卡车意外撞死，却又马上复活。于是成为“日本国内第3个亚人”的他','/images/pic1/亚人2.jpg',13,'syxf,jdhj','2016-5-2 12:30:50','yr');
INSERT INTO item VALUES(NULL,'我的英雄学院','http://pan.baidu.com/s/1i52LiZF','xk6m','《我的英雄学院》讲述改编自日本漫画家堀越耕平同名漫画作品。大部分的人类，在这个时代里都拥有名为个性的力量，但有力量之人却不一定都属於正义的一方。只要邪恶出现的地方，必定会有英雄挺身而出拯救众人。一名天生没有力量的少年绿谷出久从小就憧憬一位顶尖英雄，而他的梦想就是成为伟大的英雄','/images/pic1/我的英雄学院.jpg',13,'syxf,zztj','2016-4-28 09:30:50','wdyxxy');
INSERT INTO item VALUES(NULL,'银魂第三季','http://pan.baidu.com/s/1i52LiZF','xk6m','故事讲述了在一个虚拟架空的宇宙人来袭、价值观突变的江户，在经营着万事屋的坂田银时、神乐、志村新八三人以及围绕在他们周围的人身上发生的故事……','/images/pic1/银魂第三季.jpg',13,'zztj,jdhj','2016-5-2 12:30:50','yhdsj');

INSERT INTO item VALUES(NULL,'rwby','http://pan.baidu.com/s/1i52LiZF','xk6m','本作的背景设定在一个类现代但是充满着超自然力量的世界Remnant。主要角色为四个拥有各自的特殊能力（外像力）及武器的女孩：一个是少年英雄，一个是尊贵的女继承人，一个是迷惘的侠盗，一个是派对女孩。她们因各种原因聚在一起组成“RWBY”小队并接受训练，一心致力于对抗肆意横行的邪恶力量。','/images/pic1/rwby.jpg',13,'zztj,jdhj','2016-5-5 12:30:50','rwby');



INSERT INTO item VALUES(NULL,'萤火之森剧场版','http://pan.baidu.com/s/1i52LiZF','xk6m','一部有些悲伤的动漫，因为迷路，萤遇上了阿银；因为一人一妖，两人相爱却不能相拥；又因为一个偶然间的动作，使离别悄然到来。整部番看下来，心情有些欢快，有些压抑。她们因为偶然的机会相遇，因为偶然的机会相拥，相别。他们没有著轰轰烈烈的相遇，却有著促不及防的分别。他们是如此的单纯，萤单纯的恋著银，银则单纯的等。','/images/multiPicCoursel/萤火之森.jpg',13,'zztj,jdhj','2016-5-5 12:30:50','yhzsjcb');
INSERT INTO item VALUES(NULL,'空之境界剧场版','http://pan.baidu.com/s/1i52LiZF','xk6m','整个故事围绕昏睡了两年时间才醒来的少女两仪式展开。她在昏睡期间，曾经一度接触到了死亡的边缘，并落入“直死之魔眼”的手中。由于这只眼睛的缘故，式用刀杀死了世间所有的生物。式的同年级的同学黒桐干也，既是人形师，又是魔术师的苍崎橙子。他们也被卷入到了这一事件中，有的爱收集浮游的幽灵，有的爱建筑人之死……','/images/multiPicCoursel/空之境界剧场版.jpg',13,'zztj,jdhj','2016-5-5 12:30:50','kzjjjcb');
INSERT INTO item VALUES(NULL,'约会大作战剧场版','http://pan.baidu.com/s/1i52LiZF','xk6m','摧毁世界的灾难、充满谜团的怪物、被世界否定的少女。阻止这一切的方法只有两种——歼灭或对话。身穿军服的妹妹五河琴里对士道说：“所以你必须与精灵‘约会’，并且让对方迷恋上你！”','/images/multiPicCoursel/约会大作战剧场版.jpg',13,'zztj,jdhj','2016-5-5 12:30:50','yhdzzjcb');
INSERT INTO item VALUES(NULL,'希德尼娅的骑士剧场版','http://pan.baidu.com/s/1i52LiZF','xk6m','改编自日本漫画家贰瓶勉从2009年开始连载的SF漫画。讲述被迫在宇宙旅行的人类舰队与谜之生命体之间战斗的故事。原作中的重要角色“白羽衣紬”也将在第二期动画中登场；而原作者贰瓶勉的早期作品《BLAME！》亦会在第二期动画中以剧中剧的形式动画化。','/images/multiPicCoursel/希德尼娅的骑士剧场版.jpg',13,'zztj,jdhj','2016-5-5 12:30:50','xdnydqsjcb');
INSERT INTO item VALUES(NULL,'死神剧场版','http://pan.baidu.com/s/1i52LiZF','xk6m','死神BLEACH是由日本漫画家《久保带人》创作的漫画作品,其漫画死神于2001/08在《少年JUMP》开始连载,随即大红大紫,2004/10由东京电视台买下版权,然后播放电视动画，而后更有剧场版等相关作品诞生。','/images/multiPicCoursel/死神剧场版.jpg',13,'zztj,jdhj','2016-5-5 12:30:50','ssjcb');
INSERT INTO item VALUES(NULL,'火影忍者剧场版','http://pan.baidu.com/s/1i52LiZF','xk6m','突然冒出来的佐助还是不能得到同伴们的信任，在他的发言背后到底隐藏着怎样的用意？卡卡西和带土的战斗开始了，曾经的情景都历历在目，但这次并不是之前的忍者对战演习，而是彼此拼上。','/images/multiPicCoursel/火影忍者剧场版.jpg',13,'zztj,jdhj','2016-5-5 12:30:50','hyrzjcb');

INSERT INTO item VALUES(NULL,'镇魂街','http://pan.baidu.com/s/1i52LiZF','xk6m','镇魂街动画全集改编自国内原创漫画家许辰漫画作品。镇魂街，此乃吸纳亡灵镇压恶灵之地。 这是一个人灵共存的世界，但不是每个人都能进入镇魂街，只有拥有守护灵的寄灵人才可进入。 夏铃原本是一名普通的大学实习生，但一次偶然导致她的人生从此不再平凡在这个充满恶灵的世界','/images/pic2/镇魂街.jpg',12,'zztj,jdhj,gcdm','2016-5-6 12:30:50','zhj');

INSERT INTO item VALUES(NULL,'女娲成长日记','http://pan.baidu.com/s/1i52LiZF','xk6m','由腾讯视频、阅文集团共同出品，改编自凌舞水袖人气网络小说《女娲成长日记》的同名动画版，将定档2016年4月12日播出，由腾讯视频每周二独播。女娲、伏羲、太白金星、杨戬等这些大家耳熟能详的威风凛凛的神话人物，将“穿越”到现代，过上目标为“重振天庭，众神归位！”的脑洞清奇的欢乐日常生活。','/images/pic2/女娲成长日记.jpg',12,'zztj,jdhj,gcdm','2016-5-6 13:30:50','nwczrj');


INSERT INTO item VALUES(NULL,'命运石之门剧场版','http://pan.baidu.com/s/1i52LiZF','xk6m','故事发生在冈部自我到达命运石之门世界线后的一年，真由理没有死，红莉栖也没有遇害，是一个没有时间机器和D-Mail的世界，时间以为的按照既定的规矩前行，既不会发生回转，未来也不会发生改变，亦不存在其他的世界线。这是冈部所期望的在重复着收缩与扩张的无数世界线中漂流奇迹般的到达了的世界线','/images/multiPicCoursel/命运石之门剧场版.jpg',13,'zztj,jdhj','2016-5-5 12:30:50','myszmjcb');

