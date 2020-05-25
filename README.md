### Prismatic-Night
![firefox](/ff.png)
![folders](/folders.png)
![ncmpcpp](/ncmpcpp.png)
![all](/all.png)

### Instructions

- For firefox
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

If ur using Nemo or any fork of Nautilus as your file manager, u can directly select the icons through right-click menu -> properties after selecting a folder. For other file managers u have to replace the icons of ur icon theme with the ones here. For more info read and see the papirus mod section [here](https://github.com/AnubisZ9/DebianDots).
