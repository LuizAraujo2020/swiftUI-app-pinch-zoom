//
//  ContentView.swift
//  PinchZoom
//
//  Created by Luiz Araujo on 25/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false
    @State private var imageScale = CGFloat(1)

    var body: some View {
        NavigationStack {
            ZStack {
                // MARK: - PAGE IMAGE
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .animation(.none, value: isAnimating)
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .animation(.linear(duration: 1), value: isAnimating)
                    .scaleEffect(imageScale)
                    .onTapGesture(count: 2) {
                        if imageScale == 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                        } else {
                            withAnimation(.spring()) {
                                imageScale = 1
                            }
                        }
                    }
            } //: zstack
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
//                withAnimation(.linear(duration: 1)) {
                    isAnimating = true
//                }
            }
        } //: nav
    }
}

#Preview {
    ContentView()
}
