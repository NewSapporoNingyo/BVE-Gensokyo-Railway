# Developer Guide
Note: This document contains untranslated parts.(Chinese and Japanese words)<br>
update 2025-1-2<br>
## Setup develop environment
1. Download Bve Trainsim 5 from the offical website.
2. Get a text editor. Vscode is recommended. You can also use the Windows notepad since most files here are txt.
3. Select the path of this project and open in Bve Trainsim 5.
4. Right-click in bve and select the "preference", then click "Advanced Settings" and Enable functions for development.
5. Now you can develop route in Bve Trainsim.
## Contribute to this project
1. Create a fork of this repository. This will generate a repository with the same content under your account.
2. Clone the repository. You can do this with Git or Github Desktop. And you will find the repository in your local machine.
3. Develop on your local machine.
4. After you complete something, push the commits to your forked repository.
5. Merge your commits to the main repository with pull requests.
6. Now you are a contributor of this project. Your username will appear on the right side of the repository page.
## Informations
### Routes
#### RouteMap
<p align="center">
    <img src="https://github.com/noname390/BVE-Gensokyo-Railway/blob/main/assets/maps/Gensokyo_System_Map.png" alt="routemap";>
</p>
<br>
(Thanks for @AshBill who created the new routemap)

### Intro
#### Loop Line（環状線）
幻想乡铁道最主要的线路，并且是唯一的环状线路。<br>
线路从博丽神社出发，向南穿过迷途竹林后北折，进入人间之里。这一段较为平坦，一共3座桥梁，无穿山隧道，博丽神社附近为高架，在南人间之里附近进入地下。<br>
到达人间之里站后，从人间之里向西出发经过命莲寺，北折穿过妖怪树海后到达山脚的守矢神社站。这一区间有桥梁2座，穿山隧道3座，在西人间之里站前由地下进入高架，过西人里站后转为地面走行。<br>
在守失神社站东折，沿玄武之泽北岸行进后进入魔法之森，并沿雾之湖南岸延伸，到达红魔馆后向南转向，回到博丽神社站。<br>
#### Hakurei Moriya Line（博麗守矢ライン）
连接博丽神社站与人间之里站的高速线路。全程为高架及地下线路。
#### Koto Line（湖東線）
从红魔馆站出发，沿雾之湖东岸延伸，至无缘冢的单线线路。
#### Yokainoyama Line（妖怪山線）
从无缘冢站出发，在新无缘冢信号场折向西北方向，路线规格较高。在新无缘冢-八云邸间为套轨（1067+1435mm），是未来规划中可走行新干线电车及海外车辆的区间。经过最高点文站附近后转向东北方向，到达八云邸站。全程桥梁、隧道非常多。在山前下田~文间有长12千米的妖怪山隧道。
#### Yuumei-kekkai Line（幽明结界線）
从八云邸站开始为幽明结界线。在北宇佐見信号场前为地方路线规格，后为高速线（整備新幹線）规格。桥梁、隧道非常多。在滨川幽别~北幌间有长61千米的幽明隧道，隧道最深部设置了隙间，列车通过隙间穿过幽明结界后继续在隧道内走行。最后到达幽明站。
#### Meikai Line（冥界線）
从幽明~西行妖站的低规格路线。线路末端进入白玉楼内。
#### Hakurei East Line（博麗東線）
从新红魔站连接博丽神社东站的标准轨线路，可以走行新干线电车和海外车辆。博丽神社东站被设计成了方便机辆式列车到发的结构。线路偏向中国铁路风格，不过仍然兼容其它列车。
#### Mist Lake Line（霧の湖線）
从人间之里地下的新站人里中央出发，经过雾之湖沿岸到达新红魔站与妖怪山标准轨实验线汇合，可以走行新干线电车和海外车辆。线路偏向欧洲铁路风格（以德铁为主），不过仍然兼容其它列车。
#### Standard Gauge Experimental Line of Mt.Youkai（妖怪山標準軌実験線）
整个标准轨系统最重要的车站是新红魔站，这站位于红魔馆背后的两座大山之间，站台两端不远处都是隧道，在站台上可以清晰的看见红魔馆。从新红魔站出发，在窄轨线路的新无縁塚站附近与窄轨线路合流，进入套轨区间，与妖怪山线共线。线路最高允许230km/h的速度，不过实际因车型不同，最高运行速度会有所区别。标准轨线路的列车仅在妖怪山线的少数几个车站停车。线路在山前下田站之后变为单线，进入妖怪山隧道。之后在山间穿行，到达八云邸站。线路可以走行新干线电车和海外车辆。
#### Kyuto Main Line（旧都本線）
从守矢神社站与环状线分开，向北经过风神之湖边后进入幻想风穴。先在天然洞穴内走行，在黑谷~下人里间进入人工开挖的隧道，沿螺旋隧道向地下进发。出隧道后到达旧都所在的巨大地下洞窟的上壁，经过一段“悬空式”线路后沿洞窟侧壁，以N字形长下坡线路缓慢接近旧都地面。在接近旧都地表时经由人工开凿的隧道到达深道信号场，在天然洞穴内走行一段距离后到达水桥站，通过桥梁进入旧都内。在旧都依次沿街道、河谷走行，最后到达终点地灵殿站。
### Route Design
#### Loop Line・Koto Line・HakureiMoriya Line  
<p align="center">
    <img src="https://github.com/noname390/BVE-Gensokyo-Railway/blob/main/assets/haisennryakuzu/route_design_Loop-Koto-HMLine.png" alt="routemap";>
