//
//  CaoculadoraUITests.swift
//  CaoculadoraUITests
//
//  Created by Alessandra Pereira on 25/10/20.
//

import XCTest

class CaoculadoraUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    override func tearDown() {
        // Taking screenshot after test
        let screenshot = XCUIScreen.main.screenshot()
        let fullScreenshotAttachment = XCTAttachment(screenshot: screenshot)
        fullScreenshotAttachment.lifetime = .keepAlways
        add(fullScreenshotAttachment)
        // Closing the app
        app.terminate()
    }
    
    func testCalculateButton() throws {
        app.launch()
        
        let yearTextField = app.textFields["yearTextField"]
        yearTextField.tap()
        XCTAssertEqual(yearTextField.value as! String, "Ex.: 5")
        yearTextField.typeText("5")
        XCTAssertEqual(yearTextField.value as! String, "5")
        
        let monthsTextField = app/*@START_MENU_TOKEN@*/.textFields["monthsTextField"]/*[[".textFields[\"Ex.: 10\"]",".textFields[\"monthsTextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        monthsTextField.tap()
        XCTAssertEqual(monthsTextField.value as! String, "Ex.: 10")
        monthsTextField.typeText("10")
        XCTAssertEqual(monthsTextField.value as! String, "10")
        
        app/*@START_MENU_TOKEN@*/.pickerWheels["Mini"]/*[[".pickers[\"Seletor de porte\"].pickerWheels[\"Mini\"]",".pickers[\"sizePickerView\"].pickerWheels[\"Mini\"]",".pickerWheels[\"Mini\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        
        let calculateButton = app/*@START_MENU_TOKEN@*/.buttons["calculateButton"]/*[[".buttons[\"Botão de calcular\"]",".buttons[\"calculateButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertTrue(calculateButton.exists)
        calculateButton.tap()
        
        XCTAssertTrue(app.alerts["🐶 46 anos!"].exists)
        app.alerts["🐶 46 anos!"].scrollViews.otherElements.buttons["Ok"].tap()
    }
    
    func testTextField_Empty() {
        app.launch()
        
        let calculateButton = app/*@START_MENU_TOKEN@*/.buttons["calculateButton"]/*[[".buttons[\"Botão de calcular\"]",".buttons[\"calculateButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertTrue(calculateButton.exists)
        calculateButton.tap()
        
        XCTAssertTrue(app.alerts["🐶 0 anos!"].exists)
        app.alerts["🐶 0 anos!"].scrollViews.otherElements.buttons["Ok"].tap()
    }
    
    func testTextField_NonNumeric() {
        app.launch()
        let yearTextField = app.textFields["yearTextField"]
        yearTextField.tap()
        XCTAssertEqual(yearTextField.value as! String, "Ex.: 5")
        yearTextField.typeText("a")
        XCTAssertEqual(yearTextField.value as! String, "a")
        
        let monthsTextField = app.textFields["monthsTextField"]
        monthsTextField.tap()
        XCTAssertEqual(monthsTextField.value as! String, "Ex.: 10")
        monthsTextField.typeText("b")
        XCTAssertEqual(monthsTextField.value as! String, "b")
        
        app/*@START_MENU_TOKEN@*/.pickerWheels["Mini"]/*[[".pickers[\"Seletor de porte\"].pickerWheels[\"Mini\"]",".pickers[\"sizePickerView\"].pickerWheels[\"Mini\"]",".pickerWheels[\"Mini\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        
        let calculateButton = app/*@START_MENU_TOKEN@*/.buttons["calculateButton"]/*[[".buttons[\"Botão de calcular\"]",".buttons[\"calculateButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertTrue(calculateButton.exists)
        calculateButton.tap()
        
        XCTAssertTrue(app.alerts["🐶 0 anos!"].exists)
        app.alerts["🐶 0 anos!"].scrollViews.otherElements.buttons["Ok"].tap()
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
