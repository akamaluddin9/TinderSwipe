//
//  RewardsView.swift
//  testNano1
//
//  Created by Ario Syahputra on 20/03/23.
//

//import SwiftUI
//
//struct RewardsView: View {
//    var body: some View {
//        ZStack{
//            Image("Background3")
//
//            VStack {
//                Text("Your starter\n pokemon is...")
//                    .font(.system(size: 34)).fontWeight(.heavy).padding(.top,100).multilineTextAlignment(.center)
//
////                Spacer()
//
//                Text("A short template description is a brief summary of the structure and purpose of a document or file template. It typically includes the type of document or file, its intended use, and a brief overview of its sections or contents. The goal of a short template description is to provide users with a quick understanding of what the template is and how it can be used. It may also include instructions or guidance on how to use the template effectively.A short template description is a brief summary of the structure and purpose of a document or file template. It typically includes the type of document or file, its intended use, and a brief overview of its sections or contents. The goal of a short template description is to provide users with a quick understanding of what the template is and how it can be used. It may also include instructions or guidance on how to use the template effectively.").frame(width: 300,height: 300).background(.white).cornerRadius(20).frame(minWidth: 500).multilineTextAlignment(.center)
//
//                Spacer()
//
//
//            }
//
//        }
//        .padding()
//    }
//}
//
//
//struct RewardsView_Previews: PreviewProvider {
//    static var previews: some View {
//        RewardsView()
//    }
//}

//
//  ContentView.swift
//  test
//
//  Created by Audriella Ruth Jim  on 21/03/23.
//

import SwiftUI

struct FireView: View {
    @Binding var name: String
    var body: some View {
        NavigationView{
            
            ZStack {
                Image("Background3").resizable().aspectRatio(contentMode: .fill)
                    .ignoresSafeArea(.all)
                
                    VStack {
                        Text("Hi \(name),\nyour element is...").multilineTextAlignment(.center)
                            .font(.system(size:34))
                            .fontWeight(.heavy)
                        VStack{
                            Text("Fire")
                                .font(.title)
                                .bold()
                                .padding()
                            
                            Image("charmander")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .foregroundColor(.accentColor)
                            
                            Text("You are on fire! Just kidding, you are full of energy like a ball of fire. You light up the academy with your boundless energy and excitement for the program. You are always on the go, bursting with energy, and radiating excitement in the academy. However, you should know that people can easily detect your mood, so remember to take a breather every once in a while.")
                                .font(.body)
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding(20)
                        }
                        .background(.white)
                        .cornerRadius(20)
                        .padding().shadow(radius: 8)

                        
                        NavigationLink(destination: ContentView(name: "")) {
                            Text("Play Again").buttonStyle(.borderless).frame(width: 150, height: 50).background(Color(hex: "4BAE4F")).foregroundColor(.white).cornerRadius(13).shadow(radius: 8).padding(.top,10)
                        }
                        
                    }
                    .padding()
  
            }
        }
        .navigationBarBackButtonHidden(true)
            
        }
       
}

struct FireViewPreviews: PreviewProvider {
    static var previews: some View {
        FireView(name: .constant(""))
    }
}
