//
//  MathObject.swift
//  Math
//
//  Created by Georgy on 2024-02-19.
//

import Foundation

infix operator ^^: MultiplicationPrecedence
func ^^ (radix: Double, power: Double) -> Double {
    return Double(pow(Double(radix), Double(power)))
}

public class MathObject {

    func findObjectArea<T: StringProtocol>(_ input: Array<T>) -> Double {
        let input = input.compactMap{Double($0) ?? 0}.sorted(by: >)
        
        switch input.count {
        case 1:
            return circleArea(input[0])
        case 3:
            return triangleArea(input)
        default:
            return 0
        }
    }

    func circleArea(_ radius: Double) -> Double {
        guard radius > 0 else {return 0}
        return (radius ^^ 2) * Double.pi
    }

    func triangleArea(_ sides: [Double]) -> Double {
        guard sides.count == 3 else {return 0}
        let a = sides[0]
        let b = sides[1]
        let c = sides[2]
        guard (a + b) > c && (b + c) > a && (a + c) > b else {return 0}

        if (a ^^ 2) == (b ^^ 2) + (c ^^ 2) {
            return b * c / 2
        } else {
            let p = (a + b + c) / 2
            return (p * (p - a) * (p - b) * (p - c)).squareRoot()
        }
    }
}
