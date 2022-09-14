//
//  ContentView.swift
//  CW5ALI
//
//  Created by Ali AlShammari on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = ["😃" , "😂" ,"🤒" ,"🥶" ,"😨" ,"🥱" ,"😭" ,"😤" ,"🤯" ,"🫠" ,"😈" ,"🤡"]
    @State var emo = ""
    var body: some View {
        VStack{
            Text("اختار الإيموجي اللي يعبّر عنك اليوم")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding(50)
            Text(emo)
                .font(.system(size: 90))
                .frame(width: 150, height: 90)
                .padding()
                .padding()
            ScrollView(.horizontal){
                HStack{
                    ForEach(emojis, id: \.self) {emoji in
                        Text(emoji)
                            .font(.system(size: 70))
                            .frame(width: 100, height: 90)
                            .background(.orange)
                            .clipShape(Circle())
                            .onTapGesture {
                            emo = emoji
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
