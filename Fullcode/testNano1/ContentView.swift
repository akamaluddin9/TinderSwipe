//
//  ContentView.swift
//  testNano1
//
//  Created by Ario Syahputra on 20/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    
    var body: some View {
        
        NavigationView {
            
            ZStack{
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Find your\n pokemon starter!")
                        .font(.system(size: 34)).fontWeight(.heavy).padding(.top,100).multilineTextAlignment(.center)

                    Image("Artwork")
                                .resizable()
                                .scaledToFit().frame(width: 380, height: 300).padding(.top,20)
                    
                    //Form Nama
                    TextField("Insert your name..", text: $name).multilineTextAlignment(.center)
                        .frame(width: 280, height: 30)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.all)
                        .background(.white)
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray).opacity(0.15)).padding(.top,40)
                    
                    
                    
                    //Button Start
                    NavigationLink(destination: FireView(name: $name)) {
                        Text("Start").buttonStyle(.borderless).frame(width: 150, height: 50).background(Color(hex: "4BAE4F")).foregroundColor(.white).cornerRadius(13).padding(.top,40).shadow(radius: 8)
                    }
                    
                    Spacer()
                }
               
            }
    //        .padding()
            
        }
        .navigationBarBackButtonHidden(true)
        
            
        }

        
}


struct ContentViewPreview: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

