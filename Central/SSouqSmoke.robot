*** Settings ***
Library  SeleniumLibrary
Library  String
Library  Collections
Library  RequestsLibrary
Library  DateTime
#Library  JSONLibrary

Resource   ${EXECDIR}/Central/Common.robot
Resource   ${EXECDIR}/Central/Variables.robot




*** Variables ***



*** Keywords ***


Navigate_To_Page
    [Tags]  Go to Seafood Souq url
    [Documentation]
    [Arguments]  ${SFSURL}
    ${sfstesturl}=  Set Variable  ${SFSURL}
    Log To Console  Navigating to Seafood Souq
    go to   ${sfstesturl}
    maximize browser window


Existing User Login
    [Tags]  Log In Up
    [Documentation]
    [Arguments]  ${EXISTINGU}  ${EXISTINGP}
    ${existinguser}=  Set Variable  ${EXISTINGU}
    ${existingpw}=  Set Variable  ${EXISTINGP}
    Log To Console  Log into Seafood Souq
    Set Window Size  1366   800
    Wait Until Element is Visible   ${Login}
    Click Element  ${Login}
    Wait Until Element is Visible  ${WelcomeBack}
    Input Text  ${EmailField}   ${existinguser}
    Input Password  ${PasswordField}   ${existingpw}
    Click Element  ${LoginBtn}
    Wait Until Element is Visible  ${HeadShotLogo}


Shop
    [Tags]  Shop
    [Documentation]
    [Arguments]  ${PAYNAMEF}  ${PAYNAMEL}  ${PAYCONAME}  ${PAYADDY}  ${PAYCITY}  ${PAYCOUNTRY}  ${PAYCCNAME}  ${PAYCCNUM}  ${PAYCCCVN}  ${PAYADDNOTE}
    ${paymentnamef}=  Set Variable    ${PAYNAMEF}
    ${paymentnamel}=  Set Variable    ${PAYNAMEL}
    ${paymentco}=  Set Variable    ${PAYCONAME}
    ${paymentad}=  Set Variable    ${PAYADDY}
    ${paymentcty}=  Set Variable    ${PAYCITY}
    ${paymentctry}=  Set Variable   ${PAYCOUNTRY}
    ${paymentccname}=  Set Variable  ${PAYCCNAME}
    ${paymentccnumber}=  Set Variable  ${PAYCCNUM}
    ${paymentcccvn}=  Set Variable   ${PAYCCCVN}
    ${paymentaddnote}=  Set Variable  ${PAYADDNOTE}
    Log to Console  Shop workflow
    Sleep  5
    # Wait Until Element is not Visible  ${WaveLoader}
    Scroll Element Into View  ${CompanyCatFooter}
    Wait Until Element is Visible  ${ProductSelection}
    Capture Page Screenshot
    Click Element   ${ProductSelection}
    Sleep  4
    Capture Page Screenshot
    Scroll Element Into View  ${CompanyCatFooter}
    Sleep  2
    Click Element  ${AddToCartBtn}
    Scroll Element Into View  ${CartHeaderMenu}
    Sleep  2
    Click Element   ${CartHeaderMenu}
    Sleep  4
    Scroll Element Into View  ${ShippingDeliveryBtn}
    Click Element  ${ShippingDeliveryBtn}
    Capture Page Screenshot
    Wait Until Element is Visible  ${ShippingAddressHeader}
    Scroll Element Into View  ${ProceedToPaymentBtn}
    Input Text  ${PaymentFName}  ${paymentnamef}
    Input Text  ${PaymentLName}  ${paymentnamel}
    Input Text  ${PaymentCoName}  ${paymentco}
    Input Text  ${PaymentAddress}  ${paymentad}
    Input Text  ${PaymentCity}  ${paymentcty}
    Input Text  ${PaymentCountry}   ${paymentctry}
    Capture Page Screenshot
    Click Element  ${ProceedToPaymentBtn}
    Wait Until Element is Visible   ${EnterPaymentHeader}
    Input Text  ${PaymentCardHolderName}  ${paymentccname}
    Input Text  ${PaymentCardNumber}  ${paymentccnumber}
    Input Text  ${PaymentCardCVN}  ${paymentcccvn}
    Click Element  ${PaymentMonth}
    Click Element  ${PaymentMonthSelection}
    Click Element  ${PaymentYear}
    Click Element  ${PaymentYearSelection}
    Scroll Element Into View  ${PriceBreakDownCopy}
    Click Element  ${IWantThisBuyMonthDayOpen}
    Click Element  ${IWantThisBuyDateSelection}
    #Input Text   //input[@placeholder='I want this by...*']   5/31/2019
    Scroll Element Into View   ${EnterPaymentHeader}
    Capture Page Screenshot
    Scroll Element Into View  ${CompanyCatFooter}
    Sleep  1
    Double Click Element   ${ConfirmOrderBtn}
    Sleep  2
    Double Click Element   ${ConfirmOrderBtn}
    Capture Page Screenshot
    Input Text  ${AdditionalNotesField}  ${paymentaddnote}
    Click Element  ${CompleteCheckoutBtn}
    Wait Until Element is Visible  ${ThankYouForOrderHeader}
    Click Element  ${TrackOrderBtn}
    Wait Until Element is Visible  ${TrackOrderPageConfirm}




