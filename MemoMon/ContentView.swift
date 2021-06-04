//
//  ContentView.swift
//  MemoMon
//
//  Created by Ítalo Assunção on 04/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
          .stroke(lineWidth: 3)
          
        Text("Hello, world!")
      }
      .padding()
      .foregroundColor(.purple)
    }
}
































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
