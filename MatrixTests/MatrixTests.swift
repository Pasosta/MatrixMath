//
//  MatrixTests.swift
//  MatrixTests
//
//  Created by Trey Briggs on 1/11/18.
//  Copyright © 2018 Trey Briggs. All rights reserved.
//

import XCTest
@testable import MatrixAddition

class MatrixTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // No special construction needed
    }
    
    override func tearDown() {
        // No special destruction needed
        super.tearDown()
    }
    
    func testMatrix_3x7subtraction_Equal() {
        //Given
        let m1Data: [[Float]] = [[6,6,6,6,6,6,6],
                                 [5,5,5,5,5,5,5],
                                 [5,6,5,6,5,6,5]]
        let m2Data: [[Float]] = [[3.0,3.0,3.0,3.0,3.0,3.0,3.0],
                                 [3.0,3.0,3.0,3.0,3.0,3.0,3.0],
                                 [3.0,3.0,3.0,3.0,3.0,3.0,3.0]]
        let m1: Matrix = Matrix(m1Data)
        let m2: Matrix = Matrix(m2Data)
        
        let testMatrix: Matrix = m1 - m2
        
        //Extected
        let expectedData: [[Float]] = [[3,3,3,3,3,3,3],
                                       [2,2,2,2,2,2,2],
                                       [2,3,2,3,2,3,2]]
        let expectedMatrix: Matrix = Matrix(expectedData)
        
        //Assertations
        XCTAssertEqual(testMatrix.rows, expectedMatrix.rows)
        XCTAssertEqual(testMatrix.columns, expectedMatrix.columns)
        for row in 0..<expectedMatrix.rows {
            for column in 0..<expectedMatrix.columns {
                XCTAssertEqual(testMatrix.matrix[row][column], expectedMatrix.matrix[row][column])
            }
        }
    }
    
    func testMatrix_5x5addition_Equal() {
        let m1Data: [[Float]] = [[2.1,2.2,2.3,2.4,2.5],
                                 [1.1,2.2,1.3,2.4,1.5],
                                 [2.9,2.9,2.9,2.9,2.9],
                                 [2.1,2.2,2.3,2.4,2.5],
                                 [1.1,2.2,1.3,2.4,1.5]]
        let m2Data: [[Float]] = [[3.0,3.0,3.0,3.0,3.0],
                                 [3.0,3.0,3.0,3.0,3.0],
                                 [3.0,3.0,3.0,3.0,3.0],
                                 [3.0,3.0,3.0,3.0,3.0],
                                 [3.0,3.0,3.0,3.0,3.0]]
        let m1: Matrix = Matrix(m1Data)
        let m2: Matrix = Matrix(m2Data)
        
        let testMatrix: Matrix = m1 + m2
        
        //Extected
        let expectedData: [[Float]] = [[5.1,5.2,5.3,5.4,5.5],
                                       [4.1,5.2,4.3,5.4,4.5],
                                       [5.9,5.9,5.9,5.9,5.9],
                                       [5.1,5.2,5.3,5.4,5.5],
                                       [4.1,5.2,4.3,5.4,4.5],]
        let expectedMatrix: Matrix = Matrix(expectedData)
        
        //Assertations
        XCTAssertEqual(testMatrix.rows, expectedMatrix.rows)
        XCTAssertEqual(testMatrix.columns, expectedMatrix.columns)
        for row in 0..<expectedMatrix.rows {
            for column in 0..<expectedMatrix.columns {
                XCTAssertEqual(testMatrix.matrix[row][column], expectedMatrix.matrix[row][column])
            }
        }
    }
    
}
