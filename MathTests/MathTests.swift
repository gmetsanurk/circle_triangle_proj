//
//  MathTests.swift
//  MathTests
//
//  Created by Georgy on 2024-02-19.
//

import XCTest
@testable import Math

final class MathTests: XCTestCase {

    func testCircleExample() throws {

        let circle = MathObject()
        
        let result0 =  circle.findObjectArea(["0"])
        XCTAssertEqual(result0, 0)
        
        let result1 = circle.findObjectArea(["1"])
        XCTAssertEqual(result1, 3.141592653589793)
        
        let result2 = circle.findObjectArea(["2"])
        XCTAssertEqual(result2, 12.566370614359172)
        
        let resultNegative1 = circle.findObjectArea(["-1"])
        XCTAssertEqual(resultNegative1, 0)
        
        let resultNegative10 = circle.findObjectArea(["-10"])
        XCTAssertEqual(resultNegative1, 0)
        
        let resultNothing = circle.findObjectArea([" "])
        XCTAssertEqual(resultNothing, 0)
        
        let resultAbc = circle.findObjectArea(["Abc"])
        XCTAssertEqual(resultAbc, 0)
        
        let resultSymbol = circle.findObjectArea(["-$"])
        XCTAssertEqual(resultSymbol, 0)
        
        let resultNumbWithZeroAtFront = circle.findObjectArea(["01"])
        XCTAssertEqual(resultNumbWithZeroAtFront, 3.141592653589793)
        
        let result10 = circle.findObjectArea(["10"])
        XCTAssertEqual(result10, 314.1592653589793)
        
        let result100 = circle.findObjectArea(["100"])
        XCTAssertEqual(result100, 31415.926535897932)
    }
    
    func testTriangleExample() throws {
        
        let triangle = MathObject()
        
        let result1 = triangle.findObjectArea(["1", "01", "1"])
        XCTAssertEqual(result1, 0.4330127018922193)
        
        let result2 = triangle.findObjectArea(["3", "4", "5"])
        XCTAssertEqual(result2, 6)
        
        let result3 = triangle.findObjectArea(["abc", "0", " "])
        XCTAssertEqual(result3, 0)
        
        let result4 = triangle.findObjectArea(["10", "10", "12"])
        XCTAssertEqual(result4, 48)
        
        let result5 = triangle.findObjectArea(["10", "10", "10"])
        XCTAssertEqual(result5, 43.30127018922193)
        
        let resultWithZeros = triangle.findObjectArea(["00", "0", "0"])
        XCTAssertEqual(resultWithZeros, 0)
        
        let resultUnrealTriangle = triangle.findObjectArea(["1", "2", "3"])
        XCTAssertEqual(resultUnrealTriangle, 0)
    }

}
