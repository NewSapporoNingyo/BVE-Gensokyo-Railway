# Gensokyo Railway Bve Trainsim 5 route
[中文版Readme](https://github.com/noname390/BVE-Gensokyo-Railway/blob/main/README_zh_cn.md)<br><br>
[Developer Guide](https://github.com/noname390/BVE-Gensokyo-Railway/blob/main/dev.md)<br><br>
[開発ガイド（日本語）](https://github.com/noname390/BVE-Gensokyo-Railway/blob/main/devJP.md)（Not up to date）<br>
## Introduction
The Gensokyo Railway is a fictional railway system developed by me and the contributors. It is an imaginary railway system located in Gensokyo of the Touhou Project. The development of this simulated route was based on the real-life railway system in the Shinetsu region of Japan, which is believed by some to be the area where Gensokyo exists.<br>
If you are not familiar with the Touhou Project, you can also enjoy it as a general fictional railway.
Currently, the simulated line operates in one direction from the Hakurei Shrine to the Moriya Shrine on the Loop Line, but it will be extended in the future and eventually become a loop line.Other routes will also be added.
## Updates
- 2023-6-9:set up repository
- 2023-6-20:Release v0.2 preview and start promoting on video websites
- 2023-6-30:Release v0.3 preview
- 2023-7-20:Release v0.4 preview
- 2023-7-23:Release v0.5 preview, Basic strutures (HKR-NNS) completed.
- 2023-7-28:Release v0.6 preview
- 2023-7-30:Release v0.7 preview
- 2023-8-4:Release v0.8 preview
- 2023-8-5:Release v0.9 preview
- [x] **2023-8-10:Release v1.0(Loop line from HKR-NNS)**
- 2023-9-13:Release v1.1 preview
- 2023-10-10:Release v1.2 preview
- 2023-10-26:Release v1.3 preview
- 2023-11-1:Release v1.4 preview
- 2023-11-3:Release v1.5 preview
- 2023-11-8:Release v1.6 preview
- 2023-11-10:Release v1.7 preview
- 2023-11-22:Release v1.8 preview
- 2023-11-27:Release v1.9 preview
- [x] **2023-12-1:Release v2.0(Loop line from NNS-MRY)**
- [X] **2024-3-16:Release v2.0.1(Loop line from NNS-MRY)**
- [x] **2024-11-17:Release v2.0.2(Loop line from NNS-MRY)**
- [ ] ?-?-?:Release v3.0(Loop line complete)
- [ ] ?-?-?:Release v4.0(Koto line)
- [ ] ?-?-?:Release v5.0(YoukainoYama line)
- [ ] ?-?-?:Release v6.0(Yuumeikekkai line)
- [ ] ?-?-?:Release v7.0(Meikai line)
- [ ] ?-?-?:Release v8.0(Hakurei Moriya line)

## Installation Guide
1. Make sure you are in the Windows operating system.
2. Install Bve Trainsim 5 and DirectX.（Sometimes .NET is also needed）
3. Clone this repository or download the releases and remember the local path of it, you will use it later.
4. Get the vehicle data from the train creator's website. Remember the local path of it, you will use it later.
5. Make sure the file paths in the text files in "GSR" folder(101M.txt etc.)are correct. Then you can open the route in Bve trainsim and enjoy it.<br>

Notice:
1. If the routes don't display on the interface of "select route" in BVE 5.8, please check the paths in the text files such as 103M.txt and so on. If the problem still exists, report it in "Issues".    

## Route Information
The current route includes one-way operation between the Hakurei Shrine and the Moriya Shrine on Gensokyo Loop Line, with a maximum speed of 110 km/h(rapid train)or 95 km/h(local train). The route includes 12 stations:  Hakurei Shrine, South Hakurei, Eientei, Chikurin, South Ningennosato,Ningennosato,West Ningennosato,Myorenji,North Myorenji,Youkai no Jyukai,Kusada,and Moriya Shrine.Currently, the route contains local,rapid and extra express service. 

If you use this simulated train route as a derivative work in the Touhou Project, **please note that many of the details are the author's own interpretation and may differ from others' imaginations or the official work.** The geographic information of Gensokyo in the route comes from the following website:<br>
[幻想郷・最新版地理考察](https://yotogiluminary.wixsite.com/website/post/000014)<br>
[Backup of this page at web archive](https://web.archive.org/web/20230901101451/https://yotogiluminary.wixsite.com/website/post/000014)<br>
### Route Map
<p align="center">
    <img src="https://github.com/noname390/BVE-Gensokyo-Railway/blob/main/assets/maps/CircleLine_Map_Planned.png" alt="routemap";>
</p>
<br>
(Thanks for @AshBill who created the new routemap)

### Mileage
The mileage data is the author's own setting, unrelated to the original work of Touhou Project, and may not correspond to the imaginations of others regarding the size of Gensokyo. 

The distance is measured precisely to 0.001 kilometers. 

The following is the distance for the section from Hakurei Shrine to Moriya Shrine, starting from Hakurei Shrine.

| Station | Mileage |
|--- |---|
| Hakurei Shrine | 0.0km |
| Minami-Hakurei | 5.100km |
| Eientei | 10.823km |
| Chikurin | 13.900km |
| Minami-Ningennosato | 21.040km |
| Ningennosato | 22.395km |
| Nishi-Ningennosato | 24.433km |
| Myorenji | 28.989km |
| Kita-Myorenji | 30.291km |
| Youkainojyukai | 34.972km |
| Kusada | 37.553km |
| Moriya Shrine | 39.425km |

View [Developer Guide](https://github.com/noname390/BVE-Gensokyo-Railway/blob/main/dev.md) for more detailed information.
### Timetable
#### Loop Line

|駅名      |普通 121M|普通 123M|快速もりや 101M|
|---       |---      |---     |---           |
|博麗神社  |    0721  |0820    |1018          |
|南博麗    | 	0726  |0825    |↓             |
|永遠亭    | 	0732  |0831    |1026          |
|竹林      | 	0735  |0835    |↓             |
|南人間の里| 	0742  |0841    |↓             |
|人間の里  | 	0744  |0846    |1036          |
|西人間の里| 	=	  |0849    |1039          |
|命蓮寺    | 		  |0854    |1044          |
|北命蓮寺   | 		  |0856    |↓             |
|妖怪の樹海| 		  |0901    |↓             |
|草田     | 		  |0904    |↓             |
|守矢神社 | 		  |0907    |1052          |
|         | 	     |        |=             |

## Train information
The following are recommended trains that can be adjusted as needed, using train data supported by Bve5.<br>
Note: In future versions, trains other than the E127 series will gradually no longer be recommended trains. Additionally, scenarios corresponding to different signaling systems will be provided, players can use suitable trains on their own.
### JR East E127 Series
E127 series EMU train is a type of direct current commuter train operated by East Japan Railway Company since May 8, 1995. Currently, this simulated route uses a 2-car formation of this train.<br>
This vehicle data is licensed under [CC BY-NC 2.1 JP DEED license](https://creativecommons.org/licenses/by-nc/2.1/jp/deed.en) and embedded in the route data with some modifications.<br>
### JR East E129 Series
E129 series EMU train is a type of direct current commuter train operated by East Japan Railway Company since December 6, 2014. Currently, this simulated route uses a 4-car formation of this train.<br>
[Link of the vehicle data](https://mc1323bve.blogspot.com/2020/03/jr-e129.html)<br>
Operating with the B11 hensei is recommended<br>
The creator of this vehicle has strict distribution terms for their work. Therefore, please visit the creator's website to obtain the train data.<br>
### JNR Class EF81 Locomotive
The Class EF81 is a multi-voltage AC/DC electric locomotive type operated on passenger and freight services in Japan since 1968.<br>
[Link of the vehicle data](http://waisroom.sakura.ne.jp/)<br>
Operating with the "81_vehicle4" hensei is recommended<br>
## Operating method
Please visit the train creator's website
## Contact us
Mail: 2147483647e308@gmail.com <br>
[discord server](https://discord.gg/XsHNX8n8)<br>
[Line groupchat](https://line.me/ti/g2/xnSYtOFgf7f2rqLc8mlA0O79Z-FOZ5mlq3GHrA?utm_source=invitation&utm_medium=link_copy&utm_campaign=default)
## License
MIT License<br>
The copyright owner of the E127 series vehicle data is "BVE Workshop".<br>
The copyright owner of the E129 series vehicle data is "Mc_1323".<br>
The copyright owner of the Class EF81 vehicle data is "わゐ".<br>
<br>
Source of structures or creator of them:<br>
かんたんのゆめ汎用ストラクチャセット<br>
仙ナセ<br>
Tetsu_Otter<br>
Nakano_Kazusa<br>
NT/fiv<br>
FCS_TM<br>
タピオカ丸<br>
内房線制作チーム<br>
Takamizawa<br>
Yukkuri_Bve<br>
雑庫Site<br>
うたたね<br>
P車解結可6連<br>
some station music are from this page:<br>
https://commons.nicovideo.jp/users/upload/157209?page=2
