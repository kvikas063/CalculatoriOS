//
//  DialPad.swift
//  Calculator
//
//  Created by Vikas Kumar on 25/10/24.
//
import Foundation

enum DialPad: String {
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case clear = "AC"
    case plusMinus = "+-"
    case percentage = "%"
    case divide = "/"
    case multiply = "*"
    case subtract = "-"
    case plus = "+"
    case decimal = "."
    case revert = "@"
    case equal = "="
    
    func getOperator() -> String {
        switch self {
            case .plus:
                return "+"
            case .subtract:
                return "-"
            case .multiply:
                return "*"
            case .divide:
                return "/"
            default:
                return ""
        }
    }
}
