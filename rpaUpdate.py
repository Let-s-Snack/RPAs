from time import sleep
from selenium import webdriver
from selenium.webdriver.common.by import By
import os 
from dotenv import load_dotenv

load_dotenv()

# Creating driver
driver = webdriver.Chrome()

driver.get("https://app.powerbi.com/groups/me/list?experience=power-bi")


# Login
campo_email = driver.find_element(By.XPATH, "//input[@placeholder='Enter email']")

driver.execute_script(f"arguments[0].value = '{os.getenv('EMAIL')}';", campo_email)

sleep(2)
driver.find_element(By.XPATH, '//*[@id="submitBtn"]').click()

sleep(3)
driver.find_element(By.XPATH,'//*[@id="i0118"]').send_keys(os.getenv('PWD'))
driver.find_element(By.XPATH, '//*[@id="idSIButton9"]').click()

sleep(3)
driver.find_element(By.XPATH, '//*[@id="idSIButton9"]').click()


# Updating
sleep(15)
cont = 1

while True:
    try:
        try:
            driver.find_element(By.XPATH, '//*[@id="content"]/tri-shell/tri-item-renderer/tri-extension-page-outlet/div[2]/workspace-view/tri-workspace-view/trident-workspace-shell/mat-sidenav-container/mat-sidenav-content/tri-workspace-action-base/div/tri-list-filter/div/tri-search-box/button').click()
        except:
            pass
        
        driver.find_element(By.XPATH, '//*[@id="content"]/tri-shell/tri-item-renderer/tri-extension-page-outlet/div[2]/workspace-view/tri-workspace-view/trident-workspace-shell/mat-sidenav-container/mat-sidenav-content/tri-workspace-action-base/div/tri-list-filter/div/tri-search-box/input').send_keys("Let's Snack")
        
        type = driver.find_element(By.XPATH,f'//*[@id="artifactContentView"]/div[1]/div[{cont}]/div[4]/span/span').text
        if type == 'Modelo semântico':
            driver.find_element(By.XPATH, f'//*[@id="artifactContentView"]/div[1]/div[{cont}]/div[2]/div/span/span/a').click()
            sleep(10)
                        
            driver.find_element(By.XPATH, '//*[@id="content"]/tri-shell/tri-item-renderer/tri-extension-page-outlet/div[2]/dataset-details-container/dataset-action-bar/action-bar/action-button[2]/button').click()
            
            driver.find_element(By.XPATH, "/html/body/div[2]/div[4]/div/div/div/span[1]/button").click()
            sleep(4)
            driver.find_element(By.XPATH, '//*[@id="navbar-item-activeWorkspace"]/button/div').click()
            sleep(4)
            
        cont += 1
    except:
        break
    
    
# Closing the driver
driver.close()
    