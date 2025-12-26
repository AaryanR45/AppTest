# Appium Android Automation Demo

This project demonstrates **end-to-end mobile automation testing** of an Android application using **Appium (v2)** with **Python**, **PyTest**, **Android Emulator**, and **Appium Inspector**.

## Tech Stack & Tools

- **Programming Language**: Python 3.10+
- **Automation Tool**: Appium v2
- **Test Framework**: PyTest
- **Mobile Platform**: Android
- **Automation Engine**: UiAutomator2
- **IDE**: PyCharm
- **Device**: Android Emulator (Android Studio)
- **Inspector Tool**: Appium Inspector
- **Version Control**: Git & GitHub

## Project Structure

Apptest/  

│── tests/  

│ └── test_settings.py  

│── requirements.txt  

│── .gitignore  

│── README.md

## Prerequisites

Make sure the following are installed and configured:

### 1️⃣ System Requirements
- Windows / macOS / Linux
- Python 3.10 or above
- Git
- Node.js (LTS)
- jdk


### 2️⃣ Android Setup
- Android Studio installed
- Android SDK & Platform Tools installed
- Android Emulator (AVD) created and running

#### Verify device connection:  

bash  

adb devices

### 3️⃣ Appium Setup (v2)
#### Install Appium globally:  

bash  

npm install -g appium

#### Install Android driver:  

bash  

appium driver install uiautomator2

#### Verify:  

bash  

appium driver list --installed

#### Start Appium server:  

bash  

appium

### 4️⃣ Python Dependencies
Install required libraries:  

bash   

pip install -r requirements.txt


### Appium Inspector Usage

- Start Android Emulator  
- Start Appium Server  
- Open Appium Inspector (Desktop App)  
- Use the following capabilities:
json  

{  

  "platformName": "Android",  
  
  "appium:automationName": "UiAutomator2",  
  
  "appium:deviceName": "Android Emulator",  
  
  "appium:platformVersion": "11",  
  
  "appium:appPackage": "com.android.settings",  
  
  "appium:appActivity": ".Settings"  
  
}  

These need to changed for different apps/apk. This is only a demo for default android settings app.  

- Start session and inspect UI elements

- Capture locators for automation scripts

### Running the Tests  

Run all tests  

bash  

pytest -v  

robot -d reports tests/
