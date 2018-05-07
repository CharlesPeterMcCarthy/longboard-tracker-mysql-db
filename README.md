# longboard_db
SQL Files for the Arduino Longboard Device Database

## How To Set Up
  - Create a database on your remote server
  ```
  CREATE DATABASE db_name;
  ```
  - Import `longboard_db.sql` into the Database
  ```
  mysql db_name < longboard_db.sql
  ```
  - Add device info into the `approved_devices` table
    - Device Name
    - Device Pass (Generate an MD5 hash)
    - Email
    - Password (Use the Encryption function in `/php/encrypt_pass.php` through the [Web App](https://github.com/CharlesPeterMcCarthy/longboard_web_app))

  **_Note:_** *The device name and password must match the data stored in `device_info.txt` stored on the Arduino ([Shell Script Repo](https://github.com/CharlesPeterMcCarthy/longboard_shell_script))*

  **_Note:_** *Eventually you won't have to manually enter the device into into the database when I add device registration to the web app interface (All encryption will be built in)*

To view a full description of the project, view these repositories in order:
  - [Arduino Repo](https://github.com/CharlesPeterMcCarthy/longboard_arduino)
  - [Shell Script Repo](https://github.com/CharlesPeterMcCarthy/longboard_shell_script)
  - [API Repo](https://github.com/CharlesPeterMcCarthy/longboard_api)
  - [Web App Repo](https://github.com/CharlesPeterMcCarthy/longboard_web_app)
