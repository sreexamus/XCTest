//
//  XCtestexmUITests.swift
//  XCtestexmUITests
//
//  Created by sreekanth reddy iragam reddy on 4/15/17.
//  Copyright © 2017 com.sree.objc. All rights reserved.
//

import XCTest

class XCtestexmUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    

    func testExample() {
   
        
        let app = XCUIApplication()
        let buttonElementsQuery = app.otherElements.containing(.button, identifier:"Button")
        buttonElementsQuery.children(matching: .button).matching(identifier: "Button").element(boundBy: 0).tap()
        
        let tablesQuery = app.tables
        tablesQuery.staticTexts["bhargav"].press(forDuration: 0.9);
        tablesQuery.staticTexts["aarav"].tap()
        buttonElementsQuery.children(matching: .button).matching(identifier: "Button").element(boundBy: 1).tap()
        tablesQuery.staticTexts["bhargav1"].swipeDown()
        tablesQuery.cells.containing(.staticText, identifier:"sree1").children(matching: .staticText).matching(identifier: "sree1").element(boundBy: 0).swipeDown()
        tablesQuery.cells.containing(.staticText, identifier:"sravani1").children(matching: .staticText).matching(identifier: "sravani1").element(boundBy: 0).tap()
        
        
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    
    func testNavigateToSecondVC(){
        
        
        
        let app = XCUIApplication()

        app.buttons["Hit"].tap()
        
        
    }
}
