//
//  DisplayShape.swift
//  Calculator
//
//  Created by Vikas Kumar on 25/10/24.
//

import SwiftUI

// Custom Shape to Render the Display
struct DisplayShape: Shape {
    func path(in rect: CGRect) -> Path {
        let cX = rect.midX
        let cY = rect.midY
        
        var path = Path()
        path.move(to: CGPoint(x: 0, y: cY * 2))
        path.addLine(to: CGPoint(x: cX * 2, y: cY * 2))
        path.addLine(to: CGPoint(x: cX * 2, y: 0))
        path.addLine(to: CGPoint(x: cX / 2 - 40, y: 0))
        
        path.addLine(to: CGPoint(x: 0, y: cY - 62))
        path.closeSubpath()
        
        return path
    }
}

#Preview {
    DisplayShape()
        .stroke(lineWidth: 2)
        .padding(12)
        .frame(height: 240)
}
