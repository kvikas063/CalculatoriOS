//
//  MainView.swift
//  Calculator
//
//  Created by Vikas Kumar on 24/10/24.
//

import SwiftUI

struct MainView: View {
    // MARK: - Variables
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @StateObject var mainViewModel: MainViewModel = MainViewModel()
    
    let duration: TimeInterval = 0.3
    
    // MARK: - Views
    var body: some View {
        GeometryReader { proxy in
            let height = proxy.size.height
            
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
                Color.background
                    .ignoresSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("CASIO")
                                .font(.custom("EurostileExtended-Black", size: 26))
                            
                            Text("Calculator")
                                .tracking(1.2)
                                .font(.system(size: 20, weight: .medium, design: .monospaced))
                                .textCase(.uppercase)
                                .opacity(0.25)
                                .offset(x: 2)
                        }
                        
                        Spacer()
                        
                        HStack(spacing: 4) {
                            ForEach(0..<4) { _ in
                                Rectangle()
                                    .foregroundStyle(.gray)
                                    .frame(width: 20, height: 20)
                            }
                        }
                    }
                    
                    DisplayView(height: height, colorScheme: colorScheme, duration: duration)
                        .environmentObject(mainViewModel)
                    
                    CalculatorButtons(stackSpacing: 20)
                        .environmentObject(mainViewModel)
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
    }
}

#Preview {
    MainView()
}
