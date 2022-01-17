*** Settings ***
Resource    ../Global/GlobalResources.robot

*** Keywords ***
User enters valid ${option} email and password
    Run Keyword If    '${option}' == 'Admin'    Run Keywords    Wait Until Element Is Visible    ${loc_inputloginEmail}    10    
    #Enter Email Address
    ...    AND    Input Text    ${loc_inputloginEmail}    ${adminUsername}
    #Enter Password
    ...    AND    Input Text    ${loc_inputloginPassword}    ${adminPassword}
    Run Keyword If    '${option}' == 'Client'    Run Keywords    Wait Until Element Is Visible    ${loc_inputClientloginEmail}    10
    #Enter Email Address
    ...    AND    Input Text    ${loc_inputClientloginEmail}    ${clientUsername}
    #Enter Password
    ...    AND    Input Text    ${loc_inputClientloginPassword}    ${clientPassword}   
    #Click Login button
    Click Element    ${loc_btnLogin}
    
User enters ${option} email and invalid password
    Run Keyword If    '${option}' == 'Admin'    Run Keywords    Wait Until Element Is Visible    ${loc_inputloginEmail}    10    
    #Enter Email Address
    ...    AND    Input Text    ${loc_inputloginEmail}    ${adminUsername}
    #Enter Password
    ...    AND    Input Text    ${loc_inputloginPassword}    ${adminInvalidPwd}
    Run Keyword If    '${option}' == 'Client'    Run Keywords    Wait Until Element Is Visible    ${loc_inputClientloginEmail}    10
    #Enter Email Address
    ...    AND    Input Text    ${loc_inputClientloginEmail}    ${clientUsername}
    #Enter Password
    ...    AND    Input Text    ${loc_inputClientloginPassword}    ${clientInvalidPwd}   
    #Click Login button
    Click Element    ${loc_btnLogin}
    
The ${user} user should be able to login
    Wait Until Element Is Visible    ${loc_txtUsername}
    #Verify if Username is correct
    Run Keyword If    '${user}'=='Admin'    Element Should Contain    ${loc_txtUsername}    ${adminName}
    Run Keyword If    '${user}'=='Client'    Element Should Contain    ${loc_txtUsername}    ${clientName}
    #Verify if the Status/Role
    Run Keyword If    '${user}'=='Admin'    Element Should Contain    ${loc_txtUserStatus}    Available
    Run Keyword If    '${user}'=='Client'    Element Should Contain    ${loc_txtUserStatus}    ${userRole}
    
The ${user} user should not be able to login
    Wait Until Element Is Visible    ${loc_msgInvalidLogin}    10
    Run Keyword If    '${user}'=='Admin'    Element Should Contain    ${loc_msgInvalidLogin}    ${invalidAdminLogin}
    Run Keyword If    '${user}'=='Client'    Element Should Contain    ${loc_msgInvalidLogin}    ${invalidClientLogin}