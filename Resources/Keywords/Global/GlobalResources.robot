*** Settings ***
#Libraries
Library           SeleniumLibrary
Library           Collections
Library           OperatingSystem
Library           ImapLibrary2
Library           String
Library           DateTime
Library           Dialogs
Library           Lambdatest

#Resources

#Keywords > Global
Resource          Key_Common.robot

#Keywords > Local
Resource          ../Local/Key_Login.robot
Resource          ../Local/Key_CreationTemplate.robot
Resource          ../Local/Key_SortItGame.robot

#Locators > Global
Resource          ../../Locators/Global/Loc_Common.robot

#Locators > Local
Resource          ../../Locators/Local/Loc_Login.robot
Resource          ../../Locators/Local/Loc_CreationTemplate.robot
Resource          ../../Locators/Local/Loc_SortItGame.robot

#Variables > Global
Resource          ../../Variables/Global/Var_Common.robot

#Variables > Local
Resource          ../../Variables/Local/Var_Login.robot
Resource          ../../Variables/Local/Var_CreationTemplate.robot
Resource          ../../Variables/Local/Var_SortItGame.robot

