### Prismatic-Night

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

### Instructions

- For firefox

**Important**: see line 204 of **userChrome.css**

```
 /* #navigator-toolbox:hover:not(:focus-within)
  {
	margin-top: -30px;
  }*//*uncomment this if u want focus only on pressing ctrl+L*/
```

This is commented by default. So the url bar, addons, and other stuff can be accessed by hovering on the tab area with your mouse.

If this is uncommented, you need to press **Ctrl+L** to access the url bar and other stuff. I prefer this mode as I find the access on hover a little annoying. So i've included it too.

**Setting the theme...**
Place both chrome and startpage(or startpage_alt) in .mozilla/firefox/PROFILE/ to use them. You can get the location of your PROFILE dir in about:profiles. Set the startpage for Home in preferences and restart.

 The chrome dir contains 2 types of files.

   1. userChrome.css and userContent.css for the UI and the default homepage respectively.

   2. userChrome.xml and userChrome.js for setting the New tab page to a custom page.

If you are using FF 69+ you need to enable this first: about:config > toolkit.legacyUserProfileCustomizations.stylesheets > true

- For the startpage: 

To enable the newtab startpage functionality open userChrome.js and then change const mypage = "file:///home/debasis/.mozilla/firefox/sawjo289.default-esr/startpage/index.html"; Put the path of your index.html in the quotation.

- Openbox theme:

Copy the Prismatic-Night dir from openbox dir to ~/.themes/ to use it and select the theme with your Openbox Configuration Manager.

- Tint2 theme: 

Copy the contents of the tint2 dir to ~/.config/tint2/ and select the theme with your tint2 gui editor/ theme selector. Do not forget to put the correct path of the icons in your tint2rc otherwise the icons wont appear(change it to your username in /home/USERNAME/.config/tint2/icons/icon.png).

- Folder and systray icons:

If ur using Nemo or any fork of Nautilus as your file manager, u can directly select the icons through right-click menu -> properties after selecting a folder. For other file managers u have to replace the icons of ur icon theme with the ones here. You can also replace the icons of any icon pack with my icons. For the systray icons copy the contents to for example /usr/share/icons/Papirus/16x16/panel and replace the icons. Then restart session.

- Geany colorscheme:

Copy the Prismatic-Night.conf to ~/.config/geany/colorschemes.