</p>
<br>

#### Kyuto Main Line  
<p align="center">
    <img src="https://github.com/noname390/BVE-Gensokyo-Railway/blob/main/assets/haisennryakuzu/route_design_KyutoMainLIne.png" alt="routemap";>
</p>
<br>

#### Youkaizan Line・Mist Lake Line・Hakurei East Line・Standard Gauge Experimental Line of Mt.Youkai
<p align="center">
    <img src="https://github.com/noname390/BVE-Gensokyo-Railway/blob/main/assets/haisennryakuzu/route_design_NHB-Yakumotei.jpg" alt="routemap";>
</p>
<br>

#### Yuumei-kekkai Line・Meikai Line
<p align="center">
    <img src="https://github.com/noname390/BVE-Gensokyo-Railway/blob/main/assets/haisennryakuzu/route_design_Yakumotei-Saigyoayakashi.png" alt="routemap";>
</p>
<br>

### Stations(In Japanese)
Loop Line:<br>
#### HakureiShrine->Ningennosato
|#   |駅名      |快速停車駅|キロ   |普通‐運行時間|ホーム長さ（両数）| 最高速度（普通/特急）| 線路数| ホーム      |駅構造| 
|--- |---       |---      |---    |---         |---         |---    |---    |---         |---   |
| GO 01  |博麗神社  | 	○	   | 0	  | 0	        |9           |110(120)	 | 複線	| 島式2面4線   | 高架 | 
| GO 02  |南博麗    | 	↓	  | 5.100	  | 5	     |7            | 		 |      |相対式2面2線  | 地面 | 
| GO 03  |永遠亭    | 	○	  | 10.823| 10          |6           | 		 |       |島式1面2線   |地面  | 
| GO 04  |竹林      | 	↓	  | 13.900  | 13         |5             |		 |       |相対式2面2線 |地面  | 
| GO 05  |南人間の里| 	↓	  | 21.040 | 20          |7            | 		 |       |相対式2面2線  | 地下| 
| GO 06  |人間の里  | 	○	  | 22.395| 22         |7             | 		 |       |島式4面8線   | 地下 | 
#### Ningennosato->MoriyaShrine
|#   |駅名      |快速停車駅|キロ   |普通‐運行時間|ホーム長さ（両数）| 最高速度| 線路数| ホーム      |駅構造| 
|--- |---       |---      |---    |---         |---         |---    |---    |---         |---   |
| GO 06  |人間の里  | 	○	   |22.395 |22 	        |7            |110(120)	 | 複線	| 島式4面8線   | 地下 | 
| GO 07  |西人間の里| 	○	  | 24.433   | 	        |6           | 		 |      |1島2相対+4線  | 高架 | 
| GO 08  |命蓮寺    | 	○	  | 28.989   |           |8            | 		 |       |2階2面2線   | 高架⁺地面| 
| GO 09  |北命蓮寺   | 	↓	  | 30.291   |           |5             |		 |       |相対式2面2線 | 地面| 
| GO 10 |妖怪の樹海| 	↓	  | 34.972   |           |5            | 		 |       |相対式2面2線 |地面| 
| GO 11 |草田     | 	↓	  | 37.553  |            |4             | 		 |       |相対式2面2線 |地面| 
| GO 12 |守矢神社 | 	○	  | 39.425  |47          |8            | 		 |       |2島+3線  　　|地面| 
#### MoriyaShrine->HakureiShrine
|#   |駅名      |快速停車駅|キロ   |普通‐運行時間|ホーム長さ（両数）| 最高速度| 線路数| ホーム      |駅構造| 
|--- |---       |---      |---    |---         |---         |---    |---    |---         |---   |
| GO 12 |守矢神社 | 	○	   | 39.2  | 	        |            |95	 | 単線	 |2島+3線   　 | 地面 | 
| N 13 |風神の湖 | 	↓	  | 40.8   | 	        |            | 		 |       |1面1線       | 地面 | 
| 14 |東守矢（信） | 	○	  | 　　   | 	        |            | 		 |       |相対式2面2線  | 地面 | 
| N 15 |玄武の沢 | 	↓	  | 47.6   |           |            | 		 |       |1面1線       | 地面 | 
| N 16 |香霖堂前 | 	○	  | 52.8   |           |             |110(120)		 |       |相対式2面2線 | 地面 | 
| N 17 |魔法の森 | 	○	  | 55.0   |           |            | 		 |       |1面1線      |地面  | 
| N 18 |霧の湖   | 	↓	  | 57.3  |            |             | 		 |       |1面1線      |地面  | 
| N 19 |紅魔館 　| 	○	  | 58.5  |            |             |       |       |相対式2面3線 |地面  | 
| N 20 |上霧の湖 | 	↓	  | 60.2  |            |             | 		 |       |1面1線  　　|地面   | 
| N 21 |北博麗　 | 	↓	  | 61.5  |            |             | 		 |       |1面1線  　　|高架   | 
| GO 01(22) |博麗神社2 | 	○	  | 62.8  |            |             | 		 |       |島式2面4線  |高架   |

