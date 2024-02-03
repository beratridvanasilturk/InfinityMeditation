//
//  ContentView.swift
//  Calm
//
//  Created by Berat Rıdvan Asiltürk on 28.11.2023.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @State private var audioPlayer1: AVAudioPlayer!
    @State private var audioPlayer2: AVAudioPlayer!
    @State private var isPlaying = false
    
    @StateObject private var audioPlayerManager = AudioPlayerManager()
    
    var body: some View {
        
        VStack {
            HStack{
                Button {
                    play528Hz()
                } label: {
                    Text("528 Hz")
                }
                
            }
            
        }
        .onAppear{
            
            //            playAudio1()
            //            playAudio2()
        }
    }
    func play528Hz() {
        if let audioURL = Bundle.main.url(forResource: "528", withExtension: "mp3") {
            do {
                audioPlayer1 = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayer1.volume = 0.40
                //                    audioPlayer1.volume = 0.45
                audioPlayer1.numberOfLoops = -1
                audioPlayer1.play()
            } catch {
            }
        }
    }
    
    func playAudio1() {
        if let audioURL = Bundle.main.url(forResource: "1", withExtension: "mp3") {
            do {
                audioPlayer1 = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayer1.volume = 0.40
                //                    audioPlayer1.volume = 0.45
                audioPlayer1.numberOfLoops = -1
                audioPlayer1.play()
            } catch {
                print("Şarkı 1 çalma hatası: \(error.localizedDescription)")
            }
        } else {
            print("Şarkı 1 URL'si bulunamadı.")
        }
    }
    
    // İkinci ses dosyasını çalma fonksiyonu
    func playAudio2() {
        if let audioURL = Bundle.main.url(forResource: "2", withExtension: "mp3") {
            do {
                audioPlayer2 = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayer2.volume = 0.6
                //                    audioPlayer2.volume = 0.06
                audioPlayer2.numberOfLoops = -1
                audioPlayer2.play()
            } catch {
                print("Şarkı 2 çalma hatası: \(error.localizedDescription)")
            }
        } else {
            print("Şarkı 2 URL'si bulunamadı.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
