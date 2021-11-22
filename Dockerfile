FROM archlinux:latest

RUN pacman -Sy --noconfirm arduino-cli python python-pyserial git base-devel
RUN arduino-cli config init
RUN arduino-cli config add board_manager.additional_urls https://dl.espressif.com/dl/package_esp32_index.json
RUN arduino-cli config add board_manager.additional_urls https://arduino.esp8266.com/stable/package_esp8266com_index.json
RUN arduino-cli core update-index
RUN arduino-cli core install arduino:avr
RUN arduino-cli core install esp32:esp32
RUN arduino-cli core install esp8266:esp8266