Hakurei Moriya Line:<br>
#### HakureiShrine->Ningennosato
|#   |駅名          |快速停車駅|キロ |普通‐運行時間|快速‐運行時間| 最高速度| 線路数| ホーム      |駅構造| 
|--- |---          |---       |--- |---         |---         |---    |---    |---         |---   |
| GO 01 |博麗神社       | 	○	   | 0  | 	  0     |            |145	 | 単線	 |島式2面4線    | 高架 | 
| H 02 |獣道          | 	↓	  |    | 	        |            | 		 |       |相対式2面3線 | 高架 | 
| H 03 |きりさめ新都心 | 	↓	   |    |           |            |90      |複線   |島式1面2線   | 地下 | 
| GO 06 |人間の里      | 	○	  |    |           |             |		 |       |島式4面8線   | 地下 | 

Kyuto Main Line:<br>
#### Eientei->Chireiden
|#   |駅名          |優等列車停車駅|キロ |普通‐運行時間|深さ（幻想風穴駅=0m）| 最高速度| 線路数| ホーム      |駅構造| 
|--- |---         |---       |--- |---         |---         |---    |---    |---         |---   |
| GO 12  |守矢神社   | 	○	  |     |           |            | 105		 |単線       |2島+3線   |地面  | 
| C 13 |湖浜八坂  　| 	↓	  |    | 	        |            | 		 |       　　　　|1面1線 | 地面 | 
| C 14 |幻想風穴   | 	○	   |    |           |0            |95      |   |相対式2面2線+1面1線   | 地面 |
| 15 |黒谷（信）   | 	↓	   |    |           |-203            |        |   |0面2線   | 洞窟内 |
| 16 |500m定点   | 	↓	   |    |              |-500            |        |   |0面1線   | 洞窟内（トンネル内） |
| 17 |下人里（信） | 	↓	   |    |           |-738            |        |   |0面2線   | 洞窟内（トンネル内） |
| 18 |1500m定点   | 	↓	   |    |           |-1500            |        |   |0面1線   | 洞窟内（トンネル内） |
| 19 |うつほ定点   | 	↓	   |    |           |-2372            |        |   |0面1線   | 洞窟内 |
| 20 |上旧都定点   | 	↓	   |    |           |-2705            |        |   |0面1線   | 洞窟内 |
| 21 |深道（信）      | 	↓	   |    |           |-2908            |        |   |0面2線   | 洞窟内 |
| C 22/CK 07 |水橋      | 	○	   |    |           |-2946            |        |   |相対式2面2線+1面2線   | 地面(洞窟内) |
| CK 06 |サトリ    | 	↓	   |    |           |-2944            |        |   |1面1線   | 地面(洞窟内) |
| CK 05 |星熊温泉  | 	↓	   |    |           |-2972            |        |   |相対式2面2線   | 地面(洞窟内) |
| CK 04 |東旧都    | 	↓	   |    |           |-2980            |        |   |島式2面2線   | 地面(洞窟内) |
| CK 03 |旧都      | 	○	   |    |           |-2974            |        |   |島式2面4線   | 地面(洞窟内) |
| CK 02 |下旧都    | 	↓	   |    |           |-2991            |        |   |1面1線   | 地面(洞窟内) |
| CK 01 |上古明地  | 	↓	   |    |           |-3001            |        |   |相対式2面2線   | 地面(洞窟内) |
|CK 00|地霊殿      | 	○	  |    |            |-3017             |		 |       |島式2面4線   | 地面(洞窟内) |

