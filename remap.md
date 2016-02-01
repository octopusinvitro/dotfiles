# Remap keys in Ubuntu

## Search for the keys

```
xmodmap -pke | grep <KEYNUMBER OR FUNCTION>
```

or type `xev`, press Enter and then press the key.

For keys like print screen, disable it temporarily in **Settings -> Keyboard shortcuts** and then do `xev`, press enter and press the key. Unless you already know the name of the function of the key.

## Make a list of your changes


**F12:** `keycode 96 = F12 F12 F12 F12 F12 F12 XF86Switch_VT_12`  
**Delete:** `keycode 119 = Delete NoSymbol Delete`

**Delete:** `keycode 119 = Delete NoSymbol Delete`  
**Home:** `keycode 110 = Home NoSymbol Home`

**Pause:** `keycode 127 = Pause Break Pause Break Pause Break`  
**End:** `keycode 115 = End NoSymbol End`

**prtscreen:** `keycode 107 = Print Sys_Req Print Sys_Req Print Sys_Req`  
**PgUp:** `keycode 112 = Prior NoSymbol Prior NoSymbol Prior`

**Home:** `keycode 110 = Home NoSymbol Home`  
**PgDn:** `keycode 117 = Next NoSymbol Next NoSymbol Next`

## Tell Ubuntu to make the changes

```
xmodmap -e "keycode 96 = Delete NoSymbol Delete"
xmodmap -e "keycode 119 = Home NoSymbol Home"
xmodmap -e "keycode 127 = End NoSymbol End"
xmodmap -e "keycode 107 = Prior NoSymbol Prior NoSymbol Prior"
xmodmap -e "keycode 110 = Next NoSymbol Next NoSymbol Next"
xmodmap -e "keycode 117 = Pause Break Pause Break Pause Break"
xmodmap -e "keycode 115 = Print Sys_Req Print Sys_Req Print Sys_Req"
xmodmap -e "keycode 112 = F12 F12 F12 F12 F12 F12 XF86Switch_VT_12"
```

Create a `.Xmodmap` file in your home directory with the keys:

```
keycode  96 = Delete NoSymbol Delete
keycode 119 = Home NoSymbol Home
keycode 127 = End NoSymbol End
keycode 107 = Prior NoSymbol Prior NoSymbol Prior
keycode 110 = Next NoSymbol Next NoSymbol Next
keycode 117 = Pause Break Pause Break Pause Break
keycode 115 = Print Sys_Req Print Sys_Req Print Sys_Req
keycode 112 = F12 F12 F12 F12 F12 F12 XF86Switch_VT_12
```

More details: <https://askubuntu.com/questions/296155/how-can-i-remap-keyboard-keys>
