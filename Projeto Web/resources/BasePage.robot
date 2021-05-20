*** Settings ***
Documentation       Este arquivo implementa abertura e fechamento do navegador

***Variables***
${base_url}        https://www.magazineluiza.com.br/



*** Keywords ***

Open Session
    Open Firefox
    Set Selenium Implicit Wait  9
    Set Window Size     1280        800 
    
    


Close Session
    Close Browser

After Test
    Capture Page Screenshot

After Test WCLS  
    Capture Page Screenshot
    
    
Open Firefox
    Open Browser    ${base_url}    firefox   options=add_experimental_option('excludeSwitches', ['enable-logging'])        