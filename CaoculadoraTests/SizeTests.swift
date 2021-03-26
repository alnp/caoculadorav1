//
//  SizeTests.swift
//  CaoculadoraTests
//
//  Created by Alessandra Pereira on 25/10/20.
//

import XCTest
@testable import Caoculadora

class SizeTests: XCTestCase {
    
    func testSize_xsmall() {
        let xsmallSize = Size.xsmall
        
        XCTAssertEqual(xsmallSize.rawValue, 4)
        XCTAssertEqual(xsmallSize.description, "Mini")
    }
    
    func testSize_small() {
        let xsmallSize = Size.small
        
        XCTAssertEqual(xsmallSize.rawValue, 5)
        XCTAssertEqual(xsmallSize.description, "Pequeno")
    }
    
    func testSize_medium() {
        let xsmallSize = Size.medium
        
        XCTAssertEqual(xsmallSize.rawValue, 6)
        XCTAssertEqual(xsmallSize.description, "Médio")
    }
    
    func testSize_large() {
        let xsmallSize = Size.large
        
        XCTAssertEqual(xsmallSize.rawValue, 7)
        XCTAssertEqual(xsmallSize.description, "Grande")
    }
    
    func testSize_xlarge() {
        let xsmallSize = Size.xlarge
        
        XCTAssertEqual(xsmallSize.rawValue, 8)
        XCTAssertEqual(xsmallSize.description, "Gigante")
    }
}
