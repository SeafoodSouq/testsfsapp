*** Settings ***
Documentation  Seafood Souq Smoke Test

Resource   ${EXECDIR}/Central/Common.robot
Resource   ${EXECDIR}/Central/SSouqSmoke.robot



Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***

${BROWSER}   chrome


*** Test Cases ***

Navigate to Page
    Log To Console  Navigating to Seafood Souq
    SSouqSmoke.Navigate to Page   https://dev.seafoodsouq.com


Existing User Signin
    Log To Console  Log in
    SSouqSmoke.Navigate to Page  https://dev.seafoodsouq.com
    SSouqSmoke.Existing User Login
    SSouqSmoke.Shop

Buyer Registration
    Log To Console  Buy
    SSouqSmoke.Navigate to Page   https://qa.seafoodsouq.com
    SSouqSmoke.Buyer Registration

Seller Registration
    Log To Console  Sell
    SSouqSmoke.Navigate to Page  https://dev.seafoodsouq.com
    SSouqSmoke.Seller Registration  Hello  World  SellerRonH@seafoodsouq.com   (201) 555-1212   Test1234    Test1234     Seller Test Co    4    RonTest    Brooklyn    101 Jefferson Ave    Salmon, Cod, Sardines    212    1234    12342    12


Add Product
    Log To Console  Add Product
    SSouqSmoke.Navigate to Page  https://qa.seafoodsouq.com
    SSouqSmoke.Existing User Login
    SSouqSmoke.Add Product