## Prismatic-Night

If you're seeing something unexpected OR the result doesn't match the screenshots OR you want me to add new features to the startpage OR you need help in modifing the existing files, [click on this](https://github.com/dbuxy218/Prismatic-Night/issues/new/choose) to open an issue and I'll try to solve it. Post a screenshot of the problem, your current OS as well as the version of firefox you're using. 

#### About the Startpage

The Startpage is hosted using github-pages. [Click here](https://dbuxy218.github.io/Prismatic-Night/) to see the live preview.
The Startpage currently supports searching with DuckDuckgo and Google. Click on the search engine logo image to toggle the search engine.

![engine](/screenshots/engineToggle.gif)

### Table of Contents
│── [Instructions](#Instructions)<br>│   │── [Firefox theme](#Firefoxtheme)<br>│   │   │── [Setting the userchrome](#userchrome)<br>│   │   │── [Setting the startpage as the Home page](#homepage)<br>│   │   └── [Setting the startpage as the New Tab page](#newtab)<br>│   │── [Openbox theme](#openbox)<br>│   │── [Tint2 theme](#tint2)<br>│   │── [Folder and systray icons](#icons)<br>│   │── [Geany colorscheme](#geany)<br>│   └── [Zathura](#zathura)<br>└── [Screenshots](#scrots)<br>

## Instructions <a name="Instructions"></a>

## Firefox theme <a name="Firefoxtheme"></a>
(**tested in Firefox 80.0**)

### Setting the userchrome <a name="userchrome"></a>
Place the chrome dir in `~/.mozilla/firefox/PROFILE/` to use them. You can get the location of your PROFILE dir in `about:profiles` (type this in the address bar in your browser).

If you are using FF 69+ you need to enable this first: `about:config > toolkit.legacyUserProfileCustomizations.stylesheets > true`

**Also, set the UI density to compact.**

Right-click on tabs bar/nav bar > Customize.. > Density > Compact

![uidensity](/screenshots/uidensity.png)

**Important**: see [userChrome.css](https://github.com/dbuxy218/Prismatic-Night/blob/master/firefox/chrome/userChrome.css)

![patches](/screenshots/patches.png)

The userchrome is divided into various "patch files" so that it will be easier to add/ edit the different bits.

Lines *11* and *12* contains two nav bar access methods(use any **one** at once, i.e. uncomment line 11 or 12. If one of them is uncommented the other must be commented):

#### *Hover access*

![hover](/screenshots/hover.gif)

This is the default access method. Just hover on the tab area with your cursor to access the nav bar and other stuff.


#### *Ctrl+L access*

![ctrlL](/screenshots/ctrl_L.gif)

If this is uncommented, you need to press **Ctrl+L** to access the url bar and other stuff. I prefer this mode as I find the access on hover a little annoying. So i've included it too.(previously this was the default mode but some people who weren't aware of the Ctrl+L feature was having problem. So i decided to make this optional and the access on hover default).

If you want the nav bar to remain unhidden, comment both lines *11* and *12*.

##### **BONUS**: uncomment line 8 to put the tabs in the bottom. 

### Setting the startpage as the Home page <a name="homepage"></a>

Copy the startpage dir to `~/.mozilla/firefox/PROFILE/` just like above. Right click on the `index.html` from the startpage dir and open with firefox. Now copy the location of the file from the address bar. It looks like this: `file:///home/debasis/.mozilla/firefox/sawjo289.default-esr/startpage/index.html`. Open `preferences > Home` from the hamburger menu, select custom URLs and paste the address like so:

![prefs](/screenshots/pref.png)

Restart firefox.

### Setting the startpage as the New Tab page <a name="newtab"></a>
In the older firefox versions this step was very easy and straight forward but now it's a bit [complicated](https://support.mozilla.org/en-US/kb/customizing-firefox-using-autoconfig). But fortunately if you follow these steps it will be quite easy([credit/for windows](https://www.reddit.com/r/firefox/comments/ge86z4/newtab_page_to_local_file_firefox_76_redux/)):

- Open the firefox/newtab/ dir in your file manager. It contains `local-settings.js` and `mozilla.cfg`.
- Open `mozilla.cfg` in any text editor. It looks like this:

![prefs](/screenshots/cfg.png)

- In line 7 paste the address of the `index.html`(see previous section) in the double quotes. Save and close the file.

- Open your terminal and `cd` into firefox/newtab/ (location of `local-settings.js` and `mozilla.cfg`). 
- Now run the following commands as root user:
```
sudo cp mozilla.cfg /usr/lib/firefox/
sudo cp local-settings.js /usr/lib/firefox/defaults/pref/
```
![setpage](/screenshots/setpage.png)
- Restart firefox (Done!).

---

### Openbox theme <a name="openbox"></a>

Copy the Prismatic-Night dir from dots/openbox dir to ~/.themes/ or /usr/share/themes/ to use it and select the theme with your Openbox Configuration Manager.

#### Tint2 theme <a name="tint2"></a>

Copy the contents of the dots/tint2(or tint2-alt) dir to ~/.config/tint2/ and select the theme with your tint2 gui editor/ theme selector. Do not forget to put the correct path of the icons in your tint2rc otherwise the icons wont appear(change it to your username in /home/USERNAME/.config/tint2/icons/icon.png).

#### Folder and systray icons <a name="icons"></a>

If ur using Nemo or any fork of Nautilus as your file manager, u can directly select the icons through right-click menu -> properties after selecting a folder. For other file managers u have to replace the icons of ur icon theme with the ones here. You can also replace the icons of any icon pack with my icons. For the systray icons copy the contents to for example /usr/share/icons/Papirus/16x16/panel and replace the icons. Then restart session.

#### Geany colorscheme <a name="geany"></a>

Copy the dots/geany/Prismatic-Night.conf to ~/.config/geany/colorschemes.

#### Zathura <a name="zathura"></a>

Copy the dots/zathura dir to ~/.config/

---

## Screenshots <a name="scrots"></a>

1. **Firefox**, **tint2**

![firefox](/screenshots/ff.png)

2. **128x128 folder designs**

![folders](/screenshots/folders.png)

3. **ncmpcpp**, **xfce4-notify**

![ncmpcpp](/screenshots/ncmpcpp.png)

4. **Geany**, **urxvt**, **nemo**

![all](/screenshots/all.png)

5. **Zathura**

![zathura](/screenshots/zathura.png)
