```
___________________         _________            .__        __          
\__    ___/\_____  \       /   _____/ ___________|__|______/  |_  ______
  |    |     _(__  <       \_____  \_/ ___\_  __ \  \____ \   __\/  ___/
  |    |    /       \      /        \  \___|  | \/  |  |_> >  |  \___ \ 
  |____|   /______  /     /_______  /\___  >__|  |__|   __/|__| /____  >
                  \/              \/     \/         |__|             \/ 
```

# t3_heal - Hospital Revival Script for QBCore
The `t3_heal` resource provides a script that allows players to revive at specific hospital locations in GTA V's FiveM roleplaying servers. Designed for QBCore frameworks, this resource enables multiple revival spots and integrates seamless cash transactions for the revival services.

## Features
- Multiple hospital check-in points for player revival.
- Configurable revival fee ($200 by default).
- Easy integration with QBCore-based servers.

## Installation
Follow these steps to install `t3_heal` on your FiveM server:

1. **Clone or download this repository.**
   - If downloading the zip, unzip the contents into your server's resource directory.
   - If cloning, ensure you clone it directly into your resource directory.

2. **Add the resource to your server configuration.**
   - Open your server's `server.cfg` file.
   - Add the following line:
     ```
     ensure t3_heal
     ```

3. **Start your server.**
   - Use the server console or restart command to initiate your server with the new resource.

## Configuration
You can customize the coordinates and the revival fee by editing the `config.lua` file in the `t3_heal` resource folder.

Example configuration:
```lua
Config = {}

-- Multiple Coordinates for hospital check-ins -- This vector is from Maps4all Pillbox
Config.HospitalCheckIns = {
    vector3(308.18, -595.12, 43.28),  -- Pillbox Hill Medical Center
    --vector3(1839.6, 3672.93, 34.28),  -- Sandy Shores Medical Center
    --vector3(-247.76, 6331.23, 32.43)  -- Paleto Bay Medical Center
}

-- Revival fee
Config.RevivalFee = 200

Usage
Approach any of the designated hospital check-in spots and press [E] to check in for revival. Ensure you have the required amount ($200 by default) for the revival service.

Author
T3D
License
This project is licensed under the MIT License - see the LICENSE.md file for details.


```lua

---------------------------------------------------------------------------------------------------------------------

████████╗██████╗ ██████╗     ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗███████╗
╚══██╔══╝╚════██╗██╔══██╗    ██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
   ██║    █████╔╝██║  ██║    ███████╗██║     ██████╔╝██║██████╔╝   ██║   ███████╗
   ██║    ╚═══██╗██║  ██║    ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ╚════██║
   ██║   ██████╔╝██████╔╝    ███████║╚██████╗██║  ██║██║██║        ██║   ███████║
   ╚═╝   ╚═════╝ ╚═════╝     ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ╚══════╝
                                                                                 
---------------------------------------------------------------------------------------------------------------------

```lua
