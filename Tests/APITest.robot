*** Settings ***
Documentation    API Test Case
Library    RequestsLibrary
Library    SeleniumLibrary
Library     Collections


*** Variables ***
${youtubebase_URL}     https://www.googleapis.com/youtube
${MasterCard_Base_URL}  https://api.mastercard.com
${APIKEY}   AIzaSyDwpyl4RwmNUk67LxvNatIJfz-nx6gok04
${PART_VAL}  snippet
${Search_Item}  Mr. player

*** Test Cases ***
YouTube API 1st API test case
    # Create the Session
    create session    YOUTUBE_session       ${youtubebase_URL}

    # Make the call and capture the response
    ${response} =  get request    YOUTUBE_session   /v3/search?part=${PART_VAL}&q=${Search_Item}&key=${APIKEY}

    # Check the Response Statuss
    should be equal as strings  ${response.status_code}   200

    # check the content type is equal to application/json
    ${content_type} =  get from dictionary     ${response.headers}  Content-Type
    should be equal     ${content_type}     application/json; charset=UTF-8
#    log  ${response.headers}
#    log  ${content_type}


YouTube API 2nd API test case
   # Create the Session
    create session    YOUTUBE_session       ${youtubebase_URL}

    # Make the call and capture the response
    ${response} =  post Request   YOUTUBE_session    youtube/v3/subscriptions

    # Check the Response Status
    should be equal as strings    ${response.status_code}   404

#    # check the content type is equal to application/json
#    ${content_type} =  get from dictionary     ${response.headers}  Content-Type
#    should be equal     ${content_type}     application/json; charset=UTF-8


Master Card API test case
    # Create the Session
    create session    MASTERCARD_session       ${MasterCard_Base_URL}


    # Make the call and capture the response
    ${response} =  get request    MASTERCARD_session   enhanced/settlement/currencyrate/subscribed/summary-rates

    # Check the fail response as due to crential is not being provide
    should be equal as strings  ${response.status_code}   400

    Run Keyword If  ${response.status_code} == 200    Fail Result 1


#Visa CArd API Test Case


*** Keywords ***
Fail Result 1
# check the content type is equal to application/json
   log  fail on MASTER Card API Call test