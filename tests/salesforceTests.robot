# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                   ../resources/common.robot
Suite Setup                Setup Browser
Suite Teardown             End suite
Library                    QWeb
Library                    QVision


*** Test Cases ***
Apply for Application

    GoTo                   https://www.traversecitymi.gov/services/residential-and-short-term-rentals/vacation-home-rental-license-application.html
    ScrollTo               Apply for a Vacation Home Rental License
    ClickText              Apply for a Vacation Home Rental License
    SwitchWindow           NEW
    ClickText              Apply for a Home Rental License
    ClickText              Vacation Home Rental
    ClickText              I am the Owner
    ClickCheckbox          Site Plan                   on
    ClickCheckbox          Proof of Insurance          on
    ClickCheckbox          Fire Escape Plan            on
    ClickCheckbox          Self-inspection checklist (You can find this on our website here.)         on
    ClickText              Next
    TypeText               What is the parcel number of the property you are applying for?            28-51-844-003-00
    ClickText              Next
    ClickText              Next
    TypeText               text                        Cozy 8th St Apartment
    ClickText              Enter
    ClickText              Yes
    TypeText               Unit                        215
    ClickText              Enter
    TypeText               text                        Barry Sanders
    ClickText              Enter
    TypeText               Address Line 1              8870 N Long Lake Rd
    TypeText               City                        Traverse City
    #X-path Example - Copado can interact with the Shadom, if required.         Showing this as a FYI
    SetConfig              ShadowDOM                   true
    ClickElement           //*[@id\="select_260"]
    ClickText              Michigan
    SetConfig              ShadowDOM                   false
    TypeText               Zip                         49685
    ClickText              Enter
    TypeText               (___) ___-____              (231) 218-1704
    ClickText              Enter
    TypeText               email                       dkellogg@copado.com
    ClickText              Enter
    ClickText              Enter
    ClickText              Enter
    TypeText               number                      1
    ClickText              Enter
    TypeText               text                        1
    ClickText              Enter
    TypeText               number                      1
    ClickText              Enter
    TypeText               number                      2
    ClickText              Enter
    VerifyText             Site Plan
    ClickIcon              uploadicon.png

Salesforce Test with PDF
    Login
    LaunchApp              Sales
    ClickText              Leads
    ClickText              New
    PickList               Salutation                  Mr
    TypeText               First Name                  Dan
    TypeText               Last Name                   Kellogg
    TypeText               *Company                    Copado
    TypeText               Title                       Solutions Engineer
    TypeText               Phone                       5555555555
    TypeText               Email                       dkellogg@Copado.com
    PickList               Rating                      Warm
    ClickText              Save                        partial_match=False
    VerifyField            Title                       Solutions Engineer       partial_match=True
    ClickText              Convert
    TypeText               Account Name                Copado Demo
    ClickText              Convert
    ClickText              Copado Demo                 anchor=Account
    ClickText              Notes & Attachments
    ClickText              Upload Files
    QVision.ClickText      Desktop
    QVision.DoubleClick    suite
    QVision.DoubleClick    files
    QVision.ClickText      Inspection.pdf
    HotKey                 Enter                       delay=5
    ClickText              Done
    ClickText              Inspection
    ClickText              Close

