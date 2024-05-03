//
//  OnboardingScreenView.swift
//  ShoppingApp
//
//  Created by Macbook Pro on 02/05/2024.
//

import SwiftUI

struct OnboardingScreenView: View {
    var body: some View {
        NavigationView{
            VStack(spacing:30){
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                VStack(alignment: .leading,spacing: 10){
                    Text("Order Your Favourite Fruits")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(.largeTitle))
                    Text("Eat fresh fruits and try to be healthy")
                        .font(.system(.title3))
                        .foregroundColor(.black.opacity(0.7))
                }
                Spacer()
                NavigationLink(destination: HomeScreen()){
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280,height: 60,alignment: .trailing)
                        .overlay(
                            HStack(spacing: 10){
                                Text("Next")
                                    .font(.title)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    Image(systemName: "chevron.right")
                            }.foregroundColor(.black)
                        )
                }
                Spacer()
                
                
                
            }
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            
        }
    }
}

#Preview {
    OnboardingScreenView()
}