Koto・YoukaiYama・Yuumeikekkai・Meikai Line:<br>
#### Komakan->Saigyoayakashi
紅魔館--⚡DC 1500v<->⚡AC 20kv--ヴワル<br>
注意：因为缺乏地理信息，一部分站名为自行创作<br>
Note: Due to the lack of geography information, some station names were originally created.<br>
##### 湖東線
|#   |駅名          |優等列車停車駅|キロ |普通‐運行時間|快速‐運行時間| 最高速度| 線路数| ホーム      |駅構造| 
|--- |---          |---          |--- |---         |---         |---    |---    |---         |---   |
| N 18 |紅魔館         | 	○	     | 0  | 	  0     |            |95	 | 単線	 |相対式2面3線 |地面  | 
| M 19 |ヴワル         | 	↓	     |    | 	        |            | 		 |       |相対式1面2線 | 地面 | 
| M 20 |霧の湖浜       | 	↓	     |    |             |            |       |       |1面1線   | 地面 | 
| M 21 |再思の道       | 	↓	     |    |           |             |		 |       |1面1線   | 地面 | 
| M 22 |无缘冢         | 	○	     |    |           |             |		 |       |島式2面4線   | 地面 |
##### 妖怪山線
|#   |駅名          |優等列車停車駅|キロ |普通‐運行時間|快速‐運行時間| 最高速度| 線路数| ホーム      |駅構造| 
|--- |---          |---          |--- |---         |---         |---    |---    |---         |---   |
| M 22 |无缘冢         | 	○	     |    |           |             |		 |       |島式2面4線   | 地面 | 
| Y 23 |山前大川      | 	↓	     |    |           |             |		 |       |1面1線   | 地面 | 
| 24|新无缘冢（信） | 	↓	      |    |           |             |135	 |複線     |0面3線   | 地面 |
| Y 25 |八坂          | 	↓	 |    |           |             |    	|        |相対式2面2線   | 地面 |
| Y 26|河城          | 	○	     |    |           |             |    	|        |島式2面4線   | 地面 |
| Y 27|北河城        | 	↓	     |    |           |             |    	|        |島式1面2線   | 地面 |
| Y 28|中寧        | 	↓	     |    |           |             |    	|        |島式2面2線   | 地面 |
| Y 29|山前下田      | 	↓	     |    |           |             |   	 |単線    |相対式2面2線   | 地面 |
| Y 30|東文         | 	↓	    |    |           |             |   		 |        |相対式2面2線   | トンネル内 |
| Y 31|文            | 	○	    |    |           |             |   		 |        |相対式2面2線   | 地面 |
| Y 32|二ノ森        | 	↓	    |    |           |             |   		 |        |1面1線   | 地面 |
| Y 33|雨滝        | 	↓	    |    |           |             |   		 |        |1面1線   | 地面 |
| Y 34|静葉        | 	↓	    |    |           |             |   		 |        |1面1線   | 地面 |
| Y 35|もみじ山     | 	↓	    |    |           |             |   		 |        |1面1線   | 地面 |
| Y 36|紫ヶ岡        | 	↓	    |    |           |             |   		 |        |1面1線   | 地面 |
| Y 37|日橋        | 	↓	    |    |           |             |   		 |        |1面1線   | 地面 |
| Y 38|南八雲        | 	↓	    |    |           |             |   		 |        |相対式2面2線   | 地面 |
| Y 39|八雲邸        | 	○	    |    |           |             |95	     |単線    |2面3線   | 地面 |

