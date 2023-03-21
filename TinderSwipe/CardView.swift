//
//  CardView.swift
//  TinderSwipe
//
//  Created by KAMAL on 21/03/23.
//

import SwiftUI

struct CardView: View {
    var questionList: String
    @State private var offset = CGSize.zero
    @State private var color: Color = .black
    
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 320, height: 420)
                .border(.white,width: 6.0)
                .cornerRadius(6)
                .foregroundColor(color.opacity(0.9))
                .shadow(radius: 4)
            HStack {
                Text(questionList)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                
                
            }
        }
        .offset(x: offset.width, y:offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
//                    withAnimation {
//                        changeColor(width: offset.width)
//                    }

                } .onEnded {
                    _ in
                    withAnimation{
                        swipeCard(width: offset.width)
                        changeColor(width: offset.width)
                        
                    }
                }
        )
    }
    
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            print("\(questionList) No")
            offset = CGSize(width:-500, height:0)
        case 150...(500):
            print("\(questionList) Yes")
            offset = CGSize(width:500, height:0)
        default:
            offset = .zero
        }
    }
    
    func changeColor(width: CGFloat){
        switch width {
        case -500...(-130):
            color = .red
        case 130...(500):
            color = .green
        default:
            offset = .zero
            
        }
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(questionList:"Mario")
    }
}
