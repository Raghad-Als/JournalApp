//  HomeView.swift
//  JournalApp

//  Created by Raghad Hamdan Alsuhaim on 28/04/1447 AH.
//
import SwiftUI

struct HomeView: View {
    @State private var search: String = ""

    var body: some View {
        ZStack {
            LinearGradient( gradient: Gradient(colors: [Color(hex: "141420"), Color(hex: "000000")]),
                          startPoint: .top,
                          endPoint: .bottom )
            .ignoresSafeArea()

            VStack(spacing: 24) {
                // ===== العنوان + كبسولة الأزرار =====
                HStack {
                    Text("Journal")
                           .font(.system(size: 34, weight: .bold))
                           .foregroundColor(.white)

                       Spacer()

                       Button {
                           
                       } label: {
                           if #available(iOS 26.0, *) {
                               HStack(spacing: 12) {
                                   Image(systemName: "line.3.horizontal.decrease")
                                   Image(systemName: "plus")
                               }
                               .font(.title3)
                               .foregroundStyle(.white)
                               .padding(.vertical, 10)
                               .padding(.horizontal, 16)
                               .background(
                                Capsule()
                                    .glassEffect()
                               )
                           } else {
                             
                           }
                       }
                       .buttonStyle(.plain) // يخلي الزر بدون تظليل إضافي
                   }
                   .padding(.horizontal, 20)
                   .padding(.top, 8)
                Spacer(minLength: 20)

                // ===== المحتوى الأوسط =====
                VStack(spacing: 14) {
                    Image("book.closed")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    Text("Begin Your Journal")
                        .font(.system(size: 26, weight: .bold))
                        .foregroundColor(Color(red: 0.71, green: 0.61, blue: 1.0))

                    Text("Craft your personal diary, tap the\nplus icon to begin")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white.opacity(0.7))
                }
                .padding(.horizontal, 24)

                Spacer()

                // ===== شريط البحث =====
                if #available(iOS 26.0, *) {
                    HStack(spacing: 10) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white.opacity(0.75))
                        
                        TextField(
                            "", text: $search,
                            prompt: Text("Search").foregroundColor(.white.opacity(0.65)) // ← كذا يبان
                        )
                        .foregroundColor(.white)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        
                        Button { /* voice */ } label: {
                            Image(systemName: "mic").foregroundColor(.white.opacity(0.9))
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 14)
                    .background(
                        Capsule().glassEffect() // أو glassBackgroundEffect(in: Capsule())
                    )
                    .padding(.horizontal, 20)
                    .padding(.bottom, 16)
                } else {
                    // Fallback on earlier versions
                }
                }
            }
        }
    }