##### 幽明结界線
|#   |駅名          |優等列車停車駅|キロ |普通‐運行時間|快速‐運行時間| 最高速度| 線路数| ホーム      |駅構造| 
|--- |---          |---          |--- |---         |---         |---    |---    |---         |---   |
|Y 39|八雲邸        | 	○	    |    |           |             |95	     |単線    |2面3線   | 地面 |
|U 40|山後大野      | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|U 41|堀川         | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|U 42|山後池沼      | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|U 43|八雲白岡      | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|U 44|東風谷        | 	↓	    |    |           |             |		 |       |島式1面2線   | 地面 |
|U 45|風谷         | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|U 46|山見         | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|U 47|山後中川      | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|48|平岡（信）      | 	↓	    |    |           |             |		 |       |0面2線   | 地面 |
|U 49|恵川      | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|U 50|小野塚      | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|U 51|飯岡      | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|U 52|宇佐見       | 	↓	    |    |           |             |		 |       |2面2線   | 地面 |
|53|北宇佐見（信）| 	↓	     |    |           |             |140	  |複線     |0面2線   | 地面 |
|U 54|メリー湿原    | 	↓	    |    |           |             |		 |       |相対式2面2線   | 地面 |
|U 55|冥界口       | 	○	    |    |           |             |  		 |      |島式2面4線   | 地面 | 
|U 56|浜川幽別     | 	↓	    |    |           |             |		 |       |相対式2面2線   | 地面 |
|57|三途定点     | 	↓	    |    |           |             |		 |       |相対式2面2線   | トンネル内 |
|58|彼岸定点     | 	↓	    |    |           |             |		 |       |相対式2面2線   | トンネル内 |
|U 59|北幌        | 	   ↓	    |    |           |             |		 |       |相対式2面2線   | 地面 |
|U 60|幽明        | 	   ○	    |    |           |             |単線 	 |85      |相対式2面2線   | 地面 |
##### 冥界線
|#   |駅名          |優等列車停車駅|キロ |普通‐運行時間|快速‐運行時間| 最高速度| 線路数| ホーム      |駅構造| 
|--- |---          |---          |--- |---         |---         |---    |---    |---         |---   |
|U 60|幽明        | 	   ○	    |    |           |             |単線 	 |85      |相対式2面2線   | 地面 | 
|S 61|幽明西三条   | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|S 62|新幽明        | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|S 63|永江     | 	↓	    |    |           |             |		 |       |島式1面2線   | 地面 |
|S 64|桜狩      | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|S 65|東メルラン      | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|S 66|メルラン        | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|S 67|幽明池田         | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|S 68|幽明白滝         | 	↓	    |    |           |             |		 |       |島式1面2線   | 地面 |
|S 69|冥界上川         | 	↓	    |    |           |             |		 |       |相対式2面2線   | 地面 |
|S 70|冥界中里  | 	↓	    |    |           |             |		 |       |相対式2面2線   | 地面 |
|S 71|北中里         | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|S 72|太田         | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|S 73|空川         | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|S 74|白玉階段         | 	↓	    |    |           |             |		 |       |1面1線   | 地面 |
|S 75|白玉楼       | 	   ○	    |    |           |             |		 |       |相対式2面2線   | 地面 |
|S 76|西行妖       | 	   ○	    |    |           |             |		 |       |1面1線   | 地面 |

