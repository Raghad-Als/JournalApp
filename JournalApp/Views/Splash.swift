//  All The Ui Will Be In This File
//  View.swift
//  JournalApp
//  Created by Raghad Hamdan Alsuhaim on 27/04/1447 AH.

import SwiftUI

struct SplashView: View {
    
    var body: some View {
        ZStack {
         LinearGradient( gradient: Gradient(colors: [Color(hex: "141420"), Color(hex: "000000")]),
                startPoint: .top,
                endPoint: .bottom )
    
            .ignoresSafeArea()

            VStack(spacing: 16) {
               
                Image("JournalLogo") 
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)

                // اسم التطبيق
                Text("Journali")
                    .font(.system(size: 36, weight: .bold))
                    .foregroundColor(.white)

                // الوصف
                Text("Your thoughts, your story")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.7))
            }
            .padding(.horizontal, 24)
        }
    }
}
