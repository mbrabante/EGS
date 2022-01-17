*** Settings ***
Resource    ../../Resources/Keywords/Global/GlobalResources.robot

Suite Setup    Valid Client Login
Suite Teardown    Close Browser

*** Test Cases ***
Play Existing Scored Game via Invite
    [Tags]    Game    
    [Teardown]    Report Lambdatest Status    ${TEST_NAME}    ${TEST_STATUS}
    Given Game Template Scoring is Enabled    ${existingSortItTemplate}
    And User send an Invite    ${existingSortItTemplate}    
    
    When Player launch the Sort It Game via Invite
    Then Sort It Game is launched successfully
    
    When User enter valid details
    Then Player should proceed to the game
    
    When Player play and complete the game
    Then The game is completed successfully
    And The score will be recorded    ${existingSortItTemplate}