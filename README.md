


<div align="center">

  <img src="https://raw.githubusercontent.com/owospace/spce.moe/master/logo.png" width="160" height="148">
  <h1 align="center">Tsukimi-DST</h1>

  <p align="center">
    This contains configurations & setup for the 'Tsukimi' Don't Starve Together dedicated server.<br>
    <a href="https://github.com/owospace/Tsukimi-DST#getting-started"><strong>Setup »</strong></a>
    <br>
  </p>

</div><br><br>

<div>

  <h2>About Tsukimi-DST</h2>

  Tsukimi-DST is a repository provided to help manage<br>
  the configurations & setup files for the 'Tsukimi'<br>
  Don't Starve Together dedicated server.<br>
  
  This will be used to make changes & keep track of the<br>
  project in a more organised and managed fashion. You are<br>
  more than welcome to fork this project to edit/refactor<br>
  for your own usecase. (๑¯ω¯๑)<br>

</div><br><br>

<div>

  <h2>Getting Started</h2>

  To get the project installed, follow this simple guide.<br>

  <h3>Prerequisites:</h3>

  * [A Linux Host](https://www.debian.org/download)<br>
  ```
    We used Debian in this instance.
    https://www.debian.org/download
  ```
  <br>

  * [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD#Linux)<br>
  ```
    We had to do some work arounds for adding multiverse (Ubuntu packages) to Debian.
    https://developer.valvesoftware.com/wiki/SteamCMD#Linux
  ```
  <br>
  
  * [A Klei Account with DST](https://accounts.klei.com/login)<br>
  ```
    https://accounts.klei.com/login
  ```
  <br>

  <h3>Installation:</h3>
  
  1. Install dependencies:<br>
  ```
    sudo apt install libstdc++6 libgcc1 libcurl4-gnutls-dev wget git nano
  ```

  2. Create & Setup a Server with Klei:<br>
  ```
    Go to this page and sign in. (We used Steam in this instance)
    https://accounts.klei.com/login

    Go to the 'Games' tab at the top when signed in.

    Go to 'Game Servers' under 'Don't Starve Together'

    Click 'Add New Server' after entering a random cluster name (Note: Server name is determined by the cluster.ini file.)

    Click configure under your new server. Then download said configuration.
  ```

  3. Setup the server configuration:<br>
  ```
    Move the 'MyDediServer.zip' file you downloaded to ~/.klei/DoNotStarveTogether/
    
    Unzip the 'MyDediServer.zip' file into ~/.klei/DoNotStarveTogether/ (You should see a new folder)
  ```

  4. Navigate to the home directory and install the Dedicated Server:<br>
  ```
    Go to your home folder:
    cd ~

    Clone the 'install.sh' file:
    wget https://raw.githubusercontent.com/owospace/Tsukimi-DST/master/src/install.sh

    Mark the 'install.sh' file as executable:
    chmod +x install.sh

    Run the install.sh file:
    ./install.sh
    
    This script will automatically download the Don't Starve Together server files.
  ```

  5. Clone the Tsukimi-DST Repo:<br>
  ```
    Clone this repo into the home folder. (~) (You should still be here.)
    git clone https://github.com/owospace/Tsukimi-DST
  ```

  6. Setup Workshop/Mods (OPTIONAL):<br>
  ```
    Setup the workshop content
    cp -R Tsukimi-DST/src/mods dontstarvetogether_dedicated_server/

    Configure your workshop collection/mods (or feel free to use our own Collection!)
    nano ~/dontstarvetogether_dedicated_server/mods/dedicated_server_mods_setup.lua

    -- If using our collection, make sure to copy these two files to enable the mods.
    cp Tsukimi-DST/src/.klei/DoNotStarveTogether/MyDediServer/Master/modoverrides.lua ~/.klei/DoNotStarveTogether/MyDediServer/Master
    cp Tsukimi-DST/src/.klei/DoNotStarveTogether/MyDediServer/Master/modoverrides.lua ~/.klei/DoNotStarveTogether/MyDediServer/Caves
    
    -- If using your own collection; you will also need to update another file:
    nano ~/.klei/DoNotStarveTogether/MyDediServer/Master/modoverrides.lua

    You will also need to copy this file to the caves instance:
    cp ~/.klei/DoNotStarveTogether/MyDediServer/Master/modoverrides.lua ~/.klei/DoNotStarveTogether/MyDediServer/Caves/modoverrides.lua
  ```

  7. Start your Don't Starve Together server:<br>
  ```
    Clone the 'start.sh' script:
    wget https://raw.githubusercontent.com/owospace/Tsukimi-DST/master/src/start.sh

    Set the 'start.sh' script to be executable:
    chmod +x start.sh

    Run the server:
    ./start.sh
  ```

  8. Updating your Don't Starve Together server:<br>
  ```
    Clone the 'update.sh' script:
    wget https://raw.githubusercontent.com/owospace/Tsukimi-DST/master/src/update.sh

    Set the 'update.sh' script to be executable:
    chmod +x start.sh

    Update the server:
    ./update.sh

    If you are using Workshop/Mods; you will need to 're-patch' your mods:
    mv ~/dedicated_mods_backup.lua ~/dontstarvetogether_dedicated_server/mods/dedicated_server_mods_setup.lua
  ```

</div><br><br>

<div>

  <h2>Roadmap & Updates</h2>

  - [ ] Upload our bash scripts to this repo.

  <p>Please see the <a href="https://github.com/owospace/Tsukimi-DST/issues">open issues</a> for a list of proposed features (as well as known issues).</p>

</div><br><br>

<div>

  <h2>Contributing</h2>

  <p>If you want to make a contribution, please fork the repository & create a pull request. If you have a suggestion you would want to see, you can <a href="https://github.com/owospace/Tsukimi-DST/issues/new">open a new issue</a> with your request.</p>

  1. Fork the project<br>
  2. Create your Feature Branch (`git checkout -b feature/YourFeature`)<br>
  3. Commit changes (`git commit -m 'This is my feature commit.'`)<br>
  4. Push to the Branch (`git push origin feature/YourFeature`)<br>
  5. Open a Pull Request.

</div><br><br>

<div>

  <h2>Contact & Support</h2>

  * [biz(at)spce.moe](mailto:biz@spce.moe) - Send me mail<br>
  * [GitHub (This Project)](https://github.com/owospace/Tsukimi-DST) - Project Link

</div><br><br>
