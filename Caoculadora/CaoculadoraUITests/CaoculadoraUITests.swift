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
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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

    func testExample() throws {
        // UI tests must launch the application that they test.
        app.launch()
        
//        app/*@START_MENU_TOKEN@*/.textFields["yearTextField"]/*[[".textFields[\"Ex.: 5\"]",".textFields[\"yearTextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//
//        app/*@START_MENU_TOKEN@*/.textFields["monthsTextField"]/*[[".textFields[\"Ex.: 10\"]",".textFields[\"monthsTextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//
//        app/*@START_MENU_TOKEN@*/.pickerWheels["Mini"].press(forDuration: 0.5);/*[[".pickers[\"Seletor de porte\"].pickerWheels[\"Mini\"]",".tap()",".press(forDuration: 0.5);",".pickers[\"sizePickerView\"].pickerWheels[\"Mini\"]",".pickerWheels[\"Mini\"]"],[[[-1,4,1],[-1,3,1],[-1,0,1]],[[-1,2],[-1,1]]],[0,0]]@END_MENU_TOKEN@*/
//        app/*@START_MENU_TOKEN@*/.staticTexts["Cãocular"]/*[[".buttons[\"Botão de calcular\"].staticTexts[\"Cãocular\"]",".buttons[\"calculateButton\"].staticTexts[\"Cãocular\"]",".staticTexts[\"Cãocular\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app.alerts["🐶 29 anos!"].scrollViews.otherElements.buttons["Ok"].tap()
        
        
        let yearTextField = app.textFields["yearTextField"]
        yearTextField.tap()
        yearTextField.typeText("5")

        let monthsTextField = app.textFields["monthsTextField"]
        monthsTextField.tap()
        monthsTextField.typeText("10")

        app/*@START_MENU_TOKEN@*/.pickerWheels["Mini"]/*[[".pickers[\"Seletor de porte\"].pickerWheels[\"Mini\"]",".pickers[\"sizePickerView\"].pickerWheels[\"Mini\"]",".pickerWheels[\"Mini\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        app/*@START_MENU_TOKEN@*/.buttons["calculateButton"]/*[[".buttons[\"Botão de calcular\"]",".buttons[\"calculateButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.alerts["🐶 46 anos!"].scrollViews.otherElements.buttons["Ok"].tap()

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
