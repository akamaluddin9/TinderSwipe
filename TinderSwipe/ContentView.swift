//
//  ContentView.swift
//  TinderSwipe
//
//  Created by KAMAL on 21/03/23.
//

import SwiftUI

struct ContentView: View {
    private var questionList: [String] = [
        "Pernah Telat Ga?",
        "Nongkrong di lab sampe malem?",
        "Pernah lupa sama loker sendiri?" ,
        "Tiap hari nyiram taneman?",
        "Saling follow sama mentor di sosmed?",
        "Sering makan dikantin?",
        "Gak pernah bikin kopi di pantry",
        "Naksir sama temen di academy?aaaa",
        "Naksir sama mentor di academy?",
        "Nongkrong di the breeze habis academy",
        ]
        .reversed()
    
    var body: some View {
        VStack {
            ZStack{
                ForEach(questionList, id: \.self) { questionList in CardView(questionList: questionList)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
