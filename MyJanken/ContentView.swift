//
//  ContentView.swift
//  MyJanken
//
//  Created by Yamamoto Hayato on 2023/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var jankenNumber = 0
    var body: some View {
        VStack {
            //画面下部いっぱいまで広げる
            Spacer()
            if jankenNumber == 0{
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            }else if jankenNumber == 1{
//                Image(.gu)　だとエラー
                Image("gu")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("グー")
                    .padding(.bottom)
            }else if jankenNumber == 2{
                Image("choki")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            }else {
                Image("pa")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            Button(action: {
//                    print("タップされたよ")
//                jankenNumber = Int.random(in: 1...3)
                var newJankenNumber = 0
                //繰り返し
                repeat{
                    newJankenNumber = Int.random(in: 1...3)
                }while jankenNumber == newJankenNumber
                
                jankenNumber = newJankenNumber
            }, label: {
                Text("じゃんけんをする")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundColor(.white)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
