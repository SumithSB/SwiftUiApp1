//
//  ContentView.swift
//  Bullseye2
//
//  Created by Sumith on 11/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible : Bool = false
    @State private var sliderValue : Double = 50.0
    @State private var game : Game = Game()
    
    
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPut the Bullseye as close as you can")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center).lineSpacing(4.0)
                .font(.footnote)
            Text(String(self.game.target))
                .kerning(-1)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue ,in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            
            Button(action: {
                print("Hello")
                self.alertIsVisible = true
            }) {
                Text("Hit Me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                let roundedValue : Int = Int(self.sliderValue.rounded())
                return Alert(title: Text("Hello"), message: Text("The slider value is \(roundedValue) and your points = \(self.game.points(sliderValue: roundedValue))."), dismissButton:.default(Text("Good")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
