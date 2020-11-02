//
//  LottieAnimationView.swift
//  SwiftUI Lottie Animation
//
//  Created by elhajjaji on 11/2/20.
//

import SwiftUI
import Lottie

struct LottieAnimationView : UIViewRepresentable{
    
    var animationName : String
    
    func makeUIView(context: Context) -> AnimationView {
        
        let view = AnimationView(name: animationName, bundle: Bundle.main)
        
        view.loopMode = .loop
        view.play()
        
        return view
    }
    func updateUIView(_ uiView: AnimationView, context: Context) {
    }
    
}

