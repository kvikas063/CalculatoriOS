//
//  DisplayView.swift
//  Calculator
//
//  Created by Vikas Kumar on 25/10/24.
//

import SwiftUI

struct DisplayView: View {
    // MARK: - Variables
    @EnvironmentObject var mainViewModel: MainViewModel
    
    let height: CGFloat
    let colorScheme: ColorScheme
    let duration: TimeInterval
    
    // MARK: - Views
    var body: some View {
        ZStack {
            ZStack {
                DisplayShape()
                    .foregroundStyle(Color.indigo).opacity(0.05)
                
                VStack(spacing: 0) {
                    
                    Spacer()
                    
                    Rectangle()
                        .foregroundStyle(.cyan)
                        .frame(height: 18)
                        .opacity(0.3)
                    
                    Rectangle()
                        .foregroundStyle(.orange)
                        .frame(height: 18)
                        .opacity(0.25)
                }
                
                DisplayShape()
                    .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                    .foregroundStyle(Color.label)
                    .padding(.horizontal, 2.25)
            }
            .frame(height: height * 0.25)
            
            .overlay(alignment: .trailing) {
                
                ZStack {
                    
                    Text("0")
                        .foregroundStyle(Color.label)
                        .font(TypefaceOne.regular.font(size: 62))
                        .tracking(4)
                        .lineLimit(1)
                        .animation(.easeInOut(duration: duration), value: self.mainViewModel.result)
                        .opacity(self.mainViewModel.result.isEmpty ? 0.6 : 0)
                        .animation(.default, value: self.mainViewModel.result.isEmpty)
                    
                    Text(mainViewModel.result)
                        .foregroundStyle(Color.label)
                        .font(TypefaceOne.regular.font(size: 62))
                        .tracking(4)
                        .minimumScaleFactor(0.6)
                        .lineLimit(1)
                        .animation(.easeInOut(duration: duration), value: self.mainViewModel.result)
                        .animation(.default, value: self.mainViewModel.result.isEmpty)
                }
                .padding(.horizontal, 24)
            }
        }
    }
}

#Preview {
    DisplayView(height: 818, colorScheme: .light, duration: 0.3)
        .padding(12)
        .environmentObject(MainViewModel())
}
