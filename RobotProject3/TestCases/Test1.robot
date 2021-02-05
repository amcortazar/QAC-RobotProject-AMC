*** Settings ***
Library    SeleniumLibrary    
Documentation    Cette suite de tests est pour expliquer la synchronization


*** Test Cases ***
loginTest1 
    Open Browser    https://opensource-demo.orangehrmlive.com/    gc
    Maximize Browser Window
         
    #Set Selenium Speed    4s  #temps d'arrête aprés chaque instruction

    Input Text    xpath=//input[@id='txtUsername']    Admin
    Input Password   xpath=//input[@id='txtPassword']    admin123   
    Click Button    xpath=//input[@id='btnLogin']  

logoffTest2 
    Open Browser    https://opensource-demo.orangehrmlive.com/    gc
    Maximize Browser Window
         
    #Set Selenium Speed    2s  #temps d'arrête aprés chaque instruction

    Input Text    xpath=//input[@id='txtUsername']    Admin
    Input Password   xpath=//input[@id='txtPassword']    admin123   
    Click Button    xpath=//input[@id='btnLogin']     
    Click Link    xpath=//a[@id='welcome']   
    Click Link    link=Logout     
 

loginTest3 
    Open Browser    https://opensource-demo.orangehrmlive.com/    gc
    Maximize Browser Window
    
    ${timeOut} =     Get Selenium Timeout
    Log To Console    ${timeOut}    
    
    #Set Selenium Timeout    20s
    
    ${timeOut} =     Get Selenium Timeout
    Log To Console    ${timeOut}   
    
    Input Text    xpath=//input[@id='txtUsername']    Admin
    Input Password   xpath=//input[@id='txtPassword']    admin123   
    Click Button    xpath=//input[@id='btnLogin']  
    Wait Until Page Contains    Dashboard    
    
 
loginTest4 
    Open Browser    https://opensource-demo.orangehrmlive.com/    gc
    Maximize Browser Window         
    
    Input Text    xpath=//input[@id='txtUsername']    Admin
    Input Password   xpath=//input[@id='txtPassword']    admin123
    
    #Set Selenium Implicit Wait    20s   
    Click Button    xpath=//input[@id='btnLogin']     



loginTest5
    Log To Console    Hello    
    [Documentation]    Ceci est un simple test

