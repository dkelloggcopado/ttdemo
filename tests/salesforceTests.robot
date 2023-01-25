# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource             ../resources/common.robot
Suite Setup          Setup Browser
Suite Teardown       End suite


*** Test Cases ***
Apply for Application

    GoTo             https://www.traversecitymi.gov/services/residential-and-short-term-rentals/vacation-home-rental-license-application.html
    ScrollTo         Apply for a Vacation Home Rental License
    ClickText        Apply for a Vacation Home Rental License
    ClickText        Apply for a Vacation Home Rental License
    SwitchWindow     NEW

    ClickText        Apply for a Home Rental License
    ClickText        Vacation Home Rental
    ClickText        I am the Owner
    ClickCheckbox    Site Plan                   on
    ClickCheckbox    Proof of Insurance          on
    ClickCheckbox    Fire Escape Plan            on
    ClickCheckbox    Self-inspection checklist (You can find this on our website here.)    on
    ClickText        Next
    TypeText         What is the parcel number of the property you are applying for?    28-51-844-003-00
    ClickText        Next
    ClickText        Next
    TypeText         text                        Cozy 8th St Apartment
    ClickText        Enter
    ClickText        Yes
    TypeText         Unit                        215
    ClickText        Enter
    TypeText         text                        Barry Sanders
    ClickText        Enter
    TypeText         Address Line 1              8870 N Long Lake Rd
    TypeText         City                        Traverse City
    ClickText        Virgin Islands, U.S.        anchor=State
    ClickText        Michigan                    anchor=Home Rental License Application and Renewal Form
    TypeText         Zip                         49685
    ClickText        Enter
    TypeText         (___) ___-____              (231) 218-1704
    ClickText        What is your phone number?
    ClickText        Enter
    TypeText         email                       dkellogg@copado.com
    ClickText        Enter
    ClickText        Enter
    ClickText        Enter
    TypeText         number                      1
    ClickText        Enter
    TypeText         text                        1
    ClickText        Enter
    TypeText         number                      1
    ClickText        Enter
    TypeText         number                      2
    ClickText        Enter