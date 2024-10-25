//
//  CalculatorButtons.swift
//  Calculator
//
//  Created by Vikas Kumar on 25/10/24.
//

import SwiftUI

struct CalculatorButtons: View {
    // MARK: - Variables
    @EnvironmentObject var mainViewModel: MainViewModel

    var stackSpacing: CGFloat = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: stackSpacing - 4) {
            Spacer()
            
            HStack(spacing: stackSpacing) {
                CalculatorPad(dialPad: .clear, color: .teal)
                CalculatorPad(dialPad: .plusMinus, color: .teal)
                CalculatorPad(dialPad: .percentage, color: .teal)
                CalculatorPad(dialPad: .divide, color: .orange)
            }
            
            HStack(spacing: stackSpacing) {
                CalculatorPad(dialPad: .seven)
                CalculatorPad(dialPad: .eight)
                CalculatorPad(dialPad: .nine)
                CalculatorPad(dialPad: .multiply, color: .orange)
            }
            
            HStack(spacing: stackSpacing) {
                CalculatorPad(dialPad: .four)
                CalculatorPad(dialPad: .five)
                CalculatorPad(dialPad: .six)
                CalculatorPad(dialPad: .subtract, color: .orange)
            }
            
            HStack(spacing: stackSpacing) {
                CalculatorPad(dialPad: .one)
                CalculatorPad(dialPad: .two)
                CalculatorPad(dialPad: .three)
                CalculatorPad(dialPad: .plus, color: .orange)
            }
            
            HStack {
                CalculatorPad(dialPad: .zero)
                
                HStack(spacing: stackSpacing) {
                    CalculatorPad(dialPad: .decimal)
                    CalculatorPad(dialPad: .equal, color: .orange)
                }
            }
        }
        .environmentObject(mainViewModel)
    }
}

#Preview {
    CalculatorButtons()
        .frame(height: 450)
        .padding(24)
        .environmentObject(MainViewModel())
}
