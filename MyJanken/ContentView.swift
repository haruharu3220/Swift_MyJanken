//
//  ContentView.swift
//  MyJanken
//
//  Created by Yamamoto Hayato on 2023/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
//            Image(.gu)　だとエラー
            Image("gu")
                .resizable()
                .scaledToFit()
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
