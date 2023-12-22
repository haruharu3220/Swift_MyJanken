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
            if jankenNumber == 0{
                Text("これからじゃんけんをします")
            }else if jankenNumber == 1{
//                Image(.gu)　だとエラー
                Image("gu")
                    .resizable()
                    .scaledToFit()
                Text("グー")
            }else if jankenNumber == 2{
                Image("choki")
                    .resizable()
                    .scaledToFit()
                Text("チョキ")
            }else {
                Image("pa")
                    .resizable()
                    .scaledToFit()
                Text("パー")
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
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
