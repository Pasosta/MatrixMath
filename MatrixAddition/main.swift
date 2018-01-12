//
//  main.swift
//  MatrixAddition
//
//  Created by Trey Briggs on 1/11/18.
//  Copyright © 2018 Trey Briggs. All rights reserved.
//

import Foundation

var m1: Matrix = Matrix()
var m2: Matrix = Matrix()

m1.createMatrix("First")
m2.createMatrix("Second")

var m3: Matrix = m1 + m2
var m4: Matrix = m1 - m2

print(m1.toString())
print(m2.toString())
print(m3.toString())
print(m4.toString())

