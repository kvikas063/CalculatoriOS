//
//  FontManager.swift
//  Calculator
//
//  Created by Vikas Kumar on 25/10/24.
//

import SwiftUI

enum TypefaceOne {
    case regular
    
    func font(size: CGFloat) -> Font {
        switch self {
            case .regular:
                return .custom("BungeeLayers-Regular", size: size)
        }
    }
}
