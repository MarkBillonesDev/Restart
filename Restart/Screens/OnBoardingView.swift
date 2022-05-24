//
//  OnBoardingView.swift
//  Restart
//
//  Created by OPSolutions on 5/19/22.
//

import SwiftUI

struct OnBoardingView: View {
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            VStack(spacing: 20) {
                // MARK: - HEADER
                
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                         It is not how much we give but
                         how much love we put in giving
                         """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                }
                // MARK: - CENTER
                
                ZStack {
                    ZStack {
                        // Cool Design in the background.
                        Circle()
                            .circleWithOpacity(40)
                        
                        Circle()
                            .circleWithOpacity(80)
                    }//: ZStack
                   
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                } //: CENTER
                
                Spacer()
                // MARK: - FOOTER
                
                ZStack{
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width:80)
                        
                        Spacer()
                    }
                    
                    ZStack{
                        Circle()
                            .fill(Color("ColorRed"))
                        
                        Circle()
                            .fill(.black.opacity(0.15))
                            .padding(8)
                        
                        Image(systemName: "chevron.right.2")
                            .font(.system(size: 24, weight: .bold))
                        
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 80, height: 80, alignment: .center)
                }
                .frame(height: 80)
                .padding()
            }
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
            .previewDevice("iPhone 12 Pro Max")
    }
}


extension Circle {
    func circleWithOpacity(_ lineWidth: CGFloat) -> some View {
        self
            .stroke(.white.opacity(0.2), lineWidth: lineWidth)
            .frame(width: 260, height: 260, alignment: .center)
    }
}
