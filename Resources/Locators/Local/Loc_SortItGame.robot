*** Variables ***
${loc_figurePreWelcomeVideo}    //figure[@class='video']
${loc_figurePreWelcomeMessage}    //figure//figcaption
${loc_figurePostWelcomeImage}    //figure[@class='image']
${loc_figurePostWelcomeMessage}    //figure//figcaption
${loc_btnClosePreWelcomeMessage}    close-button
${loc_inputSortItNickName}    //input[@placeholder='Nickname']
${loc_inputSortItEmailAddress}    //input[@placeholder='Email Address']
${loc_listSortItDepartment}    //option[contains(., 'Department')]/../../select
${loc_listSortItJobTitle}    //option[contains(., 'Job Title')]/../../select
${loc_btnSortItJoinGame}    //button//*[.='Join Game']
${loc_txtDescription}    //div[@class='flex flex-none items-center font-light text-white pl-2']
${loc_imgBackCard}    //div[contains(@class, 'deck-card-0') and not(contains(@class, 'revealed'))]
${loc_imgFrontCard}    //div[contains(@class, 'front-side')]
${loc_btnDone}    //div[.='Done']
${loc_txtGameCompleted}    //div[contains(@class, 'content-container')]//p