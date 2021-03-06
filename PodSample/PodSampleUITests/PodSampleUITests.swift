//
//  PodSampleUITests.swift
//  PodSampleUITests
//
//  Created by Nithin on 13/03/19.
//  Copyright © 2019 Nithin. All rights reserved.
//

import XCTest

class PodSampleUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
        let app = XCUIApplication()
        app.buttons["Button"].tap()
        app.otherElements.containing(.navigationBar, identifier:"UIView").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
        app.navigationBars["UIView"].buttons["Back"].tap()
       

//        let button =  app.navigationBars["UIView"].buttons["Back"]
//        XCTAssertTrue(button.isEnabled)
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
