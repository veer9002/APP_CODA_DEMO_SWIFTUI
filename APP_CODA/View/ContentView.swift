//
//  ContentView.swift
//  APP_CODA
//
//  Created by Manish  Sharma on 03/03/22.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("Guess These Movies").font(.title).bold()
            Text("Can you guess the movies from these emojis").font(.footnote)
            Text("Tap the button to find out the answer").font(.footnote)

            Button {
                self.speak(text: "Happy Programming")
            } label: {
                Text("👎🏻😵😈").font(.body)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(10)

            Button {
              self.speak(text: "Hellow World")

            } label: {
                Text("🎃👌🏻").font(.body)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.yellow)
            .cornerRadius(10)
            
            Button {
                self.speak(text: "Hellow World")

            } label: {
                Text("😧").font(.body)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
            
            Button {
                self.speak(text: "Hellow World")

            } label: {
                Text("💪🏻✋🏿").font(.body)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.brown)
            .cornerRadius(10)
        }
    }
    
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
