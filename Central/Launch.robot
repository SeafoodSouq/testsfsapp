*** Settings ***
Documentation  Seafood Souq Smoke Test

Resource   ${EXECDIR}/Central/Common.robot
Resource   ${EXECDIR}/Central/SSouqSmoke.robot



Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***

${BROWSER}   chrome


*** Test Cases ***

#Navigate to Page
#    Log To Console  Navigating to Seafood Souq
#    SSouqSmoke.Navigate to Page   https://dev.seafoodsouq.com
#
#
#Existing User Signin
#    Log To Console  Log in
#    SSouqSmoke.Navigate to Page  https://dev.seafoodsouq.com
#    SSouqSmoke.Existing User Login
#
#
#Shop Workflow
#    Log To Console  Buyer Purchase
#    SSouqSmoke.Navigate to Page
#    SSouqSmoke.Existing User Login
#    SSouqSmoke.Shop
#
#
#Buyer Registration
#    Log To Console  Buy
#    SSouqSmoke.Navigate to Page   https://qa.seafoodsouq.com
#    SSouqSmoke.Buyer Registration
#
#Seller Registration
#    Log To Console  Sell
#    SSouqSmoke.Navigate to Page  https://dev.seafoodsouq.com
#    SSouqSmoke.Seller Registration

Add Whole Fish
    Log To Console  Add Whole Fish
    SSouqSmoke.Navigate to Page  https://qa.seafoodsouq.com
    SSouqSmoke.Existing User Login   Seller6/1@seafoodsouq.com   Test1234
    SSouqSmoke.Add Fish Whole   Salmon  Whole  1234  4321  5  10  3

Add Whole Fish Boxes
    Log To Console  Add Whole Fish Boxes
    SSouqSmoke.Navigate to Page  https://qa.seafoodsouq.com
    SSouqSmoke.Existing User Login   Seller6/1@seafoodsouq.com   Test1234
    SSouqSmoke.Add Fish Boxes  Salmon  Boxes  1234  4321  5  10  3

Add Fish Fillet
    Log To Console  Add Fish Fillet
    SSouqSmoke.Navigate to Page  https://qa.seafoodsouq.com
    SSouqSmoke.Existing User Login   Seller6/1@seafoodsouq.com   Test1234
    SSouqSmoke.Add Fish Fillet  Salmon  Fillet  1234  4321  5  10  3