Hakurei East・Mist Lake・Standard Gauge Experimental Line of Mt.Youkai<br>
#### Hakurei Shrine East->Shin-Koma
##### 博麗東線
|#   |駅名          |優等列車停車駅|キロ |普通‐運行時間|快速‐運行時間| 最高速度| 線路数| ホーム      |駅構造| 
|--- |---          |---          |--- |---         |---         |---    |---    |---         |---   |
| 　 |博麗神社東 | 	○    　　 |    |           |             |120		 |複線       |特別式 |地面 |
| 　 |新紅魔 | 	○	      |    |         |           |165	 |複線     |島式2面4線   | 高架 |
#### Ningennosato Main Station->Shin-Koma
##### 博麗東線
|#   |駅名          |優等列車停車駅|キロ |普通‐運行時間|快速‐運行時間| 最高速度| 線路数| ホーム      |駅構造| 
|--- |---          |---          |--- |---         |---         |---    |---    |---         |---   |
| 　 |人里中央 | 	○    　　 |    |           |             |90		 |複線       |特別式 |地下 |
| 　 |稗田 | 	↓    　　 |    |           |             |140		 |       |相対式2面2線 |地下 |
| 　 |魔法の森 | 	○    　　 |    |           |             |		 |       |島式2面2線 |地面 |
| 　 |紅魔館 | 	○    　　 |    |           |             |		 |       |相対式2面2線 |高架 |
| 　 |新紅魔 | 	○	      |    |         |           |165	 |複線     |島式2面4線   | 高架 |
#### Shin-Koma->Saigyoayakashi
##### 妖怪山標準軌実験線
|#   |駅名          |優等列車停車駅|キロ |普通‐運行時間|快速‐運行時間| 最高速度| 線路数| ホーム      |駅構造| 
|--- |---          |---          |--- |---         |---         |---    |---    |---         |---   |
| 　 |新紅魔  　　　| 	○    　　 |    |           |             |165		 |       |島式2面4線 |高架|
| 　 |新无缘冢（分岐点） | 	↓	      |    |         |           |240	 |複線     |0面2線   | 地面/橋上 |
| Y 26|河城          | 	○	     |    |           |             |    	|        |島式2面2線   | 地面 |
| Y 31|文            | 	○	    |    |           |             |   		 |        |島式2面2線+通過線 | 地面 |
| Y 35|もみじ山      | 	↓	    |    |           |             |   		 |        |1面1線+通過線| 地面 |
| Y 39|八雲邸        | 	○	    |    |           |             |　　　   |単線    |3面4線   | 地面 |
### Train Schedules
#### Loop Line
|駅名      |普通 103M|普通 101M|L特急さなえ 15M|普通 105M|快速もりや 107M|臨時急行 9001|
|---       |---      |---     |---           |---      |---           |---         |
|博麗神社  |    0851  |0721    |0930          |0940     |1002          |1050        |
|南博麗    | 	0855  |0725   |↓              |0945     |↓             |↓           |
|永遠亭    | 	0900  |0730    |0938          |0950     |1010          |↓           |
|竹林      | 	0903  |0733   |↓             |0953      |↓             |↓           |
|南人間の里| 	0910  |0740    |↓             |1000     |↓              |↓           |
|人間の里  | 	0912  |0742    |0947         |1004      |1022          |1112        |
|西人間の里| 	=	  | =      |↓            |1007      |1025          |↓            |
|命蓮寺    | 		  |        |0953          |1012     |1029         |↓            |
|北命蓮寺   | 		  |        |↓            |1015      |↓             |↓            |
|妖怪の樹海| 		  |        |↓            |1020      |↓             |↓            |
|草田     | 		  |        |↓            |1023      |↓             |↓            |
|守矢神社 | 		  |        |1001         |1026      |1038          |1128          |
|風神の湖 | 		  |        |↓            |=         |=             |=             |
|東守矢　 | 		  |        |↓            |          |              ||
|玄武の沢 | 		  |        |↓            |          |              ||
|香霖堂前 | 		  |        |             |          |              ||
|魔法の森 | 		  |        |             |          |              ||
|霧の湖   | 		  |        |↓            |          |              ||
|紅魔館 　| 		  |        |             |          |              ||
|上霧の湖 | 		  |        |↓            |          |              ||
|北博麗　 | 		  |        |↓            |          |              ||
|博麗神社 | 		  |        |             |          |              ||
### Trains
Trains other than the E127 series will gradually no longer be recommended trains. Additionally, scenarios corresponding to different signaling systems will be provided, players can use suitable trains on their own.
### Express trains(Planned)
#### L Limited Express "Sanae"/ L特急 さなえ
Rolling stock:JNR 381 Series(6 car)<br>
Operating speed:120km/h(Signal 125km/h)<br>
Stops:Ningennosato---Myorenji---Moriya Shrine---Korindomae---Koumakan---Hakurei Shrine---Eientei---Ningennosato(Loop)<br>
#### Moonlight Koma/ムーンライト紅魔
Rolling stock:JNR 381 Series(6 car)<br>
Max operating speed:120km/h(Signal 125km/h)<br>
Stops:Koumakan---Hakurei Shrine---Ningennosato---Moriya Shrine---Korindomae---Koumakan<br>
#### Limited Express "Ayakashi"/ 特急 あやかし
Rolling stock:JNR 485 Series(4 car)<br>
Max operating speed:140km/h(Signal 145km/h)<br>
Stops:Ningennosato---Moriya Shrine---Koumakan---Muenzuka---Kawashiro---Aya---Yakumotei---Meikaiguchi---Yuumei---Hakugyokurou--->Saigyoayakashi<<br>
#### Sleeper Limited Express "Inaba"/ 寝台特急 因幡
Rolling stock:JNR 24 series sleeping cars+EF81 electric locomotive(10 car)<br>
Max operating speed:110km/h<br>
Stops:Eientei---Ningennosato---Moriya Shrine---Koumakan---Muenzuka---Kawashiro---Aya---Yakumotei---Meikaiguchi---Yuumei---Hakugyokurou--->Saigyoayakashi<<br>
#### Express "Kirisame"/ 急行 きりさめ
Rolling stock:681 Series(9 car)<br>
Max operating speed:160km/h<br>
Stops:Hakurei Shrine---Ningennosato---Myorenji---Moriya Shrine(via Hakurei-Moriya Line)<br>
#### High-Speed Express "Murasaki"/ 高速特急 むらさき
Rolling stock:200 Series Shinkansen/CRH1A<br>
Max operating speed:240km/h<br>
Stops:Hakurei Shrine East---ShinKouma---Kawashiro---Aya---Yakumotei<<br>
#### YSE(Yokaizan Super Express)
Rolling stock:200 Series Shinkansen/Baureihe 402(ICE2)<br>
Max operating speed:240km/h<br>
Stops:Ningennosato Hbf---Koumakan---ShinKouma---Kawashiro---Aya---Momiji Hill---Yakumotei<br>
#### Limited Express "Utsuho"/ 特急 うつほ
Rolling stock:681 Series(9 car)<br>
Max operating speed:120km/h<br>
Stops:Ningennosato---Moriya Shrine---Gensokazana---Mizubashi---Kyuto---Chireiden<br>

