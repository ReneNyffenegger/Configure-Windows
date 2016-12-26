@rem 
@rem 
@rem     See also {
@rem 
@rem         Microsoft Keyboard Layouter (http://www.microsoft.com/en-us/download/confirmation.aspx?id=22339)
@rem
@rem         http://vim.wikia.com/wiki/Map_caps_lock_to_escape_in_Windows
@rem            [ especially for the AutoHotkey script ]
@rem
@rem         http://www.calmar.ws/vim/win-map/keymapping_win.html
@rem
@rem         https://github.com/ReneNyffenegger/swap-keys
@rem     }
@rem     
@rem 
@rem 
@rem     Bytes {
@rem     -------
@rem     0 -  3   The first and second DWORDS store header information and 
@rem     4 -  7   should be set to all zeroes for the current version of the Scan Code Mapper.
@rem 
@rem     8 - 12   The third DWORD entry holds a count of the total number of mappings 
@rem              that follow, including the null terminating mapping.
@rem 
@rem     x  - y   format: Target (2 bytes) , key to remap (2 Bytes)    
@rem 
@rem 
@rem 
@rem     IMPORTANT: There is also a Keyboard Layouts key (notice the plural form)
@rem                under the Control key, but that key should not be modified.
@rem 
@rem 
@rem     ------------------------------------------------------------------------------------------- }
@rem 
@rem 
@rem   Scan Codes (Note, there are also Scan Codes for keys like the «mute key»): {
@rem       (Note, 0029 must be entered as 29,00)
@rem 
@rem   ^                 0029
@rem   1                 0002
@rem   2                 0003
@rem   3                 0004
@rem   4                 0005
@rem   5                 0006
@rem   6                 0007
@rem   7                 0008
@rem   8                 0009
@rem   9                 000A
@rem   0                 000B
@rem   ß                 000C
@rem   ´                 000D
@rem   Q                 0010
@rem   W                 0011
@rem   E                 0012
@rem   R                 0013
@rem   T                 0014
@rem   Z                 0015
@rem   U                 0016
@rem   I                 0017
@rem   O                 0018
@rem   P                 0019
@rem   Ü                 001A
@rem   +                 001B
@rem   <                 002B
@rem   A                 001E
@rem   S                 001F
@rem   D                 0020
@rem   F                 0021
@rem   G                 0022
@rem   H                 0023
@rem   J                 0024
@rem   K                 0025
@rem   L                 0026
@rem   Ö                 0027
@rem   Ä                 0028
@rem   Y                 002C
@rem   X                 002D
@rem   C                 002E
@rem   V                 002F
@rem   B                 0030
@rem   N                 0031
@rem   M                 0032
@rem   ,                 0033
@rem   .                 0034
@rem   -                 0035
@rem   Enter             001C
@rem   Shift (Left)      002A
@rem   Shift (Right)     0036
@rem   Ctrl (Left)       001D
@rem   Ctrl (Right)      E01D
@rem   Alt (Left)        0038
@rem   Alt (Rright)      E038
@rem   Space             0039
@rem   Num Lock          0045
@rem   Backspace         000E
@rem   Tabulator         000F
@rem   Scroll Lock       0046
@rem   CapsLock          003A
@rem   Keypad 7          0047
@rem   Keypad 4          004B
@rem   Keypad 1          004F
@rem   Keypad 8          0048
@rem   Keypad 5          004C
@rem   Keypad 2          0050
@rem   Keypad 0          0052
@rem   Keypad *          0037
@rem   Keypad 9          0049
@rem   Keypad 6          004D
@rem   Keypad 3          0051
@rem   Keypad .          0053
@rem   Keypad -          004A
@rem   Keypad +          004E
@rem   Keypad Enter      E01C
@rem   Esc               0001
@rem   F1                003B
@rem   F2                003C
@rem   F3                003D
@rem   F4                003E
@rem   F5                003F
@rem   F6                0040
@rem   F7                0041
@rem   F8                0042
@rem   F9                0043
@rem   F10               0044
@rem   F11               0057
@rem   F12               0058
@rem   Windows (Left)    E05B
@rem   Windows (Right)   E05C
@rem   Windows Context   E05D
@rem 
@rem   ---------------------------- }
@rem 
@rem
@rem                  |00,00,00,00|00,00,00,00|04,00,00,00,01,00,3a,00|3a,00,01,00|1d,e0,5c,e0|00,00,00,00
@rem                  | DWORD 1   | DWORD 2   | 3 Maps    | Map 1     | Map 2     | Map 3:    | Final
@rem                                          +-----------+-----------+-----------+-----------+-------------
@rem                                          |           |           |           |           | Final 4 bytes
@rem                                          | + 1 0000  |           |           | Map 3: Left Windows to Left Ctrl
@rem                                          | Ending    |           | Map 2: Escape to Caps Lock1                                         
@rem                                          |           | Map 1: Caps Lock to Escape
@rem   Ctrl (Right)      E01D
@rem   Windows (Right)   E05C


@reg add "HKLM\System\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /t REG_BINARY /d 00000000000000000400000001003a003a0001001de05ce000000000
