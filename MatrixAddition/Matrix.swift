//
//  matrixMath.swift
//  MatrixMath
//
//  Created by Trey Briggs on 1/11/18.
//  Copyright © 2018 Trey Briggs. All rights reserved.
//

import Foundation

class Matrix {
    
    // MARK: - Class Variables
    
    var matrix: [[Float]]
    var rows: Int
    var columns: Int
    
    static let unEqError: String = "Unable to add Matrices with different dimensions. Returning an empty matrix."
    
    
    // MARK: - Core Functions
    
    init(_ rawData: [[Float]] = []) {
        matrix = rawData
        rows = rawData.count
        if !rawData.isEmpty {
            columns = rawData[0].count
        } else {
            columns = 0
        }
    }
    
    func createMatrix(_ matrixNum: String){
        // Dimension creation
        while rows == 0 {
            print("Enter the Number of Rows in the \(matrixNum) Matrix: ")
            let rowString: String? = readLine(strippingNewline: true)
            rows = Int(rowString ?? "0") ?? 0
            if rows < 1 {
                print("Invalid Number of rows\n")
                rows = 0
            }
        }
        
        while columns == 0 {
            print("Enter the Number of Columns in the \(matrixNum) Matrix: ")
            let columnString: String? = readLine(strippingNewline: true)
            columns = Int(columnString ?? "0") ?? 0
        }
        
        // Fill the matrix
        var matrixData: [[Float]] = []
        var tempRow: [Float] = []
        for row in 1...rows {
            for column in 1...columns {
                var correctValueEntered: Bool = false
                var enterableValue: Float = 0
                while !correctValueEntered {
                    print("Enter the number for row: \(row) column: \(column)")
                    if let valueString: String = readLine(strippingNewline: true),
                        let value: Float = Float(valueString) {
                        correctValueEntered = true
                        enterableValue = value
                    } else {
                        print("The value you entered must be a number.\n")
                    }
                }
                tempRow.append(enterableValue)
            }
            matrixData.append(tempRow)
            tempRow = []
        }
        matrix = matrixData
    }
    
    
    // MARK: - toString function
    func toString() -> String {
        var printableMatrix: String = "[\n"
        for row in 0..<rows {
            printableMatrix += " ["
            for column in 0..<columns {
                printableMatrix += "\(String(matrix[row][column])) "
            }
            printableMatrix += "]\n"
        }
        printableMatrix += "]\n"
        return printableMatrix
    }
}


// MARK: - Overloaded operators

extension Matrix {
    static func +(_ lhs: Matrix, _ rhs: Matrix) -> Matrix {
        if lhs.rows == rhs.rows && lhs.columns == rhs.columns {
            let result: [[Float]] = zip(lhs.matrix, rhs.matrix).map({zip($0,$1).map(+)})
            return Matrix(result)
        } else {
            print(unEqError)
            return Matrix()
        }
    }
    
    static func -(_ lhs: Matrix, _ rhs: Matrix) -> Matrix {
        if lhs.rows == rhs.rows && lhs.columns == rhs.columns {
            let result: [[Float]] = zip(lhs.matrix, rhs.matrix).map({zip($0,$1).map(-)})
            return Matrix(result)
        } else {
            print(unEqError)
            return Matrix()
        }
    }
}


