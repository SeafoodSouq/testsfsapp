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
    SSouqSmoke.Navigate to Page   https://qa.seafoodsouq.com


Existing User Signin
    Log To Console  Log in
    SSouqSmoke.Navigate to Page  https://qa.seafoodsouq.com
    SSouqSmoke.Existing User Login  Buyseafood05/20@Seafoodsouq.Com    Test1234


Shop Workflow
    Log To Console  Buyer Purchase
    SSouqSmoke.Navigate to Page  https://qa.seafoodsouq.com
    SSouqSmoke.Existing User Login  Buyseafood05/20@Seafoodsouq.Com    Test1234
    SSouqSmoke.Shop   Hello    World   Test Company    101 Jefferson Ave    Brooklyn    USA    Hello World    4111111111111111    123    This is a test


Buyer Registration
    Log To Console  Buy
    SSouqSmoke.Navigate to Page  https://qa.seafoodsouq.com
    SSouqSmoke.Buyer Registration  Hello    World    BuySeafood6/1@seafoodsouq.com   0504567890   Test1234    Test1234    TestCompany   FishMarket    Warehouse 10, 58 St    21

Seller Registration
    Log To Console  Sell
    SSouqSmoke.Navigate to Page  https://qa.seafoodsouq.com
    SSouqSmoke.Seller Registration  Hello  World  Seller6/1@seafoodsouq.com   (201) 555-1212   Test1234    Test1234     Seller Test Co    4    RonTest    Brooklyn    101 Jefferson Ave    Salmon, Cod, Sardines    212    1234    12342    12

Add Product
    Log To Console  Add Product
    SSouqSmoke.Navigate to Page  https://qa.seafoodsouq.com
    SSouqSmoke.Existing User Login   Seller6/1@seafoodsouq.com   Test1234
    SSouqSmoke.Add Product  Test  Test  1234  4321  5  10  3