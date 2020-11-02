//
//  ContentView.swift
//  SwiftUI Lottie Animation
//
//  Created by elhajjaji on 11/2/20.
//

import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home : View {
    var body: some View {
        NavigationView{
            NavigationLink(
                destination: CartPage(),
                label: {
                    Label(
                        title: {
                            Text("Go to cart Page")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        },
                        icon: {
                            Image(systemName: "cart")
                            .font(.system(size:26,weight:.bold))
                            .foregroundColor(Color("red"))
                        })
                })
            navigationTitle("Home")
        }
    }
}

struct CartPage : View {
    
    @State var black = Color.black.opacity(0.7)
    @Environment(\.presentationMode) var present
    
    var body : some View {
        
        VStack{
            HStack{
                
                Button(action: {present.wrappedValue.dismiss()}, label: {
                    Image(systemName: "xmark")
                        .font(.system(size: 24,weight:.heavy))
                        .foregroundColor(.black)
                })
                
                Spacer()
            }
            .padding()
            

            LottieAnimationView(animationName: "37141-shopping-checlist-app")
                .frame(width:300)

           
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Start Shopping")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .background(Color("red"))
                    .cornerRadius(6)
            })
            .padding(.bottom,10)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}



