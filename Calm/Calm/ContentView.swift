//
//  ContentView.swift
//  Calm
//
//  Created by Berat Rıdvan Asiltürk on 28.11.2023.
//

// TODO: - Flag'ler UserDef'te tutulmali

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @State private var audioPlayer1: AVAudioPlayer!
    @State private var audioPlayer2: AVAudioPlayer!
    @State private var audioPlayNefes: AVAudioPlayer!
    @State private var audioPlayBasari: AVAudioPlayer!
    @State private var audioPlayBarisVeBirlik: AVAudioPlayer!
    @State private var audioPlayBereketDenge: AVAudioPlayer!
    @State private var audioPlay4Cumle: AVAudioPlayer!
    @State private var audioPlay528: AVAudioPlayer!
    @State private var audioPlayMujde: AVAudioPlayer!
    
    @State private var isPlayingNefes = true
    @State private var isPlayingBasari = false
    @State private var isPlayingBarisVeBirlik = false
    @State private var isPlayingBereketDenge = false
    @State private var isPlaying4Cumle = false
    @State private var isPlaying528 = false
    @State private var isPlayingMujde = false
    @State private var isPlaying = false
    
    @StateObject private var audioPlayerManager = AudioPlayerManager()
    
    var body: some View {
        
        VStack {
            Button {
                if isPlayingNefes == true {
                    audioPlayNefes.stop()
                }
                if isPlayingBasari == true {
                    audioPlayBasari.stop()
                }
                if isPlayingBarisVeBirlik == true {
                    audioPlayBarisVeBirlik.stop()
                }
                if isPlayingBereketDenge == true {
                    audioPlayBereketDenge.stop()
                }
                if isPlaying4Cumle == true {
                    audioPlay4Cumle.stop()
                }
                if isPlaying528 == true {
                    audioPlay528.stop()
                }
                playNefes()
            } label: {
                Text("Nefes")
            }
            Spacer()
            Button {
                if isPlayingNefes == true {
                    audioPlayNefes.stop()
                }
                if isPlayingBasari == true {
                    audioPlayBasari.stop()
                }
                if isPlayingBarisVeBirlik == true {
                    audioPlayBarisVeBirlik.stop()
                }
                if isPlayingBereketDenge == true {
                    audioPlayBereketDenge.stop()
                }
                if isPlaying4Cumle == true {
                    audioPlay4Cumle.stop()
                }
                if isPlaying528 == true {
                    audioPlay528.stop()
                }
                playBasari()
            } label: {
                Text("Basari")
            }
            Spacer()
            Button {
                if isPlayingNefes == true {
                    audioPlayNefes.stop()
                }
                if isPlayingBasari == true {
                    audioPlayBasari.stop()
                }
                if isPlayingBarisVeBirlik == true {
                    audioPlayBarisVeBirlik.stop()
                }
                if isPlayingBereketDenge == true {
                    audioPlayBereketDenge.stop()
                }
                if isPlaying4Cumle == true {
                    audioPlay4Cumle.stop()
                }
                if isPlaying528 == true {
                    audioPlay528.stop()
                }
                playBarisVeBirlik()
            } label: {
                Text("BarisVeBirlik")
            }
            Spacer()
            Button {
                if isPlayingNefes == true {
                    audioPlayNefes.stop()
                }
                if isPlayingBasari == true {
                    audioPlayBasari.stop()
                }
                if isPlayingBarisVeBirlik == true {
                    audioPlayBarisVeBirlik.stop()
                }
                if isPlayingBereketDenge == true {
                    audioPlayBereketDenge.stop()
                }
                if isPlaying4Cumle == true {
                    audioPlay4Cumle.stop()
                }
                if isPlaying528 == true {
                    audioPlay528.stop()
                }
                playBereketDenge()
            } label: {
                Text("BereketDenge")
            }
            Spacer()
            Button {
                if isPlayingNefes == true {
                    audioPlayNefes.stop()
                }
                if isPlayingBasari == true {
                    audioPlayBasari.stop()
                }
                if isPlayingBarisVeBirlik == true {
                    audioPlayBarisVeBirlik.stop()
                }
                if isPlayingBereketDenge == true {
                    audioPlayBereketDenge.stop()
                }
                if isPlaying4Cumle == true {
                    audioPlay4Cumle.stop()
                }
                if isPlaying528 == true {
                    audioPlay528.stop()
                }
                playNefes()
            } label: {
                Text("528")
            }
            Spacer()
            Button {
                if isPlayingNefes == true {
                    audioPlayNefes.stop()
                }
                if isPlayingBasari == true {
                    audioPlayBasari.stop()
                }
                if isPlayingBarisVeBirlik == true {
                    audioPlayBarisVeBirlik.stop()
                }
                if isPlayingBereketDenge == true {
                    audioPlayBereketDenge.stop()
                }
                if isPlaying4Cumle == true {
                    audioPlay4Cumle.stop()
                }
                if isPlaying528 == true {
                    audioPlay528.stop()
                }
                play4Cumle()
            } label: {
                Text("4 Cumle")
            }
            Spacer()
            Button {
                if isPlayingNefes == true {
                    audioPlayNefes.stop()
                }
                if isPlayingBasari == true {
                    audioPlayBasari.stop()
                }
                if isPlayingBarisVeBirlik == true {
                    audioPlayBarisVeBirlik.stop()
                }
                if isPlayingBereketDenge == true {
                    audioPlayBereketDenge.stop()
                }
                if isPlaying4Cumle == true {
                    audioPlay4Cumle.stop()
                }
                if isPlaying528 == true {
                    audioPlay528.stop()
                }
                playMujde()
            } label: {
                Text("Mujde")
            }
            Spacer()
        }
        .onAppear{
            playNefes()
        }
    }
    
    func playNefes() {
        isPlayingNefes = true
        if let audioURL = Bundle.main.url(forResource: "nefes", withExtension: "mp3") {
            do {
                audioPlayNefes = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayNefes.volume = 0.40
                //                    audioPlayer1.volume = 0.45
                audioPlayNefes.numberOfLoops = -1
                audioPlayNefes.play()
            } catch {
            }
        }
    }
    
    func playBasari() {
        isPlayingBasari = true
        if let audioURL = Bundle.main.url(forResource: "basari", withExtension: "mp3") {
            do {
                audioPlayBasari = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayBasari.volume = 0.40
                //                    audioPlayer1.volume = 0.45
                audioPlayBasari.numberOfLoops = -1
                audioPlayBasari.play()
            } catch {
            }
        }
    }
    
    func playBarisVeBirlik() {
        isPlayingBarisVeBirlik = true
        if let audioURL = Bundle.main.url(forResource: "baris&birlik", withExtension: "mp3") {
            do {
                audioPlayBarisVeBirlik = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayBarisVeBirlik.volume = 0.40
                //                    audioPlayer1.volume = 0.45
                audioPlayBarisVeBirlik.numberOfLoops = -1
                audioPlayBarisVeBirlik.play()
            } catch {
            }
        }
    }
    
    func playBereketDenge() {
        isPlayingBereketDenge = true
        if let audioURL = Bundle.main.url(forResource: "Bereket&Denge", withExtension: "mp3") {
            do {
                audioPlayBereketDenge = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayBereketDenge.volume = 0.40
                //                    audioPlayer1.volume = 0.45
                audioPlayBereketDenge.numberOfLoops = -1
                audioPlayBereketDenge.play()
            } catch {
            }
        }
    }
    
    func play4Cumle() {
        isPlaying4Cumle = true
        if let audioURL = Bundle.main.url(forResource: "4cumle", withExtension: "mp3") {
            do {
                audioPlay4Cumle = try AVAudioPlayer(contentsOf: audioURL)
                audioPlay4Cumle.volume = 0.40
                //                    audioPlayer1.volume = 0.45
                audioPlay4Cumle.numberOfLoops = -1
                audioPlay4Cumle.play()
            } catch {
            }
        }
    }
    
    func playMujde() {
        isPlayingMujde = true
        if let audioURL = Bundle.main.url(forResource: "mujde", withExtension: "mp3") {
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
    
    func play528Hz() {
        isPlaying528 = true
        if let audioURL = Bundle.main.url(forResource: "528", withExtension: "mp3") {
            do {
                audioPlay528 = try AVAudioPlayer(contentsOf: audioURL)
                audioPlay528.volume = 0.40
                //                    audioPlayer1.volume = 0.45
                audioPlay528.numberOfLoops = -1
                audioPlay528.play()
            } catch {
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
