# **GSR Installation and Gameplay Guide**

> **Note:** This is a concise guide and is not fully polished. If you find any errors, unclear descriptions, or missing details, please contact the author.

---

## **Preparation**

1. **Important:**
   If you have never used **BVE Trainsim** before, you can search for some beginner tutorials on web.

2. If you are not familiar with basic **Windows operations** (copying/moving files and folders, editing and saving text files, extracting archives, etc.),
   **it is strongly recommended that you first learn these basics before attempting to install GSR.**

3. Due to strict copyright policies enforced by most authors, redistributing these materials is prohibited. The GSR project author does not provide any download services on behalf of others.

4. Most BVE-related documentation and websites are available **only in Japanese**.
   Please ensure you have basic Japanese reading ability or use a translation tool.

---

## **Installation**

### **Installing BVE Trainsim**

Detailed installation instructions for [BVE Trainsim](https://bvets.net/jp/download/) can be found by simply searching on web, so they will not be repeated here.
However, please pay attention to the following points:

1. BVE is designed **only for Windows**.
   While it may be possible to run it on other operating systems through special methods, the complexity of such setups is beyond the scope of beginner guidance.

2. The **GSR route has been fully tested only on BVE version 5.8**.
   Using other versions may result in unknown issues.

---

## **Importing the GSR Route**

### **1. Manual Import**

1. Download the latest route package from the **“Releases”** section on the right side of the project’s repository homepage.
   After downloading, extract the archive locally.

   > **Note:**
   > Files in the repository itself are for development purposes and may not work correctly in BVE.
   > Released route packages also do not include the full asset library or all resource files.
   > If you need to install the development version, please refer to the developer documentation.

2. In the `GSR\Timetables` directory, you will find folders with names surrounded by plus signs (`++`).
   (Currently, only `++ 1-Gensokyo Loop Line Clockwise ++` exists.)

   Inside are many `.txt` files with names such as `121M-ATSP+SN_A&C`.
   These are **scenario files** used by BVE.
   (The meaning of the file names will be explained later.)

3. In BVE’s **Scenario Selection** screen (シナリオの選択), open
   `GSR\Timetables\++ 1-Gensokyo Loop Line Clockwise ++`
   to see all available scenarios for the loop line.

### **2. Automatic Import & Continuous Updates(Planned feature — not yet available)**

---

## **Importing Train Data**

After importing the GSR route, all scenarios will appear in BVE, and some can already be run.
However, **all scenarios initially use the default train included in the route package (E127 series)**.

For a better driving experience, it is strongly recommended to install additional train data created by other authors.

---

### **Scenarios Compatible with the Default Train (E127 Series)**

If you prefer not to install other train data, you may still use the default train for the following scenarios:

| Train No. | Scenario File          |
| --------- | ---------------------- |
| 15M       | Not available          |
| 101M      | `101M-ATSsn_N&A&C.txt` |
| 121M      | `121M-ATSsn_N&A&C.txt` |
| 127M      | `127M-ATSsn_N&A&C.txt` |

For scenarios you do not intend to use, you can disable them by placing a semicolon (`;`) at the beginning of the `Vehicle =` line in the scenario file.
This will prevent them from appearing in BVE’s scenario selection menu.

---

### **Choosing an Appropriate Train**

In addition to the built-in E127 series, GSR provides multiple scenarios tailored to different **signal plugins**.
Players are free to select suitable trains based on route specifications and personal preference.

#### **Route Specifications**

* Track gauge: **1067 mm**
* Maximum speed: **120 km/h**
* Electrification: **1.5 kV DC overhead catenary**
* Signal systems:

  * **ATS-P** (Hakurei Shrine – Human Village – Moriya Shrine)
  * **ATS-SN** (entire line)
  * **ATS-Ps** (used only in scenario 121M)

Train length limits:

* Limited Express: **up to 6 cars (120 m)**
* Local / Rapid: **up to 4 cars (80 m)**
* At **Fuujinnoko** and **Kirinoko** station: **maximum 3 cars (60 m)**

---

#### **Signal Plugins**

Even for the same signal system (ATS-P, ATS-SN, etc.), different plugins may be used in BVE.
The following plugins are supported by the GSR route:

| Plugin Name           | Abbreviation Used in GSR |
| --------------------- | ------------------------ |
| General ATS Plugin    | Notsuki                  |
| ask & CT ATS-P Plugin | ask&CT (A&C)             |
| Rock_On snp.dll       | snp                      |
| Rock_On swp2.dll      | swp2                     |

* **“N&A&C”** means *Notsuki & ask&CT* — trains using either plugin are compatible.
* **“NoSC”** means *No speed check* — any ATS-S-compatible train may be used.

Methods for identifying which plugin a train uses are explained later.

### **Tested and Verified Train Data**

To avoid unexpected issues during installation, the following trains were used during route testing and have been confirmed to operate stably on the GSR line.
(Detailed information for each train can be found online.)

| Train No. ↓ / Signal Plugin → | ATSP / Ps (ask)                                               | ATSP / SN (ask&CT)                                            | snp                                                    | swp2                                                                 |
| ----------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------ | -------------------------------------------------------------------- |
| 15M                           | -                                                             | [E653系](https://miso-yk.wixsite.com/ci19/e653)               | -                                                      | [283系](https://a43.jimdofree.com/bve-trainsim/283%E7%B3%BB/)/381系¹ |
| 101M                          | -                                                             | [E129系](https://mc1323bve.blogspot.com/2020/03/jr-e129.html) | [211系](https://sigf.sakura.ne.jp/bve_211.html)        | [221系](https://mudamc22078.blog.fc2.com/blog-entry-296.html)        |
| 121M                          | [E129系](https://mc1323bve.blogspot.com/2020/03/jr-e129.html) | [E129系](https://mc1323bve.blogspot.com/2020/03/jr-e129.html) | [211系](https://sigf.sakura.ne.jp/bve_211.html)/115系² | [221系](https://mudamc22078.blog.fc2.com/blog-entry-296.html)        |
| 127M                          | -                                                             | [E129系](https://mc1323bve.blogspot.com/2020/03/jr-e129.html) | [211系](https://sigf.sakura.ne.jp/bve_211.html)/115系² | [221系](https://mudamc22078.blog.fc2.com/blog-entry-296.html)        |
<br>

¹ JRTrainPack: `Rock_On\Train\JR\Formation\hine\D601.txt`<br>
² JRTrainPack: `Rock_On\Train\JR\Formation\tota\M33_3.txt`

In addition, the [EF81 electric locomotive](http://waisroom.sakura.ne.jp/) has previously been used on the GSR route and may be used again in the future.
Reference link is preserved for that purpose.

## **Importing Vehicle Data into BVE**

### **Download Vehicle Data**
Vehicle data is usually available for download on the author’s website.
Download methods vary by author and are not covered in detail here.
Downloaded train data is typically distributed as a compressed archive and must be extracted before use.

#### **JRTrainPack**

[JRTrainPack](https://mikangogo.github.io/posts/jrtrainpack/) is a comprehensive collection that includes a large number of trains and plugins.
Players may freely select trains from this pack to operate on the GSR route.
It can be downloaded from the official website.

---

### **Identifying the Signal Plugin Used by a Train**

1. **Check the author’s documentation**
   Most authors specify the required signal plugin on the download page or in the included README file.
   If additional plugins are required, download and configure them according to the author’s instructions.

2. **Check the train files directly**
   Most train folders contain a directory named something like `ATS`.
   Look for files or subdirectories whose names match the plugin names listed earlier.

   If the folder contains a file named `DetailManager.dll`, open `detailmodules.txt` to identify the actual plugin path used.

---

### **Installing Train Plugins**

Some train data requires manual plugin installation. Two common methods are outlined below.

1. **Using plugins from JRTrainPack**

   In `detailmodules.txt`, you may see paths such as:

   ```
   ../../../../Rock_On\Train\JR\Plugin\***.dll
   ```

   Place JRTrainPack in the directory described by the path.
   The plugin will then load automatically with the train.

2. **Using GeneralAtsPlugin**

   In `detailmodules.txt`, you may see paths such as:

   ```
   ../../../GeneralAtsPlugin\Rock_On\***.dll
   ```

   Place the plugin folder in the corresponding directory so it can be loaded by BVE.

> **Note:**
> If you have multiple trains using the same plugin, you may store the plugin in a shared directory and modify `detailmodules.txt` so that all trains reference the same plugin.

---

### **Modifying the Train Path in Scenario Files**

1. In the train data folder, locate a file such as `Vehicle.txt` and note its file path.
2. Open the desired scenario file in
   `GSR\Timetables\++ 1-Gensokyo Loop Line Clockwise ++`
3. Replace the value in the `Vehicle =` line with the path noted above.

After this, the scenario will run using the selected train in BVE.

---

### **Important Notes**

1. In **BVE 5.8**, if a route does not appear in the scenario selection menu, check whether the paths specified in the scenario file are correct:

   * `Route = xxx`
   * `Vehicle = xxx`

   From BVE 5.8 onward, if **either path cannot be resolved**, the scenario will be hidden in the scenario selection menu.

2. If problems persist, please report them via the project’s issue tracker or contact the author.

---

## **Gameplay**

### **Route Overview**

#### **Route Map (Actual Track Layout)**

<p align="center">
    <img src="maps/LoopLine-Real.png" alt="routemap";>
</p>

---

### **Technical Specifications**

```
Track gauge: 1067 mm
Maximum speed: 120 km/h
Minimum curve radius: 300 m
Maximum gradient: 27.2‰
Electrification: 1.5 kV DC overhead catenary
Signal systems:
  ATS-P  (South Loop: Hakurei Shrine – Moriya Shrine)
  ATS-Ps / ATS-SN (entire line)
```

---

### **Distance Information**

Mileage values are original settings created by the author and are unrelated to official Touhou canon.
They may differ from other interpretations of Gensokyo’s scale.

Distances are shown to **0.01 km precision**.
For details, see [Developer Guide](dev.md).

---

## **Drivable Services**

### **15M — L Limited Express “Ayunokaze”**

The L Limited Express *Ayunokaze* is named after a music track from *Touhou Suimusou*.
The train departs from **Hakurei Shrine**, completes a full clockwise loop, and returns to the same station.

* Maximum speed: **120 km/h**
* Scenarios using the **swp2** plugin support **tilting trains** (R600 + 35 km/h)

Approximate travel time:

* Standard limited express: **~56 minutes**
* Tilting train: **~54 minutes**

> **Note:**
> Tilting operation is experimental and simulated by modifying track superelevation.
> The behavior may differ from real-world tilting mechanisms.
> Tilting is effective only between:
>
> * Hakurei Shrine – Minami-Ningennosato
> * Myorenji – Moriya Shrine

---

### **101M — Rapid “Moriya”**

* Maximum speed: **110 km/h**
* Operates only between **Hakurei Shrine – NingennoSato – Moriya Shrine**
* Total travel time: **~35 minutes**

---

### **121M — Local**

* Stops at every station
* Departs from the Hakurei depot, then runs a full loop
* Maximum speed: **95 km/h**
* Total travel time: **~1 hour 24 minutes**

---

### **127M — Local**

* Operates between **Hakurei Shrine – Ningen no Sato – Moriya Shrine**
* Maximum speed: **95 km/h**
* Total travel time: **~47 minutes**

---

## **Timetable**

The timetable for **15M** is based on standard limited express rolling stock (non-tilting).

| Station (Romaji)        | L-Exp “Ayunokaze” 15M | Rapid “Moriya” 101M | Local 121M | Local 127M |
| ----------------------- | --------------------- | ------------------- | ---------- | ---------- |
| **Hakurei Shrine**       | 10:06                 | 09:37               | 07:21      | 11:26      |
| Minami-Hakurei          | ↓                     | ↓                   | 07:26      | 11:31      |
| Eientei                 | 10:15                 | 09:46               | 07:32      | 11:37      |
| Chikurin                | ↓                     | ↓                   | 07:36      | 11:40      |
| Minami-NingennoSato   | ↓                     | ↓                   | 07:42      | 11:47      |
| NingennoSato          | 10:25                 | 09:55               | 07:47      | 11:51      |
| Nishi-NingennoSato    | ↓                     | 09:59               | 07:50      | 11:55      |
| Myorenji                | 10:31                 | 10:03               | 07:55      | 12:00      |
| Kita-Myorenji           | ↓                     | ↓                   | 07:57      | 12:02      |
| YokainoJukai          | ↓                     | ↓                   | 08:02      | 12:07      |
| Kusada                  | ↓                     | ↓                   | 08:05      | 12:10      |
| Moriya Shrine            | 10:40                 | 10:12               | 08:10      | 12:12      |
| Fuujinnoko     | ↓                     | =                   | 08:13      | =          |
| Higashi-Moriya (SigSta) | ↓                     |                     | ↓          |            |
| GenbunoSawa           | ↓                     |                     | 08:20      |            |
| Kourindou-mae           | 10:52                 |                     | 08:25      |            |
| MahonoMori           | ↓                     |                     | 08:28      |            |
| Kirinoko         | ↓                     |                     | 08:32      |            |
| Koumakan                | 10:58                 |                     | 08:36      |            |
| Kami-Kirinoko    | ↓                     |                     | 08:40      |            |
| Kita-Hakurei            | ↓                     |                     | 08:42      |            |
| **Hakurei Shrine**       | 11:03                 |                     | 08:45      |            |

Legend:

* **↓**: Pass
* **=**: Terminate at previous station

---

## **Train Operation**
For basic BVE controls, please refer to the beginner tutorials.
Operation methods for advanced train features vary by train and must be learned from the documentation provided by each train author.

### Lineside Signs and Signals

The screenshots below show the signals and signs used on the GSR route. The numbers, station names, and signal aspects in the screenshots are examples; when driving, check the current scenario, train, route being taken, and actual indications.

- **Slow down in advance, and observe a speed restriction until the rear of the train has passed its end.** The train must already be at or below the prescribed speed when its front reaches the start of the restriction. Accelerate only after the rear has completely passed the corresponding end point, and only as far as other restrictions permit.
- **When several restrictions apply at once, obey the lowest speed.** A green signal or an end-of-restriction sign does not cancel any curve, gradient, or other restriction that remains in force. The maximum speed allowed for the current scenario and train must also be observed.
- **Distinguish what a sign means from how to operate the controls.** Power, braking, ATS acknowledgement, and tilting-system controls vary by train; follow the documentation for the train you are using. Do not wait for ATS to intervene before braking.

#### Signals and Signal Checks

| Screenshot | Meaning | Driving instructions |
| --- | --- | --- |
| <img src="markdown_pictures/sig3lights.png" alt="Three-light colour-light signal showing green, with the number 4 below" width="180"> | **Three-light colour-light signal.** It can show red, yellow, or green. The screenshot shows green; the “4” below is the block signal number. | Check that the signal applies to your route, then drive according to its current aspect. The number identifies the signal; it is neither a speed limit nor the distance to a stopping point. |
| <img src="markdown_pictures/sig4lights.png" alt="Four-light colour-light signal showing yellow and green together" width="180"> | **Four-light colour-light signal.** The yellow and green lights shown together mean “Reduced speed.” Depending on its type, a four-light signal can provide different aspects, such as yellow/green or double yellow; do not judge its meaning from the number of light positions alone. | In GSR, the yellow/green aspect shown requires **75 km/h or less**. Brake in advance so that you meet this requirement on reaching the signal, and continue to watch the signals ahead. |
| <img src="markdown_pictures/2waysign.png" alt="Home signals for different routes on one post: upper 2場 showing green and lower 1場 showing red" width="180"> | **Home signals for different routes.** In the screenshot, “2場” shows green and “1場” shows red. They govern different arrival routes; they are not two signals that your train passes in succession. | Identify the signal for the route your train is taking. Pass only when that signal permits it; a green aspect on the other signal on the same post does not permit you to pass a red aspect applying to your train. |
| <img src="markdown_pictures/relaysig.png" alt="Repeater signal with three white lights in a vertical line and a 中 signal-check sign below" width="180"> | **Repeater signal.** It gives advance information about the aspect of a main signal ahead that is difficult to see. Three white lights in a vertical line repeat “Proceed”; a diagonal line repeats a restrictive aspect; a horizontal line repeats “Stop.” The screenshot shows a proceed repeater indication. | With a vertical indication, continue checking the main signal. With a diagonal indication, prepare to slow down as required by the main signal ahead. With a horizontal indication, prepare to stop **before the main signal ahead**. The diagonal repeater indication alone does not distinguish between 25, 55, and 75 km/h; you must still check the main signal. |
| <img src="markdown_pictures/check.png" alt="Signal-check sign with a yellow triangle containing 3 on a black circular background" width="150"> | **Signal-check sign (信号喚呼位置標).** It reminds the driver to check the relevant signal ahead at this location. The “3” shown refers to block signal No. 3; similar signs marked “中” can also be found near repeater signals. | Check the signal aspect here and decide whether to maintain speed, slow down, or prepare to stop. This is not a 3 km/h speed limit, a sign showing 3 km remaining, or a whistle sign. Passing it does not, by itself, require you to press the ATS acknowledgement key. |

The main signal aspects and speeds in the current GSR scenarios are listed below. Speeds are in km/h.

| Aspect | Name | Requirement in GSR |
| --- | --- | --- |
| Red (R) | Stop (停止) | Stop before this signal. Do not pass it. |
| Double yellow (YY) | Restricted speed (警戒) | Run at 25 or less and prepare to stop before the stop signal ahead. |
| Single yellow (Y) | Caution (注意) | Run at 55 or less and prepare to stop before the stop signal ahead. |
| Yellow/green (YG) | Reduced speed (減速) | Run at 75 or less and continue checking the signals ahead. |
| Green (G) | Proceed (進行) | Run within all other applicable restrictions. The maximum is 120 for 15M, 110 for 101M, and 95 for 121M and 127M. |

These values follow the GSR scenario settings; do not substitute signal speed limits from other routes. For the three repeater-signal arrangements and their meanings, see also the [MLIT Interpretation of Railway Technical Standards, notes to Article 117 (main text, p. 118; in Japanese)](https://www.mlit.go.jp/tetudo/content/20240315interpretation.pdf).

#### Curves, Speed Restrictions, and Tilting Operation

**Numerical speed boards use km/h; curve-radius boards use metres.** Read stacked speed boards according to the curve-speed category applicable to the current scenario. Do not simply choose the largest number, or decide from the train's appearance or the service name “Rapid” or “Limited Express” alone.

| Screenshot | Meaning | Driving instructions |
| --- | --- | --- |
| <img src="markdown_pictures/curvelimitnotilt.png" alt="Two stacked white curve-speed boards with black numbers: 95 above and 105 below" width="180"> | **Two stacked white curve-speed boards.** The upper 95 is for the standard curve-speed category; the lower 105 is for the higher curve-speed category. Currently, 101M, 121M, and 127M use the upper board, while standard non-tilting 15M uses the lower board. | Reduce speed to the applicable limit or less before the restriction begins. For example, although 101M has a scenario maximum of 110, it must observe 95 on the curve shown. A 15M train eligible to use the lower board may run at 105, subject to any other lower limit. |
| <img src="markdown_pictures/curvelimit_tilt.png" alt="Three stacked curve-speed boards: white boards showing 75 and 85, with a dark board showing 95 in white below" width="180"> | **Curve-speed boards including a tilting speed.** The two upper white boards still indicate the standard and higher curve-speed categories. The bottom board, with white numbers on a dark background, gives the speed applicable to tilting operation. The values shown are 75, 85, and 95. | Local and Rapid scenarios cannot use the tilting speed simply because a dark board is present. Use the applicable tilting limit only if the scenario supports it, the train meets the requirements, and tilting is permitted on that curve. **The current 15M swp2 high-performance tilting scenario displays 105 on this same example curve, rather than the 95 in the screenshot.** Read the number shown in the actual scenario. |
| <img src="markdown_pictures/curve+tilton.png" alt="Yellow R500 advance curve-radius board with 振 inside a green-bordered diamond below" width="180"> | **Advance curve-radius board and tilting-permitted sign.** “R500” indicates a curve ahead in the approximately 500 m radius category; “振” inside the green border means that tilting operation is permitted on this curve. | Check the approaching curve and applicable speed in advance, and plan your braking. “500” is not a speed, and this board does not mark the start of a numerical speed restriction. Non-tilting scenarios must still use their own speed category. |
| <img src="markdown_pictures/curve+tiltoff.png" alt="Yellow R500 advance curve-radius board with a crossed-out 振 inside a red-bordered diamond below" width="180"> | **Advance curve-radius board and tilting-prohibited sign.** The crossed-out “振” inside the red border means that tilting is not used on the curve ahead. | Even a tilting train must observe the speed applicable when tilting is disabled; it cannot continue using the tilting speed on a dark board. The current high-performance tilting 15M uses the higher non-tilting curve-speed category on these curves. Observe any lower limit that also applies at the location. |
| <img src="markdown_pictures/speedlimend.png" alt="General end-of-speed-restriction sign formed by opposing black and white triangles" width="180"> | **End-of-speed-restriction sign.** It marks the end of the corresponding speed-restricted section. | Maintain the restriction until **the rear of the train has completely passed the end point**, then decide whether to accelerate according to the current signal, scenario maximum speed, and other restrictions still in force. Do not exceed the previous limit as soon as the front passes the sign. |

Tilting operation in this project is currently simulated by changing track superelevation. A “振” sign does not mean that every train requires the same switch to be operated here. See the earlier description of 15M for supported sections and suitable trains; follow the train documentation for any additional operating requirements. For the basic procedure at the start of a speed restriction and when the rear passes its end, see the [BVE Uchibo Line operating manual, p. 12 (in Japanese)](https://bvets.net/uchibo/Read_me%28JA%29.pdf).

#### Downhill Speed Restrictions

The blue gradient boards with white markings indicate GSR's downhill speed restrictions. **The numbers 10, 15, and 20 below the arrow are downhill-restriction categories. They are neither speeds of 10, 15, or 20 km/h nor exact readings of the gradient at the board.** In the current project, subtract the amount in the following table from the scenario's maximum speed. Any lower curve, signal, or other limit must also be observed.

| Number on downhill board | Reduction from scenario maximum speed | Local 121M / 127M (maximum 95) | Rapid 101M (maximum 110) | Limited Express 15M (maximum 120) |
| --- | --- | --- | --- | --- |
| 10 | 5 km/h | 90 km/h | 105 km/h | 115 km/h |
| 15 | 10 km/h | 85 km/h | 100 km/h | 110 km/h |
| 20 | 15 km/h | 80 km/h | 95 km/h | 105 km/h |

| Screenshot | Meaning | Driving instructions |
| --- | --- | --- |
| <img src="markdown_pictures/downslopelim.png" alt="Blue downhill-restriction category board with a white downhill arrow and 20 below" width="180"> | **Start of a downhill speed restriction.** The “20” shown corresponds to the last row of the table above. For example, the downhill speed limit for Local scenarios here is 80 km/h. | Complete your deceleration before the restriction begins. Reduce power in good time on the descent and use suitable braking to control speed. Speed may continue to rise while coasting; returning the power handle to zero does not remove the need to monitor it. |
| <img src="markdown_pictures/curvelimitatslope.png" alt="Three stacked white speed boards on a downhill section, showing 80, 95, and 105 from top to bottom" width="180"> | **Stacked speed boards combining downhill and curve restrictions.** All three boards in this screenshot have white backgrounds: 80 applies to Local 121M / 127M, 95 to Rapid 101M, and 105 to 15M. Their levels have different meanings from the standard pair of curve-speed boards described earlier; the bottom board is not a dark tilting-only board. | Use the number for your scenario. The displayed values already include the relevant downhill conditions at this location; **do not subtract the downhill reduction again from 80 / 95 / 105**. Continue to obey any lower signal or other limit. |
| <img src="markdown_pictures/downslopelimend.png" alt="Blue and white hourglass-shaped end-of-downhill-restriction sign" width="180"> | **End-of-downhill-restriction sign.** It ends the corresponding additional downhill restriction, not every speed restriction. | After the rear of the train has passed the corresponding end point, recheck curve restrictions, signals, and the scenario maximum speed. Accelerate only if these allow it. At some locations, a curve-speed restriction remains after the downhill restriction ends. |

#### Approaching Stations and Stopping Positions

First check the scenario timetable to establish whether you stop at or pass the station. Stopping-distance boards help you judge your braking; they do not prescribe a fixed brake notch. Act in advance, taking account of your current speed, the gradient, and the train's braking performance.

| Screenshot | Meaning | Driving instructions |
| --- | --- | --- |
| <img src="markdown_pictures/staname.png" alt="Yellow vertical advance station-name board marked 南博麗" width="180"> | **Advance station-name board.** The board shown reads “南博麗,” indicating Minami-Hakurei station ahead. | Check your position and stopping plan. If calling at this station, prepare to slow down on approach; if passing, continue to obey signals and speed limits. The distance from the board to the stopping point varies by station. |
| <img src="markdown_pictures/approchsta.png" alt="Station-approach and advance stopping warning board with one black diagonal stripe on yellow" width="180"> | **Station-approach / advance stopping warning board.** The black diagonal stripe on yellow warns that a station is approaching. Placement distances vary, so it does not indicate a uniform remaining distance. | Check again whether you are scheduled to stop. A stopping train should begin or continue slowing down according to its speed and braking distance. A passing train does not stop solely because of this board. It is not the 100 m distance board with a horizontal black stripe on yellow. |
| <img src="markdown_pictures/dist3.png" alt="300 m stopping-distance reference board with three black horizontal stripes on yellow" width="150"> | **300 m stopping-distance reference board.** Three black horizontal stripes indicate approximately 300 m to the station's base stopping reference point. | Check your speed and remaining braking distance so that you can stop at your train's own stopping target. Increase braking as necessary; do not treat this board as a universal point at which to start braking. |
| <img src="markdown_pictures/dist2.png" alt="200 m stopping-distance reference board with two black horizontal stripes on yellow" width="150"> | **200 m stopping-distance reference board.** Two black horizontal stripes indicate approximately 200 m to the base stopping reference point. | Continue slowing down and watch the stopping target, adjusting braking to the remaining distance. |
| <img src="markdown_pictures/dist1.png" alt="100 m stopping-distance reference board with one black horizontal stripe on yellow" width="150"> | **100 m stopping-distance reference board.** One black horizontal stripe indicates approximately 100 m to the base stopping reference point. | Continue controlling your approach speed, leaving enough margin to adjust the final stopping position. The board itself is not the stopping point. |
| <img src="markdown_pictures/stop.png" alt="Stopping-position signs on one post: a blue-bordered diamond marked 6 above an unnumbered orange-bordered diamond" width="180"> | **Train stopping-position signs.** The blue-bordered “6” is the stopping target for a six-car formation. The unnumbered orange-bordered sign is the route's general stopping target; at major stations, it corresponds to the stopping position for the shorter formations used by Local and Rapid services. These targets may be at the same location or offset from one another. | When calling at the station, stop the front of the train at the target for the current scenario and confirm it using BVE's stopping-position indication. The number on a sign is the number of cars, not a speed or platform number. Do not identify a service type by colour alone, or stop at every stopping-position sign you see. |

**The 100 / 200 / 300 m boards are positioned relative to the station's base stopping reference point and may not correspond exactly to the actual stopping point for every formation.** For example, at Eientei, the six-car stopping point is beyond the four-car stopping point, while the distance boards remain positioned relative to the base stopping point. Make your final stop at the scenario's stopping position and the target for the relevant formation.

#### Gradient Changes

Gradient describes how steeply the track rises or falls and is normally expressed in **‰ (per mille)**. For example, 10‰ means a height change of approximately 10 m over approximately 1,000 m of horizontal distance. Gradient signs are not speed-limit signs and do not require a fixed power or brake notch.

| Screenshot | Meaning | Driving instructions |
| --- | --- | --- |
| <img src="markdown_pictures/slopeup.png" alt="Uphill gradient sign whose white arm facing the approaching train slopes upwards to the left" width="180"> | **Uphill gradient sign.** The white arm facing your train slopes upwards to the left, indicating an uphill gradient ahead. | Adjust power to suit the actual speed and prevent excessive speed loss. If you need to slow down or stop ahead, also account for the effect of the uphill gradient on deceleration. Do not exceed the currently permitted speed. |
| <img src="markdown_pictures/slopedown.png" alt="Downhill gradient sign whose white arm facing the approaching train slopes downwards to the left" width="180"> | **Downhill gradient sign.** The white arm shown slopes downwards to the left, indicating a downhill gradient ahead. | Reduce power in advance and brake as needed to maintain speed, leaving enough braking distance for subsequent stops or restrictions. If a blue downhill speed-restriction board is also present, obey its limit as well. |
| <img src="markdown_pictures/slopeL.png" alt="Level-gradient sign with a horizontal white arm marked L" width="180"> | **Level-gradient sign.** The horizontal white arm and “L” indicate level track ahead. | Readjust power and braking for the change in gradient. Keeping the power used uphill may cause overspeeding, while keeping the braking used downhill may cause unnecessary deceleration. Level track does not mean a speed restriction has ended. |
| <img src="markdown_pictures/slopetun.png" alt="Tunnel gradient sign with an upper-left arrow on white and indistinct numbers below" width="150"> | **Gradient sign inside a tunnel.** The arrow indicates the direction of the gradient; the upper-left arrow shown means uphill. The numbers below are unclear in both this screenshot and the original texture, so the exact gradient cannot be read from them. | Adjust your driving according to the gradient direction and changes in train speed, using the same principles as for outdoor gradient signs. Do not guess that the blurred numbers are a speed limit. |

#### Kilometre Posts and Tunnel Names

| Screenshot | Meaning | Driving instructions |
| --- | --- | --- |
| <img src="markdown_pictures/dist.png" alt="Whole-kilometre post marked 3" width="150"> | **Whole-kilometre post.** The “3” shown marks route kilometre 3, identifying a location along the line. | Use it with route information to check your position. It does not mean that the next station is 3 km away and does not require additional slowing or stopping. |
| <img src="markdown_pictures/disthalf.png" alt="Half-kilometre post with 1/2 above a small 3" width="180"> | **Half-kilometre post.** The “1/2” above the small “3” indicates route kilometre 3.5. | Use it to identify your position and track your progress. Do not read “1/2” as 500 m to the next station. |
| <img src="markdown_pictures/tunnelname.png" alt="Name board for the 第一守矢 tunnel, with 270 below" width="180"> | **Tunnel name and length board.** The screenshot shows the “第一守矢” (Moriya No. 1) tunnel; “270” below gives its length of 270 m. | Identify the tunnel ahead and your current position, and continue watching for signals, gradients, and speed limits inside it. The name and length board itself does not require you to stop, sound the horn, or change speed. |

#### Overhead Line Air Sections

Air sections divide the overhead contact line into power-supply sections. These signs mainly remind drivers to avoid stopping with a pantograph at the section boundary; they must not be confused with signs for dead sections that require power to be switched off when passing. [JR East's explanation of air sections (in Japanese)](https://www.jreast.co.jp/press/2007_1/20070609.pdf) shows the same types of section-area and stopping-position-outside-the-section signs used in this project.

| Screenshot | Meaning | Driving instructions |
| --- | --- | --- |
| <img src="markdown_pictures/section.png" alt="Red and white markings near an overhead line section boundary and an air-section area sign with a cross" width="180"> | **Air-section area sign.** The red and white markings on the overhead line mast and the section sign with “×” below indicate the air-section area, where stopping should be avoided. | Look ahead at the signals and available stopping positions. Pass smoothly when permitted, and avoid stopping the train in the section area. **This sign alone does not mean that you must switch off power, coast, or lower the pantograph.** Follow the train documentation if it gives additional operating instructions. |
| <img src="markdown_pictures/secstop.png" alt="Yellow sign with a red border reading セクション外停止位置, marking a stopping position outside the section" width="180"> | **Stopping-position sign outside the section.** “セクション外停止位置” marks a stopping target clear of the air section, for use when you need to stop and wait nearby. | If you need to stop because of a signal ahead or another reason, use the appropriate stopping position outside the section, provided the signals allow you to reach it. You do not need to stop here during normal running. Never pass a stop signal in order to reach this sign, and still brake immediately in an emergency. |
