//
//  CaoculadoraTests.swift
//  CaoculadoraTests
//
//  Created by Alessandra Pereira on 25/10/20.
//

import XCTest
@testable import Caoculadora

class CaoculadoraTests: XCTestCase {
    
    // MARK: - Set Up & Tear Down

    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        
    }

    // MARK: - Tests for Model
    
    func testhumanAge() {
        let xsmallDog = Dog(years: 10, months: 11, size: .xsmall)
        
        let humanAge = xsmallDog.humanAge()
        let correctAge = 43
        XCTAssertEqual(humanAge, correctAge, "Cálculo da idade de um dog xsmall com 10 anos e 11 meses foi de \(humanAge) ao invés de \(correctAge)")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
