-----Instructions for installing and setting up the replay script(replays.ahk), by ziep-----

Disclaimer!: You need to be on Windows* and you need to have AutoHotkey installed, right click on the script and select "edit script" to change the contents.** 
1. Install autohotkey: https://www.autohotkey.com/download/ahk-install.exe

2. Save replays.ahk somewhere, it has to be .ahk (.exe, .txt, etc. doesn't work). Optional: if you want to have the script available everytime you turn on your computer, create a shortcut of the .ahk file and save that shortcut in your startup folder (to find your startup folder: windowskey + r opens up "run" in which you search for 'shell:startup' and press enter) otherwise you have to run the program (double click)once before you can use it after pc restart. I have like 10 ahk scripts running at all times and they have virtually no impact on my pc's performance.

3. Customize you keybind, the keybind is marked with a comment on the 9th line, default is ^+h (Ctrl+shift+h) in ahk syntax ^=Ctrl, !=Alt, +=Shift. So if you want your keybind to be Ctrl+Shift+m, the correct syntax is ^+m. This bind will be global and not dependent on your active window, therefore you should be careful before changing it to something that you already use. ctrl+p(print), ctr+c(copy), ctr+v(paste), ctr+a(select all), are a few examples of keys you dont want to interfere with.



-----Instructions on how to use the script when doing tickets-----
Requirements:
! You HAVE to have an instance of hon.exe running
! You HAVE to have the match id copied, if you want it to be automatically copied when you open a new ticket, you can add this line at the bottom of your RAP+ script: $('.rapp-activeMatch strong:contains("Match ID")').trigger('click');

! You HAVE to have the replay downloaded as a .honreplay file in the correct folder, the default folder is C:\Users\YOURUSERNAME\Documents\Heroes of Newerth\game\replays
! You don't have to restart your client after downloading the replay.

Usage:

1. When you open a new ticket, request replays and copy match id like normal***. Download the replay to your folder (actually takes like 1 second if your browser remembers your last download path)

2. Activate the script by pressing your keybind.


-----ERROR HANDLING------

*It's likely that you just have to make some small modifications if you are on Mac.
**it's possible you have to change the "sleep" time if your computer is a bit slow, "sleep, 100" means that the script pauses for 100 milliseconds, 1000ms = 1s.
*** or $('.rapp-activeMatch strong:contains("Match ID")').trigger('click');
