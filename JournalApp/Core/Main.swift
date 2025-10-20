//  JournalAppApp.swift
//  JournalApp
//  Created by Raghad Hamdan Alsuhaim on 27/04/1447 AH.


import SwiftUI

@main
struct Main: App {
    @State private var showSplash = true   // نعرض السبلاتش أول

      var body: some Scene {
          WindowGroup {
              if showSplash {
                  SplashView()
                      .onAppear {
                          // بعد 2 ثانية انتقل للواجهة التالية
                          DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                              withAnimation { showSplash = false }
                          }
                      }
              } else {
                  HomeView() // ← الواجهة الثانية (ثابتة حالياً)
              }
          }
      }
}
