*** Settings ***

Library    Browser


*** Keywords ***

Inicializador
    New Browser    chromium     headless=True
    New Page       https://parodify.vercel.app/


