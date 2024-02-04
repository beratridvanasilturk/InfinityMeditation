//
//  ContentView.swift
//  Calm
//
//  Created by Berat Rıdvan Asiltürk on 28.11.2023.
//

// TODO: - Flag'ler UserDef'te tutulmali

import SwiftUI
import AVFoundation
import AVKit

struct ContentView: View {
    
    // Button Hide
    @State private var isHidden = false
    
    @State var currentVideo = "nefesMp4"
    
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
        ZStack {
            
            VideoPlayerView(currentVideo: $currentVideo)
                        .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button {
                    currentVideo = "nefesMp4"
                    checkIsPlaying()
                    playNefes()
                    withAnimation {
                        isHidden.toggle()
                    }
                } label: {
                    if !isHidden {
                        Text("Nefes")
                    }
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                            Button {
                                currentVideo = "basariMp4"
                                checkIsPlaying()
                                withAnimation {
                                    isHidden.toggle()
                                }
                                playBasari()
                            } label: {
                                if !isHidden {
                                    Text("Basari")
                                }
                            }
                            .padding()
                            .background(Color.yellow)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                            .shadow(radius: 4)
                            .padding()
                            Button {
                                currentVideo = "barisVeBirlikMp4"
                                checkIsPlaying()
                                withAnimation {
                                    isHidden.toggle()
                                }
                                playBarisVeBirlik()
                            } label: {
                                Text("Baris & Birlik")
                            }
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .shadow(radius: 4)
                            .padding()
                            Button {
                                currentVideo = "bereketDengeMp4"
                                checkIsPlaying()
                                withAnimation {
                                    isHidden.toggle()
                                }
                                playBereketDenge()
                            } label: {
                                Text("BereketDenge")
                            }
                            .padding()
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .shadow(radius: 4)
                            .padding()
                //            Spacer()
                //            Button {
                //                checkIsPlaying()
                //                playNefes()
                //            } label: {
                //                Text("528")
                //            }
                //            Spacer()
                            Button {
                                currentVideo = "4CumleMp4"
                                checkIsPlaying()
                                withAnimation {
                                    isHidden.toggle()
                                }
                                play4Cumle()
                            } label: {
                                Text("4 Cumle")
                            }
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .shadow(radius: 4)
                            .padding()
                
                            Button {
                                currentVideo = "mujdeMp4"
                                checkIsPlaying()
                                withAnimation {
                                    isHidden.toggle()
                                }
                                playMujde()
                            } label: {
                                Text("Mujde")
                            }
                            .padding()
                            .background(Color.orange)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                            .shadow(radius: 4)
                            .padding()
            }
        }
        .onTapGesture {
            if isHidden {
                withAnimation {
                    isHidden.toggle()
                }
            }
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
    
    func checkIsPlaying() {
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct VideoPlayerView: UIViewRepresentable {
    @Binding var currentVideo: String
       var avQueuePlayer = AVQueuePlayer()
    
    func makeUIView(context: Context) -> UIView {
        let avPlayer = AVPlayer(url: Bundle.main.url(forResource: currentVideo, withExtension: "mp4")!)
        let player = VideoPlayer(player: avPlayer)
        
        let playerLayer = AVPlayerLayer(player: avQueuePlayer)
        playerLayer.videoGravity = .resizeAspectFill
        
        let view = UIView(frame: UIScreen.main.bounds)
        
        // 90 derece saga yatirir ekrani
//        playerLayer.transform = CATransform3DMakeRotation(.pi / 2, 0, 0, 1)
               
               playerLayer.frame = view.frame
               view.layer.addSublayer(playerLayer)
               
        avQueuePlayer.play()
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        guard let url = Bundle.main.url(forResource: currentVideo, withExtension: "mp4") else { return }
               let playerItem = AVPlayerItem(url: url)
               
        avQueuePlayer.removeAllItems()
        avQueuePlayer.replaceCurrentItem(with: playerItem)
        avQueuePlayer.play()
    }
}
