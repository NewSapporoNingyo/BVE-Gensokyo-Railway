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

