# Origianl ESP32FS project can be found here:
source:  https://github.com/me-no-dev/arduino-esp32fs-plugin
releases:  https://github.com/me-no-dev/arduino-esp32fs-plugin/releases/tag/1.0


# Arduino ESP32-S3 filesystem uploader 
https://github.com/kitecraft/arduino-esp32s3fs-plugin
Arduino plugin which packs sketch data folder into SPIFFS filesystem image,
and uploads the image to ESP32-S3 flash memory.

## Installation

- Make sure you use one of the supported versions of Arduino IDE and have ESP32 core installed.
- In your Arduino sketchbook directory, create tools directory if it doesn't exist yet.
- Unpack the tool into tools directory (the path will look like ```<home_dir>/Arduino/tools/ESP32S3FS/tool/esp32s3fs.jar```).
- Restart Arduino IDE. 

On the OS X create the tools directory in ~/Documents/Arduino/ and unpack the files there

## Usage

- Open a sketch (or create a new one and save it).
- Go to sketch directory (choose Sketch > Show Sketch Folder).
- Create a directory named `data` and any files you want in the file system there.
- Make sure you have selected a board, port, and closed Serial Monitor.
- Select *Tools > ESP32S3 Sketch Data Upload* menu item. This should start uploading the files into ESP32-S3 flash file system.

  When done, IDE status bar will display SPIFFS Image Uploaded message. Might take a few minutes for large file system sizes.

## Credits and license

- Licensed under GPL v2 ([text](LICENSE))


## Issues and suggestions

File issues here on github, or ask your questions on the [esp32.com forum](http://esp32.com).
