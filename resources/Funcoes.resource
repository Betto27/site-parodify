*** Settings ***

Library    Browser

*** Keywords ***

Play music
    Click    xpath=//div[contains(@class, "song")]//h6[text()="Nice Bugs Finish Devs"]/..//button[contains(@class,"play")]

Pause music
    Click    xpath=//div[contains(@class, "song")]//h6[text()="Nice Bugs Finish Devs"]/..//button[contains(@class,"pause")]