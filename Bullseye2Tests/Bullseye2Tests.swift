//
//  Bullseye2Tests.swift
//  Bullseye2Tests
//
//  Created by Sumith on 12/07/21.
//

import XCTest
@testable import Bullseye2

class Bullseye2Tests: XCTestCase {
    
    var game : Game!
    
    override func setUpWithError() throws {
        
        
        game = Game()
        
    }
    
    override func tearDownWithError() throws {
        game = nil
    }
    
    func testExample() throws {
        XCTAssertEqual(game.points(sliderValue: 50), 999)
    }
    
}
