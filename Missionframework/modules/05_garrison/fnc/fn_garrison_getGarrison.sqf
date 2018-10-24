/*
    KPLIB_fnc_

    File: fn_garrison_getGarrison.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2018-10-24
    Last Update: 2018-10-24
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        Gets the specific garrison array as reference for a given sector.

    Parameter(s):
        _sector - Markername of the sector                                  [STRING, defaults to ""]
        _active - Selector for the persistent or the active garrison array  [BOOL, defaults to false]

    Returns:
        Garrison array of the sector as reference [ARRAY]
*/

params [
    ["_sector", "", [""]],
    ["_active", false, [true]]
];

private _array = KPLIB_garrison_array;

if (_active) then {
    _array = KPLIB_garrison_active;
};

_array select (_array findIf {_x select 0 == _sector})
