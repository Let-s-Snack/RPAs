# Imports
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
import os 
from dotenv import load_dotenv
from time import sleep

load_dotenv()

# Creating driver
chrome_options = Options()
chrome_options.add_argument("--headless")
driver = webdriver.Chrome()

EMAIL = os.getenv('EMAIL')
PWD = os.getenv('PWD')
URLS = os.getenv('URLS').split(',')

driver.get(URLS[0])

# Login
campo_email = driver.find_element(By.XPATH, "/html/body/div/div[2]/div[2]/div/div[1]/div[2]/input")

driver.execute_script(f"arguments[0].value = '{EMAIL}';", campo_email)

sleep(2)
driver.find_element(By.XPATH, '/html/body/div/div[2]/div[2]/button').click()

sleep(8)
driver.find_element(By.XPATH,'/html/body/div/form[1]/div/div/div[2]/div[1]/div/div/div/div/div/div[3]/div/div[2]/div/div[3]/div/div[2]/input').send_keys(PWD)

driver.find_element(By.XPATH, '/html/body/div/form[1]/div/div/div[2]/div[1]/div/div/div/div/div/div[3]/div/div[2]/div/div[5]/div/div/div/div/input').click()

sleep(3)
driver.find_element(By.XPATH, '/html/body/div/form/div/div/div[2]/div[1]/div/div/div/div/div/div[3]/div/div[2]/div/div[3]/div[2]/div/div/div[2]/input').click()

# Updating
sleep(15)
driver.find_element(By.XPATH, '/html/body/div[1]/root/mat-sidenav-container/mat-sidenav-content/tri-shell-panel-outlet/tri-item-renderer-panel/tri-extension-panel-outlet/mat-sidenav-container/mat-sidenav-content/div/div/div[1]/tri-shell/tri-item-renderer/tri-extension-page-outlet/div[2]/dataset-details-container/dataset-action-bar/action-bar/action-button[2]/button').click()
sleep(3)
driver.find_element(By.XPATH, "/html/body/div[2]/div[4]/div/div/div/span[1]/button").click()
sleep(8)

driver.get("https://app.powerbi.com/groups/me/datasets/efaba503-fdea-4bc0-a1c4-4e29ce5ba06b/details?experience=power-bi")

try:
    for i in URLS[1:]:
        sleep(15)
        driver.find_element(By.XPATH, '/html/body/div[1]/root/mat-sidenav-container/mat-sidenav-content/tri-shell-panel-outlet/tri-item-renderer-panel/tri-extension-panel-outlet/mat-sidenav-container/mat-sidenav-content/div/div/div[1]/tri-shell/tri-item-renderer/tri-extension-page-outlet/div[2]/dataset-details-container/dataset-action-bar/action-bar/action-button[2]/button').click()
        sleep(3)   
        driver.find_element(By.XPATH, "/html/body/div[2]/div[4]/div/div/div/span[1]/button").click()
        sleep(8)
except:
    pass

# Closing the driver
driver.close()