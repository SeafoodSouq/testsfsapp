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
    Log To Console  Navigating to Seafood Souq
    go to   %{SFSURL}
    Sleep  10
    maximize browser window
    Set Window Size  1366   800


Existing User Login
    [Tags]  Log In Up
    [Documentation]
    Log To Console  Log into Seafood Souq
    Set Window Size  1366   800
    Wait Until Element is Visible   ${Login}
    Click Element  ${Login}
    Wait Until Element is Visible  ${WelcomeBack}
    Input Text  ${EmailField}   %{EXISTINGU}
    Input Password  ${PasswordField}   %{EXISTINGP}
    Click Element  ${LoginBtn}
    Wait Until Element is Visible   ${SettingsToggleArrow}  7
#    Wait Until Element is Visible  ${ShopMenuHeader}  5


Shop
    [Tags]  Shop
    [Documentation]
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
    Reload Page
    Sleep  4
    Click Element   ${CartHeaderMenu}
    Sleep  2
    Scroll Element Into View  ${ShippingDeliveryBtn}
    Click Element  ${ShippingDeliveryBtn}
    Capture Page Screenshot
    Wait Until Element is Visible  ${ShippingAddressHeader}
    Scroll Element Into View  ${ProceedToPaymentBtn}
    Input Text  ${PaymentFName}  %{PAYNAMEF}
    Input Text  ${PaymentLName}  %{PAYNAMEL}
    Input Text  ${PaymentCoName}  %{PAYCONAME}
    Input Text  ${PaymentAddress}  %{PAYADDY}
    Input Text  ${PaymentCity}  %{PAYCITY}
    Input Text  ${PaymentCountry}   %{PAYCOUNTRY}
    Capture Page Screenshot
    Click Element  ${ProceedToPaymentBtn}
    Wait Until Element is Visible   ${EnterPaymentHeader}
    Input Text  ${PaymentCardHolderName}  %{PAYCCNAME}
    Input Text  ${PaymentCardNumber}  %{PAYCCNUM}
    Input Text  ${PaymentCardCVN}  %{PAYCCCVN}
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
    Input Text  ${AdditionalNotesField}  %{PAYADDNOTE}
    Click Element  ${CompleteCheckoutBtn}
    Wait Until Element is Visible  ${ThankYouForOrderHeader}
    Click Element  ${TrackOrderBtn}
    Wait Until Element is Visible  ${TrackOrderPageConfirm}




Buyer Registration
    [Tags]  Buyer Registration
    [Documentation]
    ${BuyerEmailRandom}=  Generate Random String  8
    Set Window Size  1366   800
    Click Element  ${RegisterHeaderBtn}
    Wait Until Element is Visible  ${BuyerRegHeader}
    Input Text  ${BuyerFirstName}   %{BUYFIRST}
    Input Text  ${BuyerLastName}   %{BUYLAST}
    Input Text  ${BuyerEmail}   ${BuyerEmailRandom}@TESTbuyersfs.com
    Input Text  ${BuyerPhone}   %{BUYMOBILE}
    Input Password  ${BuyerPW}  %{BUYPW}
    Input Password  ${BuyerPWConfirm}  %{BUYPWVERIFY}
    Input Text  ${BuyerCoName}  %{BUYCONAME}
    Input Text  ${BuyerBusinessType}  %{BUYBUSTYPE}
    #Scroll Element Into View  ${RegisterToBuy}
    Click Element  ${BuyerEmirateDropDown}
    Click Element  ${DropDownSelection}
    Input Text  ${BuyerAddress}  %{BUYADDY}
    Input Text  ${BuyerTRN}  %{BUYTRN}
    Click Element  ${ProductsInterestedDrop}
    Click Element  ${AtlanticSalmonInterested}
    Input Text  ${AdditionalItemsEntry}  Mahi
    Click Element  ${TermsConditions}
    Click Element  ${RegisterToBuy}
    Wait Until Element is Visible  ${ClickToGoBack}
    Click Element  ${ClickToGoBack}
    Wait Until Element is Visible  ${RegisterHeaderBtn}
    Capture Page Screenshot


Seller Registration
    [Tags]  Seller Registration
    [Documentation]
    ${SellerEmailRandom}=  Generate Random String  8
    ${SellerStoreRandom}=  Generate Random String  4
    Set Window Size  1366   800
    Click Element  ${RegisterHeaderBtn}
    Wait Until Element is Visible  ${IWantToSellSideHeader}
    Click Element  ${SellNowBtnSideRail}
    Wait Until Element is Visible  ${IWantToSellSideHeader}
    Input Text  ${BuyerFirstName}  %{SELLFIRST}
    Input Text  ${BuyerLastName}   %{SELLLAST}
    Input Text  ${SellerEmail}   ${SellerEmailRandom}@TESTsellersfs.com
    Input Text  ${SellerPhoneNumber}  %{SELLMOBILE}
    Input Password  ${SellerPW}   %{SELLPW}
    Input Password  ${SellerPWConfirm}  %{SELLPWCONFIRM}
    Input Text  ${SellerCoName}   ${SellerStoreRandom}TESTStoreSFS
    Input Text  ${ContactNumber}   %{SELLCONTACTN}
    Input Text  ${TradeBrandName}   %{SELLTRADEB}
    Click Element  ${CompanyTypeDrop}
    Click Element  ${CompanyTypeSelection}
    Click Element  ${CountryDropDown}
#    Input Text  //input[@class='select2-search__field']   United Sta
#    Wait Until Element is Visible  ${CountrySelect}
#    Sleep  1
    Click Element  ${CountrySelect}
    Input Text  ${SellerCity}  %{SELLCTY}
    Input Text  ${SellerAddress}  %{SELLADDY}
    Input Text  ${SellerProducts}  %{SELLPRODUCTS}
    Input Text  ${TradeLicenseNum}   %{SELLLICN}
    Input Text  ${FoodSafetyNum}  %{SELLSFT}
    Input Text  ${CorpBankNum}  %{SELLCBKNUM}
    Input Text  ${SwiftCode}  %{SELLSWCODE}
    Click Element  ${CurrencyDrop}
    Click Element  ${CurrencySelection}
    Click Element  ${TermsConditions}
    Click Element  ${RegisterToSell}
    Sleep  4
    Wait Until Element is Visible  ${ClickToGoBack}  10
    Click Element  ${ClickToGoBack}
    Wait Until Element is Visible  ${RegisterHeaderBtn}  10



Add Product
    [Tags]  Addition of Product
    [Documentation]
    Set Window Size  1366   800
    Click Element  ${AddNewButton}
    Wait Until Element is Visible  ${AddNewProductHeader}
    Log to Console  Enter Product Type
    Input Text  ${ProductNameField}  %{PRODNAME}
    Input Text  ${BrandNameField}  %{BRANDNAME}
    Click Element  ${SeaLifeCatDrop}
    Sleep  1
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
    #Scroll Element Into View  ${SubmitButton}
    Scroll Element Into View  //span[contains(.,'Head Off Gutted')]
    Click Element  ${UnitOfSaleDrop}
    Click Element  ${UnitOfSaleSelectionKg}
    Input Text      ${MinOrderField}  %{MINORDER}
    Input Text      ${MaxOrderField}  %{MAXORDER}
    Click Element   ${AdvancedPriceCheckbox}
    Input Text   ${PriceField}  65
    Sleep  2
    Click Element   ${SubmitButton}
    Sleep  8
    Capture Page Screenshot


