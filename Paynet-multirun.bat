ECHO Starting batch run at Saucelabs.com
cd C:\development\robot-scripts\sauce\simple-variable-end

ECHO Win10/Chrome70:
start robot -v REMOTE_URL:https://Seahguan:e7f1d5d0-d42c-45c0-9dba-970abea248ec@ondemand.us-west-1.saucelabs.com:443/wd/hub	-d results/Win10Chrome70 	-v DESIRED_CAPABILITIES:"name:Win 10 + Chrome 70, platform:Windows 10,browserName:chrome,version:70.0"	tests/amazonTestScript.robot

ECHO Win10/ff:
start robot -v REMOTE_URL:https://Seahguan:e7f1d5d0-d42c-45c0-9dba-970abea248ec@ondemand.us-west-1.saucelabs.com:443/wd/hub-d results/Win10FireFox79	-v DESIRED_CAPABILITIES:"name:Win 10 + Firefox 79,platform:Windows 10,browserName:Firefox ,version:79" tests/amazonTestScript.robot

ECHO Linux/Chrome:
start robot -v REMOTE_URL:https://Seahguan:e7f1d5d0-d42c-45c0-9dba-970abea248ec@ondemand.us-west-1.saucelabs.com:443/wd/hub	-d results/LinuxChrome43 	-v DESIRED_CAPABILITIES:"name:Linux + Chrome 48, platform:Linux,browserName:chrome,version:48.0"		tests/amazonTestScript.robot


ECHO Starting API Test
start robot -d results/API_Results  tests/APITest.robot
