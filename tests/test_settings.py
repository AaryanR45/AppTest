import time
import pytest
from appium import webdriver
from appium.options.android import UiAutomator2Options
from appium.webdriver.common.appiumby import AppiumBy

@pytest.fixture
def driver():
    options = UiAutomator2Options()
    options.platform_name = "Android"
    options.device_name = "Android Emulator"
    options.platform_version = "11"
    options.app_package = "com.android.settings"
    options.app_activity = ".Settings"
    options.automation_name = "UiAutomator2"

    driver = webdriver.Remote(
        command_executor="http://localhost:4723",
        options=options
    )
    yield driver
    driver.quit()

def test_open_network_settings(driver):
    time.sleep(3)
    network = driver.find_element(
        AppiumBy.ANDROID_UIAUTOMATOR,
        'new UiSelector().text("Network & internet")'
    )
    network.click()