### Rules of train number/列車番号の付番方法/车次编号方法
#### 直通運転なしの場合：
100 ~ 199：環状線<br>
200 ~ 299：湖東線<br>
300 ~ 399：妖怪山線・幽明結界線・冥界線<br>
400 ~ 499：旧都本線<br>
500 ~ 599：博麗守矢ライン<br>
600 ~ 699：霧の湖線・妖怪山線（標準軌）<br>
700 ~ 799：博麗東線全ての経由列車、直通運転に関係なし<br>
#### 直通運転の場合：
1000 ~ 1999：湖東線―――妖怪山線・冥界方面直通の場合（急行、特急列車以外）<br>
2000 ~ 2999：環状線―――旧都本線直通の場合（急行、特急列車以外）<br>
3000 ~ 3999：環状線―――博麗守矢ライン経由<br>
##### 十の位は、以下の規則に従う（優等列車以外）
01 ~ 20：快速列車<br>
21 ~ 99：普通列車<br>
#### 優等列車
1、2：寝台特急 因幡<br>
3、4：特急 あやかし<br>
5 ~ 10：特急 うつほ<br>
11 ~ 29：環状線特急、急行<br>
31 ~ 99：湖東線・妖怪山線・幽明結界線・冥界線経由の優等列車（因幡、あやかしを除く）<br>
#### その他：
9000 ~ 9999：臨時列車<br>
#### 記号
##### 番号末尾の場合：
M：電車（EMU）<br>
レ/無表記：客車<br>
##### 番号先頭の場合：
YSE：Yokaizan Super Express（新幹線電車またはドイツ鉄道の高速電車使用）<br>
D：高速電車（新幹線電車または中国鉄道の高速電車使用）<br>
S：近郊列車（通勤型電車使用）<br>

### Train announcement languages/車内放送の言語/车内广播语言
|列車種別|日本語/Japanese|English|中文/Chinese|한국어/Korean|Deutsch/German|
|---    |---            |---    |---         |---         |---           |
|環状線普通・快速|○　         | 	○    | ○         | 	  　        |             |
|湖東・妖怪山線普通・快速|○　         | 	○    |          | 	  　        |             |
|幽明結界線・冥界線普通|○　         | 	    |          | 	  　        |             |
|旧都本線普通|○　         | 	○    | ○         | 	  　        |             |
|定期急行・特急|○　         | 	○    | ○         | 	○  　        |             |
|YSE|○　         | 	○    | ○         | 	 ○ 　        |      ○       |
|D列車|○　         | 	○    | ○         | 	  　        |             |
|S列車|○　         | 	○    | ○         | 	  　        |    ○         |

#### Platform lights at Minami-ningennosato station
