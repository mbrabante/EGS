*** Settings ***
Resource    GlobalResources.robot

*** Keywords ***
Launch EGS Portal
    [Arguments]    ${siteURL}
    Open Browser    ${siteURL}    browser=${BROWSER}   
    ...    remote_url=${REMOTE_URL}
    ...    desired_capabilities=${CAPABILITIES}      
    Set Selenium Speed    0.15 seconds
    Maximize Browser Window
    
Launch EGS
    [Arguments]    ${url}
    Open Browser    ${url}    chrome
    Set Selenium Speed    0.15 seconds
    Maximize Browser Window
    
User Logout
    Click Element    ${loc_imgUserAvatar}
    Wait Until Element Is Visible    ${loc_linkLogout}    5
    Click Element    ${loc_linkLogout}
    
Valid Client Login        
    Launch EGS Portal    ${clientURL}
    User enters valid Client email and password 
    
Valid Login        
    Launch EGS    ${clientURL}
    User enters valid Client email and password    

User navigate to ${module}
    Wait Until Element Is Visible    //ul[@class='navigation navigation-main']//a/span[contains(text(), '${module}')]    10
    Click Element    //ul[@class='navigation navigation-main']//a/span[contains(text(), '${module}')]
    
Click ${btnLabel} button
    Wait Until Element Is Visible    //button[.='${btnLabel}']
    Click Element    //button[.='${btnLabel}']    
     
    


