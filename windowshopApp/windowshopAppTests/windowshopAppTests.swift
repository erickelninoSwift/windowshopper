//
//  windowshopAppTests.swift
//  windowshopAppTests
//
//  Created by El nino Cholo on 2020/08/10.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import XCTest

class windowshopAppTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testWagehourd()
    {
        XCTAssert(wage.gethours(forwage: 20.50, forprice: 82.0) == 4)
        XCTAssert(wage.gethours(forwage: 20.0, forprice: 100.0) == 5)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