Buyer Registration
    [Tags]  Buyer Registration
    [Documentation]
    [Arguments]  ${BUYFIRST}  ${BUYLAST}  ${BUYEMAIL}   ${BUYMOBILE}  ${BUYPW}  ${BUYPWVERIFY}   ${BUYCONAME}   ${BUYBUSTYPE}   ${BUYADDY}   ${BUYTRN}
    ${buyerfirstn}=  Set Variable  ${BUYFIRST}
    ${buyerlastn}=  Set Variable  ${BUYLAST}
    ${buyeremailentry}=  Set Variable  ${BUYEMAIL}
    ${buyerphoneentry}=  Set Variable  ${BUYMOBILE}
    ${buyerpwentry}=   Set Variable   ${BUYPW}
    ${buyerpwverifyentry}=   Set Variable   ${BUYPWVERIFY}
    ${buyerconameentry}=   Set Variable   ${BUYCONAME}
    ${buyerbustype}=    Set Variable   ${BUYBUSTYPE}
    ${buyeraddressentry}=    Set Variable   ${BUYADDY}
    ${buyertrnentry}=    Set Variable   ${BUYTRN}
    Set Window Size  1366   800
    Click Element  ${RegisterHeaderBtn}
    Wait Until Element is Visible  ${BuyerRegHeader}
    Input Text  ${BuyerFirstName}   ${buyerfirstn}
    Input Text  ${BuyerLastName}   ${buyerlastn}
    Input Text  ${BuyerEmail}   ${buyeremailentry}
    Input Text  ${BuyerPhone}   ${buyerphoneentry}
    Input Password  ${BuyerPW}  ${buyerpwentry}
    Input Password  ${BuyerPWConfirm}  ${buyerpwverifyentry}
    Input Text  ${BuyerCoName}  ${buyerconameentry}
    Input Text  ${BuyerBusinessType}  ${buyerbustype}
    #Scroll Element Into View  ${RegisterToBuy}
    Click Element  ${BuyerEmirateDropDown}
    Click Element  ${DropDownSelection}
    Input Text  ${BuyerAddress}  ${buyeraddressentry}
    Input Text  ${BuyerTRN}  ${buyertrnentry}
    Click Element  ${TermsConditions}
    Click Element  ${RegisterToBuy}
    Wait Until Element is Visible  ${ClickToGoBack}
    Click Element  ${ClickToGoBack}
    Wait Until Element is Visible  ${RegisterHeaderBtn}
    Capture Page Screenshot


Seller Registration
    [Tags]  Seller Registration
    [Documentation]
    [Arguments]  ${SELLFIRST}  ${SELLLAST}  ${SELLEMAIL}  ${SELLMOBILE}  ${SELLPW}  ${SELLPWCONFIRM}  ${SELLCONAME}  ${SELLCONTACTN}  ${SELLTRADEB}  ${SELLCTY}  ${SELLADDY}  ${SELLPRODUCTS}  ${SELLLICN}  ${SELLSFT}  ${SELLCBKNUM}  ${SELLSWCODE}
    ${sellerfirstn}=  Set Variable  ${SELLFIRST}
    ${sellerlastn}=  Set Variable  ${SELLLAST}
    ${selleremailentry}=  Set Variable  ${SELLEMAIL}
    ${sellerphone}=  Set Variable  ${SELLMOBILE}
    ${sellerpwentry}=  Set Variable  ${SELLPW}
    ${sellerpwconvirmentry}=  Set Variable  ${SELLPWCONFIRM}
    ${sellerconameentry}=  Set Variable  ${SELLCONAME}
    ${sellercontactnum}=  Set Variable  ${SELLCONTACTN}
    ${sellertradebrand}=  Set Variable  ${SELLTRADEB}
    ${sellercityentry}=  Set Variable  ${SELLCTY}
    ${selleraddressentry}=  Set Variable  ${SELLADDY}
    ${sellerproductsentry}=  Set Variable   ${SELLPRODUCTS}
    ${sellerlicense}=  Set Variable   ${SELLLICN}
    ${sellersafteynum}=  Set Variable  ${SELLSFT}
    ${sellerbanknumber}=  Set Variable  ${SELLCBKNUM}
    ${sellerswiftcode}=  Set Variable  ${SELLSWCODE}
    Set Window Size  1366   800
    Click Element  ${RegisterHeaderBtn}
    Wait Until Element is Visible  ${IWantToSellSideHeader}
    Click Element  ${SellNowBtnSideRail}
    Wait Until Element is Visible  ${IWantToSellSideHeader}
    Input Text  ${BuyerFirstName}  ${sellerfirstn}
    Input Text  ${BuyerLastName}   ${sellerlastn}
    Input Text  ${SellerEmail}   ${selleremailentry}
    Input Text  ${SellerPhoneNumber}  ${sellerphone}
    Input Password  ${SellerPW}   ${sellerpwentry}
    Input Password  ${SellerPWConfirm}  ${sellerpwconvirmentry}
    Input Text  ${SellerCoName}   ${sellerconameentry}
    Input Text  ${ContactNumber}   ${sellercontactnum}
    Input Text  ${TradeBrandName}   ${sellertradebrand}
    Click Element  ${CompanyTypeDrop}
    Click Element  ${CompanyTypeSelection}
    Click Element  ${CountryDropDown}
    Input Text  //input[@class='select2-search__field']   United Sta
    Wait Until Element is Visible  ${CountrySelect}
    Sleep  1
    Click Element  ${CountrySelect}
    Input Text  ${SellerCity}  ${sellercityentry}
    Input Text  ${SellerAddress}  ${selleraddressentry}
    Input Text  ${SellerProducts}  ${sellerproductsentry}
    Input Text  ${TradeLicenseNum}   ${sellerlicense}
    Input Text  ${FoodSafetyNum}  ${sellersafteynum}
    Input Text  ${CorpBankNum}  ${sellerbanknumber}
    Input Text  ${SwiftCode}  ${sellerswiftcode}
    Click Element  ${CurrencyDrop}
    Click Element  ${CurrencySelection}
    Click Element  ${TermsConditions}
    Click Element  ${RegisterToSell}
    Wait Until Element is Visible  ${ClickToGoBack}
    Click Element  ${ClickToGoBack}
    Wait Until Element is Visible  ${RegisterHeaderBtn}



