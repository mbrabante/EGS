*** Settings ***
Resource    ../../Resources/Keywords/Global/GlobalResources.robot

*** Test Cases ***
Login to Admin Portal   
    [Tags]    Login
    [Teardown]    Run Keywords    Report Lambdatest Status    ${TEST_NAME}    ${TEST_STATUS}
    ...    AND    User Logout
    ...    AND    Close Browser
       
    Given Launch EGS Portal   ${adminURL}
    
    When User enters Admin email and invalid password
    Then The Admin User should not be able to login
     
    When User enters valid Admin email and password
    Then The Admin User should be able to login
    
Login to Client Portal
    [Tags]    Login
    [Teardown]    Run Keywords    Report Lambdatest Status    ${TEST_NAME}    ${TEST_STATUS}
    ...    AND    User Logout
    ...    AND    Close Browser
    
    Given Launch EGS Portal  ${clientURL}
    
    When User enters Client email and invalid password
    Then The Client user should not be able to login
     
    When User enters valid Client email and password
    Then The Client user should be able to login   