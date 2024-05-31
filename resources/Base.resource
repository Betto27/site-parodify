*** Settings ***

Library    Browser


*** Keywords ***

Inicializador
    New Browser    chromium     headless=False
    New Page       https://parodify.vercel.app/


