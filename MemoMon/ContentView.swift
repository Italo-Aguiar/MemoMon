//
//  ContentView.swift
//  MemoMon
//
//  Created by Ítalo Assunção on 04/06/21.
//

import SwiftUI
 
struct ContentView: View {
  var emojis = ["🚀", "🚴🏻‍♀️", "✈️", "⛵️", "🚲", "🚆", "🚔", "🛵", "🛺", "🚡", "🛴", "🚞", "🚁"]
  
  @State var emojiCount = 6
  
  var body: some View {
    VStack {
      ScrollView {
        LazyVGrid (columns: [  GridItem(.adaptive(minimum: 65)) ]) {
          ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
            CardView(isFaceUp: true, content: emoji).aspectRatio(2/3, contentMode: .fit )
          }
        }
      }
      Spacer()
      HStack {
        remove
        Spacer()
        add
      }
      .padding()
      .font(.largeTitle)
    }
    .padding()
    .foregroundColor(.purple)
  }
  
  var add: some View {
    Button(action: {
      if emojiCount < emojis.count {
        emojiCount += 1
      }
    } , label: {
      Image(systemName: "plus.circle")
    })
  }
  
  var remove: some View {
    Button(action: {
      if emojiCount > 1 {
        emojiCount -= 1
      }
    } , label: {
      Image(systemName: "minus.circle")
    })
  }
}

struct CardView: View {
  @State var isFaceUp: Bool
  var content: String
  
  var body: some View {
    ZStack {
      let shape = RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
      
      if isFaceUp {
        shape.fill().foregroundColor(.white)
        shape.strokeBorder(lineWidth: 3)
        Text(content).font(.largeTitle)
      } else {
        shape.fill()
      }
    }
    .onTapGesture {
      isFaceUp = !isFaceUp
    }
  }
}
































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
        .preferredColorScheme(.dark)
      
      ContentView()
        .preferredColorScheme(.light)
    }
}