Add Product
    [Tags]  Addition of Product
    [Documentation]
    [Arguments]   ${PRODNAME}  ${BRANDNAME}  ${PRODSKU}  ${HSCODE}  ${MAXORDER}  ${MINORDER}  ${SPOIL}
    ${pa_name}=    Set Variable  ${PRODNAME}
    ${pa_brand}=  Set Variable  ${BRANDNAME}
    ${pa_sku}=  Set Variable  ${PRODSKU}
    ${pa_hscode}=  Set Variable  ${HSCODE}
    ${pa_max_o}=  Set Variable  ${MAXORDER}
    ${pa_min_o}=  Set Variable  ${MINORDER}
    ${pa_spoil}=  Set Variable  ${SPOIL}
    Set Window Size  1366   800
    Click Element  ${AddNewButton}
    Wait Until Element is Visible  ${AddNewProductHeader}
    Log to Console  Enter Product Type
    Input Text  ${ProductNameField}  ${pa_name}
    Input Text  ${BrandNameField}  ${pa_brand}
    Click Element  ${SeaLifeCatDrop}
    Click Element  ${SeaLifeCatSelection}
    Sleep  1
    Click Element  ${SeaLifeCatDrop}
    Click Element  ${SeaLifeCatSelection}
    Sleep  1
    Click Element  ${SeaLifeSpeciesDrop}
    Sleep  1
    Click Element  ${SeaLifeSpeciesSelection}
    Sleep  1
    Click Element  ${SeaLifeSubSpeciesDrop}
    Sleep  1
    Click Element  ${SeaLifeSubSpeciesSelection}
    Sleep  1
    Click Element  ${SeaLifeSubSpeciesVarDrop}
    Sleep  1
    Click Element  ${SeaLifeSubSpeciesVarSelection}
    Log to Console  Enter Product Features
    Click Element   ${RaisedDrop}
    Click Element   ${RaisedSelection}
    Click Element   ${TreatmentDrop}
    Click Element   ${TreatmentSelection}
    Log to Console  Add Product Images
    Scroll Element Into View   ${ProductDetailsHeader}
    Click Element  ${UploadImage}
    Capture Page Screenshot
    Sleep  4
    Choose File     ${UploadProductImage}   ${ImageOne}
    Sleep  3
    Capture Page Screenshot
    Wait Until Element Is Visible  ${ImageOneUpload}
    Sleep  2
    Log to Console  Enter Product Details
    Scroll Element Into View   ${ProductPriceHeader}
#    Click Element   ${CoProdSKUField}
#    Input Text      ${CoProdSKUField}   ${pa_sku}
#    Input Text      ${CoHsCodeField}  ${pa_hscode}
    Click Element  ${CountryOriginDrop}
    Sleep  2
    Capture Page Screenshot
    Click Element  ${CountryOriginSelection}
    Click Element  ${ProcessingCountryDrop}
    Click Element  ${ProcessingCountrySelection}
    Click Element  ${PortLoadingDrop}
    Click Element  ${PortLoadingSelection}
    Click Element  ${CoHsCodeLookup}
    Log to Console  Enter Product Pricing
    Scroll Element Into View  ${SubmitButton}
    Click Element  ${UnitOfSaleDrop}
    Click Element  ${UnitOfSaleSelectionKg}
    Input Text      ${MinOrderField}  ${pa_min_o}
    Input Text      ${MaxOrderField}  ${pa_max_o}
    Click Element   ${AdvancedPriceCheckbox}
    Input Text   ${PriceField}  65
    Sleep  2
    Click Element   ${SubmitButton}
    Sleep  8
    Capture Page Screenshot

