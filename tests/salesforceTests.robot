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
    ScrollTo               Apply for a Vacation Home Rental License                delay=3
    ClickText              Apply for a Vacation Home Rental License
    SwitchWindow           NEW
    ClickText              Apply for a Home Rental License
    ClickText              Vacation Home Rental
    ClickText              I am the Owner
    ClickCheckbox          Site Plan                   on
    ClickCheckbox          Proof of Insurance          on
    ClickCheckbox          Fire Escape Plan            on
    ClickCheckbox          Self-inspection checklist (You can find this on our website here.)            on
    ClickText              Next
    TypeText               What is the parcel number of the property you are applying for?               28-51-844-003-00
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
    #X-path Example - Copado can interact with the Shadom, if required.            Showing this as a FYI
    ClickElement           //*[@id\="select_260"]
    ClickText              Michigan
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
    ClickItem              Upload                      anchor=Site Plan
    QVision.DoubleClick    Desktop
    QVision.DoubleClick    suite
    QVision.DoubleClick    files
    QVision.ClickText      site plan copy.pdf
    HotKey                 Enter
    ClickItem              Upload                      anchor=Proof of Insurance                         delay=7
    QVision.ClickText      8th st insurance.pdf
    HotKey                 Enter
    ClickItem              Upload                      anchor=Fire Escape Plan     delay=7
    QVision.ClickText      fire escape.pdf
    HotKey                 Enter
    ClickItem              Upload                      anchor=Self-inspection checklist                  delay=7
    QVision.ClickText      Inspection.pdf
    HotKey                 Enter                       delay=2
    ClickText              Next                        delay=7
    VerifyText             Bank Account
    VerifyText             Credit or Debit Card

