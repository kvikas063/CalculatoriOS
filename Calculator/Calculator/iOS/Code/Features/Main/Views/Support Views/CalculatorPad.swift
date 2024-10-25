//
//  CalculatorPad.swift
//  Calculator
//
//  Created by Vikas Kumar on 25/10/24.
//

import SwiftUI

struct CalculatorPad: View {
    // MARK: - Variables
    @EnvironmentObject var mainViewModel: MainViewModel
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    @State var scale: CGFloat = 1
    @State var foregroundColor: Color = .white
    
    let animationDuration: TimeInterval = 0.15
    
    var dialPad: DialPad
    var color: Color = .label
    
    // MARK: - Views
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .foregroundStyle(
                mainViewModel.currentOperation.rawValue == dialPad.getOperator() && mainViewModel.currentOperation != .unknown ? color.opacity(0.2) : .indigo.opacity(0.2)
            )
            .overlay {
                Text(dialPad.rawValue)
                    .font(TypefaceOne.regular.font(size: 30))
                    .foregroundStyle(color)
            }
            .scaleEffect(scale)
            .onTapGesture {
                self.mainViewModel.performAction(for: dialPad)
                
                withAnimation(.easeInOut(duration: animationDuration)) {
                    scale = 0.95
                }
                
                Timer.scheduledTimer(withTimeInterval: animationDuration, repeats: false) { _ in
                    scale = 1
                }
            }
    }
}

#Preview {
    CalculatorPad(dialPad: .seven)
        .environmentObject(MainViewModel())
        .frame(width: 70, height: 70)
}
