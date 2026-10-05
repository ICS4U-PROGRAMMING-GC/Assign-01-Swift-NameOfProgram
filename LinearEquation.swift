//
//  LinearEquation.swift
//
//  Created by Carel
//  Created on 2026-10-05
//  Version 1.0
//  Copyright (c) 2026 Carel. All rights reserved.
//
//  This program solves a linear equation using y = mx + b.
//  The user can solve for y, m, x, or b.
//

import Foundation

// Repeat while the user enters y.
var answer = "y"

while answer == "y" {

    // Choose the variable to solve for.
    print("Solve for y, m, x, or b:", terminator: " ")

    let variable = readLine()!.lowercased()

    // Solve for y.
    if variable == "y" {
        print("Enter m, x, and b:", terminator: " ")
        let values = readLine()!.split(separator: " ")

        let m = Double(values[0])!
        let x = Double(values[1])!
        let b = Double(values[2])!

        print("y = \(m * x + b)")

    // Solve for m.
    } else if variable == "m" {
        print("Enter y, x, and b:", terminator: " ")
        let values = readLine()!.split(separator: " ")

        let y = Double(values[0])!
        let x = Double(values[1])!
        let b = Double(values[2])!

        if x != 0 {
            print("m = \((y - b) / x)")
        } else {
            print("Cannot solve when x is zero.")
        }

    // Solve for x.
    } else if variable == "x" {
        print("Enter y, m, and b:", terminator: " ")
        let values = readLine()!.split(separator: " ")

        let y = Double(values[0])!
        let m = Double(values[1])!
        let b = Double(values[2])!

        if m != 0 {
            print("x = \((y - b) / m)")
        } else {
            print("Cannot solve when m is zero.")
        }

    // Solve for b.
    } else if variable == "b" {
        print("Enter y, m, and x:", terminator: " ")
        let values = readLine()!.split(separator: " ")

        let y = Double(values[0])!
        let m = Double(values[1])!
        let x = Double(values[2])!

        print("b = \(y - m * x)")

    } else {
        print("Please choose y, m, x, or b.")
    }

    // Ask whether to continue.
    print("Solve another? (y/n):", terminator: " ")
    answer = readLine()!.lowercased()
}

// End the program.
print("Goodbye!")