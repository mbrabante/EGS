*** Settings ***
Resource    ../../Keywords/Global/GlobalResources.robot

*** Variables ***
#Admin Portal
${adminURL}    http://prod-author.zebra.lan/libs/granite/core/content/login.html
    
${adminUsername}    anmol@mailinator.com   
${adminPassword}    dontpeek
${adminInvalidPwd}    dontpeek22
${adminName}    anmol mittal

#Client Portal
${clientURL}    https://aimmune.dev.enterprisegamestack.com/
${clientUsername}    marlon    
${clientPassword}    work4curtis
${clientInvalidPwd}    work4curtis123      
${clientName}    Marlon Brabante
${userRole}    Super Admin

#Lambdatest
${platform}    ${EMPTY}
${browserName}    ${EMPTY}
${version}    ${EMPTY}
${visual}    ${EMPTY}
${network}    ${EMPTY}
${console}    ${EMPTY}
${testName}    ${EMPTY}
${build}    ${EMPTY}    
${ROBOT_BROWSER}    ${EMPTY}

@{_tmp}    
    ...    browserName: ${browserName},
    ...    build: ${build},
    ...    platform: ${platform},
    ...    version: ${version},
    ...    visual: ${visual},
    ...    network: ${network},
    ...    console: ${console},
    ...    name: ${SUITE NAME},
    ...    resolution : 1920x1080,
    ...    idleTimeout: 180
 
${BROWSER}    ${ROBOT_BROWSER}
${CAPABILITIES}    ${EMPTY.join(${_tmp})}
${KEY}    john@curtisdigital.com:PtYJNfnWYuejsbGnaaKICuf4J5fBRQsbqRiBOS4ZyIoRZYiiIQ
${REMOTE_URL}    https://${KEY}@hub.lambdatest.com/wd/hub

${TIMESTAMP}    ${EMPTY}

#Activate Email
${emailHost}    imap.gmail.com
${emailAddress}    perdixautouser@gmail.com
${emailPassword}    curtisemail1
${emailSender}    system@enteprisegamestack.com 