//
//  ReferenceiOSUITests.swift
//  ReferenceiOSUITests
//
//  Created by Inamur Rahman on 15/10/2019.
//  Copyright © 2019 ABN AMRO. All rights reserved.
//

import XCTest

class ReferenceiOSUITests: XCTestCase
{

    override func setUp()
    {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown()
    {
        super.tearDown()
    }

    func testLandingScreen()
    {
       let app = XCUIApplication()
        //assert if Hello is displayed when app starts, else show error message
        XCTAssertEqual("Hello", app.staticTexts["myLabel"].label, "Hello is NOT displayed when app starts")
     
    }
    
    func testGenerateRandom()
    {
        let app = XCUIApplication()
        
        //tapping the button "Button"
        app.buttons["Button"].tap()
        
        // storing the text displayed on label to a string
        let  myString: String = app.staticTexts["myLabel"].label
        
        //assering if "€" is displayed in the label text
        XCTAssertNotNil(myString.range(of:"€"), "€ sign not found")
    }
    
    func testPerformance()
    {
        let app = XCUIApplication()
       
        //tapping the button 100 times to test any crash
        for _ in 1...100
            {
            app.buttons["Button"].tap()
            }
    }

}
