*** Settings ***
Library  SeleniumLibrary



*** Variables ***


${Login}  //div[@class='carousel-nav-sfs']//a[@class='nav-link'][contains(text(),'Login')]
${SSouqDevUrl}  https://dev.seafoodsouq.com/
${SSouqStagingUrl}  https://staging.seafoodsouq.com/
${SSouqProdUrl}  https://seafoodsouq.com/
${WelcomeBack}  //span[contains(.,'Welcome')]
${LoginBtn}  //button[@class='btn-blue'][contains(.,'LOGIN & SWIM')]
${EmailField}  //input[contains(@formcontrolname,'email')]
${PasswordField}  //input[contains(@formcontrolname,'password')]
${ShopMenuHeader}  //a[@class='nav-link'][contains(.,'Shop')]
${WaveLoader}  //div[@class='wave-loader']
${ShopFilterSeafood}  //h2[contains(text(),'FILTER')]
${CategoryFish}  //label[contains(.,'Fish')]
${SubCatGrouper}  (//label[contains(.,'Grouper')])[1]
${SubSpeciesGrouper}  //label[contains(.,'Yellowfin Grouper')]
${SubCatSardines}  (//label[contains(.,'Sardines')])[1]
${SubSpeciesSardSprattus}  //label[contains(.,'Sprattus')]
${SubCatSalmon}  (//label[contains(.,'Salmon')])[1]
${SubSpeciesSalAtlantic}  //label[contains(.,'Atlantic Salmon')]
${SubSpeciesSalPacific}  //label[contains(.,'Pacific Salmon')]
${CountryNicaragua}  //label[contains(.,'Nicaragua')]
${CountryScotland}  //label[contains(.,'Scotland')]
${CountryTimorLeste}  //label[contains(.,'Timor-Leste')]
${PrepHeadOnGut}  //label[contains(.,'Head On Gutted')]
${PrepHeadOffGut}  //label[contains(.,'Head Off Gutted')]
${PrepFilleted}  //label[contains(.,'Filleted')]
${PrepTrimA}  //label[contains(.,'Trim A')]
${PrepTrimB}  //label[contains(.,'Trim B')]
${PrepTrimC}  //label[contains(.,'Trim C')]
${PrepTrimD}  //label[contains(.,'Trim D')]
${PrepTrimE}  //label[contains(.,'Trim E')]
${TreatmentFresh}   //label[contains(.,'Fresh')]
${TreatmentFrozen}  //label[contains(.,'Frozen')]
${TreatmentLive}  //label[contains(.,'Live')]
${TreatmentSmoked}  //label[contains(.,'Smoked')]
${RaisedFarmed}  //label[contains(.,'Farmed')]
${RaisedOrganic}  //label[contains(.,'Organically Farmed')]
${RaisedWild}  //label[contains(.,'Wild')]
${ClearFiltersBtn}  //button[contains(.,'CLEAR ALL')]
${SeeMoreFiltersBtn}  //button[contains(.,'SEE MORE')]
${ViewDetails1}  /html[1]/body[1]/app-root[1]/app-shop[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/a[1]/div[1]/div[1]


${RegisterHeaderBtn}   (//a[contains(.,'Register')])[2]
${BuyerRegHeader}  //span[contains(.,'I want to buy')]
${BuyerFirstName}  //input[@placeholder='First Name']
${BuyerLastName}  //input[@placeholder='Last Name']
${BuyerEmail}  //input[@placeholder='Email']
${BuyerPhone}  //input[@type='tel']
${BuyerPW}   //input[@placeholder='Password']
${BuyerPWConfirm}  //input[@placeholder='Repeat Password']
${BuyerCoName}   //input[@placeholder='Company Name']
${BuyerBusinessType}   //input[@placeholder='Type of Business']
${BuyerEmirateDropDown}  //span[@title='Select an Emirate...']
${DropDownSelection}  //option[contains(text(),'Dubai')]
${BuyerAddress}  //input[@placeholder='Address']
${BuyerTRN}  //input[@type='number']
${TermsConditions}  //input[@type='checkbox']
${RegisterToBuy}  //button[contains(.,'register to buy')]
${RegistrationConfirmPageHeader}  //h1[contains(.,'Your registration information has been sent to the administrators of Seafood Souq for review.  Please keep an eye out for our email regarding your registration status')]
${ClickToGoBack}  //h2[contains(.,'Or to go back home')]
${HeadShotLogo}   //div[contains(@class,'headshot-logo original-logo')]


${RegisterToSellBtn}  //a[contains(.,'Register to Sell')]
${SellerRegHeader}  //span[contains(.,'I am a seller')]
${SellerFirstName}  //label[contains(.,'First Name')]
${SellerLastName}  //label[contains(.,'Last Name')]
${SellerEmail}  //input[@placeholder='Email']
${SellerPhoneNumber}  //input[@type='tel']
${SellerPW}   //input[@placeholder='Password']
${SellerPWConfirm}  //input[@placeholder='Repeat Password']
${SellerCoName}   //input[@placeholder='Company Name']
${ContactNumber}  //input[@placeholder='Contact Number']
${TradeBrandName}  //input[@placeholder='Trade / Brand Name']
${CompanyTypeDrop}  //span[@title='Select an option...']
${CompanyTypeSelection}  //option[contains(text(),'Producer')]
${CountryDropDown}  //span[@title='Country']
${CountrySelect}   //div[@id='content_light']/app-registration-seller/div/form/div[2]/div[6]/div/span/span/span/span/span
${SellerCity}  //input[@placeholder='City']
${SellerAddress}  //input[@placeholder='Address']
${SellerProducts}  //input[@placeholder='Products Interested in Selling']
${TradeLicenseNum}  //input[@placeholder='Trade License Number']
${FoodSafetyNum}  //input[@placeholder='Food Safety Certificate NUmber ']
${CorpBankNum}  //input[@placeholder='Bank Account Number']
${SwiftCode}  //input[@placeholder='Swift Code ']
${CurrencyDrop}  //select[@formcontrolname='CurrencyofTrade']
${CurrencySelection}  //option[contains(text(),'USD')]
${RegisterToSell}  //button[contains(.,'REGISTER TO SELL')]
${IWantToSellSideHeader}  //h1[contains(.,'I want to sell')]
${SellNowBtnSideRail}  //button[contains(.,'SELL NOW')]


#Shop
${ShopBtn}  //app-home//div[@class='top-nav']//li[1]//a[1]
${CartBtn}  //app-home//div[@class='top-nav']//li[2]
${OrdersBtn}  //div[@class='carousel-nav-sfs']//li[3]//a[1]
${UserSettingsLogoutBtn}  //li[@class='nav-item sliding-nav-item show']//div[@class='arrow-toggle']
${SettingsBtn}  //a[contains(text(),'settings')]
${LogoutBtn}  //a[contains(text(),'logout')]
${AddToCartBtn}  //button[contains(.,'Add to cart')]
${CompanyCatFooter}  //strong[contains(.,'Company')]
${ProductSelection}  //div[3]/div/div[2]/a/div
${CartHeaderMenu}  //a[contains(.,'Cart')]
${ShippingDeliveryBtn}  //button[contains(.,'go to shipping & delivery')]
${ShippingAddressHeader}  //span[contains(.,'SHIPPING ADDRESS')]
${ProceedToPaymentBtn}  //button[contains(.,'proceed to payment')]
${PaymentFName}   //input[@placeholder='First Name...*']
${PaymentLName}   //input[@placeholder='Last Name...*']
${PaymentCoName}  //input[@placeholder='Company Name...*']
${PaymentAddress}  //input[@placeholder='Street Address...*']
${PaymentCity}  //input[@placeholder='Town/City...*']
${PaymentCountry}  //input[@placeholder='Country...*']
${EnterPaymentHeader}  //span[contains(.,'ENTER PAYMENT')]
${PaymentCardHolderName}  //input[@placeholder='Cardholder Name...*']
${PaymentCardNumber}  //input[@placeholder='Card Number...*']
${PaymentCardCVN}  //input[@placeholder='Security Code...*']
${PaymentMonth}  //select[contains(@placeholder,'Month')]
${PaymentMonthSelection}  //select[@placeholder='Month']//option[contains(text(),'01')]
${PaymentYear}  //select[@ng-reflect-model='19']
${PaymentYearSelection}  //option[contains(text(),'2023')]
${PriceBreakDownCopy}  //h4[contains(.,'PRICE BREAKDOWN AED')]
${IWantThisBuyMonthDayOpen}  //input[@placeholder='I want this by...*']
${IWantThisBuyDateSelection}  //span[contains(text(),'31')]
${ConfirmOrderBtn}  //button[@class='transparent-btn']
${AdditionalNotesField}  //input[contains(@placeholder,'Additional Notes')]
${CompleteCheckoutBtn}   //button[contains(.,'complete checkout')]
${ThankYouForOrderHeader}  //h2[contains(.,'Thank you for your Order!')]
${TrackOrderBtn}   //button[contains(.,'track order')]
${TrackOrderPageConfirm}  //a[@aria-controls='pending']

#Seller
${MyProductsMenuItem}  //a[contains(.,'My Products')]
${AddNewButton}  //div[@class='add-new-box']//div
${AddNewProductHeader}  //span[contains(.,'Add product')]
${ProductNameField}  //input[@placeholder='Product Name...*']
${BrandNameField}  //input[contains(@placeholder,'Brand Name')]
${CountryOriginDrop}  //select[@id='country']
${CountryOriginSelection}  //select[@id='country']//option[contains(text(),'Afghanistan')]
${ProcessingCountryDrop}  //select[@id='processing']
${ProcessingCountrySelection}  //select[@id='processing']//option[contains(text(),'Nicaragua')]
${PortLoadingDrop}   //select[@id='city']
${PortLoadingSelection}  //option[contains(text(),'Test Afghanistan')]
${UnitOfSaleDrop}  //select[@id='unitsale']
${UnitOfSaleSelectionKg}  //option[contains(text(),'Kg')]
${UnitOfSaleSelectionBoxes}  //option[contains(text(),'Boxes')]
${AvgUnitWeight}   //input[@id='averageunit']
${SeaLifeCatDrop}  //select[@id='cat']
${SeaLifeCatSelection}  //div[@class='col-12']//option[2]
${SeaLifeSpeciesDrop}   //select[@id='specie']
${SeaLifeSpeciesSelection}  //option[contains(text(),'Salmon')]
${SeaLifeSubSpeciesDrop}   //select[@id='subspecie']
${SeaLifeSubSpeciesSelection}  //option[contains(text(),'Pacific Salmon')]
${SeaLifeSubSpeciesVarDrop}   //select[@id='variant']
${SeaLifeSubSpeciesVarSelection}  //option[contains(text(),'Coho')]
${CoProdSKUField}  //div[9]//div[1]//div[2]//div[1]//span[1]
${CoHsCodeField}  //input[@id='hscode']
${CoHsCodeLookup}  //a[contains(.,'Find Code')]
${MinOrderField}  //input[@id='min']
${MaxOrderField}  //input[@id='max']
${UploadImage}  //label[contains(text(),'Upload Gallery Images...*')]
${WholeFishLink}  //span[contains(.,'WHOLE FISH')]
${FilletedFishLink}  //span[contains(.,'FILLETED FISH')]
${SpoilField}  //input[@id='spoilage']
${RaisedDrop}  //select[@id='raised']
${RaisedSelection}  //option[contains(text(),'Organically Farmed')]
${TreatmentDrop}  //select[@id='treatment']
${TreatmentSelection}  //option[contains(text(),'Fresh')]
${AdvancedPriceCheckbox}  //label[contains(.,'6-7 KG')]
${GoBackButton}  //button[@class='btn btn-save'][contains(.,'Go back')]
${SubmitButton}  //button[contains(.,'submit product')]
${ProductDetailsHeader}  //span[contains(.,'product Details')]
${ProductFeatureHeader}   //span[contains(.,'PRODUCT FEATURES')]
${ProductPriceHeader}  //span[contains(.,'product pricing')]
${UploadImageScrollTo}  //label[@for='file'][contains(.,'Upload Gallery Images...*')]
${AddNewProductHeader}  //span[contains(.,'Add new product')]
${UploadProductImage}   //input[@id='file']
${ImageOne}   /Users/ronharley/AutomatedTests/SSouq/UploadImages/SFSLogo.png
${ImageOneUpload}   //div[@class='col-3 img-select']//img
${PriceField}  //input[@ng-reflect-name='0']



