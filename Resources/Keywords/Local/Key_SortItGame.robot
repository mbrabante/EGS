*** Settings ***
Resource    ../Global/GlobalResources.robot

*** Keywords ***
Sort It Game is launched successfully
    Sleep    2s
    Select Frame    game-iframe
    Wait Until Element Is Visible    ${loc_figurePreWelcomeVideo}    10
    Element Should Contain    ${loc_figurePreWelcomeMessage}    ${var_preWelcomeMessage}
    Click Element    ${loc_btnClosePreWelcomeMessage}
    Unselect Frame
    ${gameURL}    Get Location
    Set Suite Variable    ${gameURL}    
    
User enter valid details
    Select Frame    game-iframe
    Wait Until Element Is Visible    ${loc_inputSortItNickName}
    Input Text    ${loc_inputSortItNickName}    ${var_SortItNickname}
    Input Text    ${loc_inputSortItEmailAddress}    ${var_SortItEmail}
    Select From List By Label    ${loc_listSortItDepartment}    ${var_SortItDepartment}
    Select From List By Label    ${loc_listSortItJobTitle}    ${var_SortItJobTitle}
    Click Element    ${loc_btnSortItJoinGame}
    Unselect Frame
    
Player should proceed to the game
    Select Frame    game-iframe
    Wait Until Element Is Visible    ${loc_figurePostWelcomeImage}    10
    Element Should Contain    ${loc_figurePostWelcomeMessage}    ${var_postWelcomeMessage}   
    Click Element    ${loc_btnClosePreWelcomeMessage}
    Sleep    2s
    Unselect Frame
    
    Select Frame    game-iframe
    Element Should Contain    ${loc_txtDescription}    ${var_txtSortItDescription}
    Unselect Frame
    
Player play and complete the game
    Select Frame    game-iframe
    Wait Until Element Is Visible    ${loc_imgBackCard}    10
    FOR    ${i}    IN RANGE    30
        ${isVisible}    Run Keyword And Return Status    Element Should Be Visible    ${loc_imgBackCard}
        Exit For Loop If    '${isVisible}'=='False'
        Reveal the Card
        Drag and drop the card to the correct pile   
    END
    Click Element    ${loc_btnDone}    
    Unselect Frame
Reveal the Card
    FOR    ${i}    IN RANGE    3
        ${isVisible}    Run Keyword And Return Status    Element Should Be Visible    ${loc_imgBackCard}
        Exit For Loop If    '${isVisible}'=='False'
        Sleep    2s
        Run Keyword If    '${isVisible}'=='True'    Press Keys    ${loc_imgBackCard}    ENTER    
    END
    
Drag and drop the card to the correct pile
    FOR    ${i}    IN RANGE    3
        ${cardtext}    Get Text    //div[contains(@class, 'deck-card') and contains(@class, 'revealed-${i}')]//div[contains(@class, 'front-side')]//div    
        Drag And Drop    //div[contains(@class, 'deck-card') and contains(@class, 'revealed-${i}')]//div[contains(@class, 'front-side')]    //div[contains(@class, 'slot-name') and contains(., '${cardtext}')]/../div[contains(@class, 'card-container')]
    END
    
The game is completed successfully
    Select Frame    game-iframe
    Wait Until ELement Is Visible    ${loc_txtGameCompleted}    10
    Element Should Contain    ${loc_txtGameCompleted}    ${var_gameCompleteMessage}
    Click Element    ${loc_btnClosePreWelcomeMessage}
    Unselect Frame
    

