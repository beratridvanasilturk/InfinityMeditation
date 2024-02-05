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
    @State private var audioPlayIletisim: AVAudioPlayer!
    @State private var audioPlayMujde: AVAudioPlayer!
    
    @State private var isPlayingNefes = true
    @State private var isPlayingBasari = false
    @State private var isPlayingBarisVeBirlik = false
    @State private var isPlayingBereketDenge = false
    @State private var isPlaying4Cumle = false
    @State private var isPlayingIletisim = false
    @State private var isPlayingMujde = false
    @State private var isPlaying = false
    
    @StateObject private var audioPlayerManager = AudioPlayerManager()
    
    var body: some View {
        ZStack {
            VideoPlayerView(currentVideo: $currentVideo)
            //                .frame(width: 300, height: 200)
                .edgesIgnoringSafeArea(.all)
            
            
            Image("background")
                .resizable()
            //                    .frame(width: UIScreen().bounds.width / 3, height: 100, alignment: .center)
                .edgesIgnoringSafeArea(.all)
            //                    .background(Color.red)
            //                    .opacity(0.3)
            VStack {
                VStack{
                    Button {
                        currentVideo = "bereketDengeMp4"
                        checkIsPlaying()
                        withAnimation {
                            isHidden.toggle()
                        }
                        playBereketDenge()
                    }
                label: {
                    if !isHidden {
                        Text("Taç Çakrası")
                    }
                }
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                    
                    VStack {
                        Button {
                            currentVideo = "basariMp4"
                            checkIsPlaying()
                            withAnimation {
                                isHidden.toggle()
                            }
                            playBasari()
                        } label: {
                            if !isHidden {
                                Text("Üçüncü Göz")
                            }
                        }
                        .padding()
                        .background(Color.indigo)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .shadow(radius: 4)
                        .padding()
                        
                        Button {
                            currentVideo = "nefesMp4"
                            checkIsPlaying()
                            playNefes()
                            withAnimation {
                                isHidden.toggle()
                            }
                        } label: {
                            if !isHidden {
                                Text("Boğaz Çakrası")
                            }
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .shadow(radius: 4)
                        .padding()
                    }
                    .offset(y: -10)
                }
                .offset(y: -25)
                
                
                Button {
                    currentVideo = "barisVeBirlikMp4"
                    checkIsPlaying()
                    withAnimation {
                        isHidden.toggle()
                    }
                    playBarisVeBirlik()
                } label: {
                    if !isHidden {
                        Text("Kalp Çakrası")
                    }
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                
                Button {
                    currentVideo = "4CumleMp4"
                    checkIsPlaying()
                    withAnimation {
                        isHidden.toggle()
                    }
                    play4Cumle()
                } label: {
                    if !isHidden {
                        Text("Solar Plexus")
                    }
                }
                .padding()
                .background(Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                
                
                
                
                Button {
                    currentVideo = ""
                    currentVideo = "mujdeMp4"
                    checkIsPlaying()
                    withAnimation {
                        isHidden.toggle()
                    }
                    playMujde()
                } label: {
                    if !isHidden {
                        Text("Sakral Çakra")
                    }
                }
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                Button {
                    currentVideo = "4CumleMp4"
                    checkIsPlaying()
                    withAnimation {
                        isHidden.toggle()
                    }
                    playIletisim()
                } label: {
                    if !isHidden {
                        Text("Kök Çakrası")
                    }
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
            }
        }
        .onTapGesture {
            withAnimation {
                isHidden.toggle()
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
                audioPlayMujde = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayMujde.volume = 0.40
                //                    audioPlayer1.volume = 0.45
                audioPlayMujde.numberOfLoops = -1
                audioPlayMujde.play()
            } catch {
            }
        }
    }
    
    func playIletisim() {
        isPlayingIletisim = true
        if let audioURL = Bundle.main.url(forResource: "iletişim", withExtension: "mp3") {
            do {
                audioPlayIletisim = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayIletisim.volume = 0.40
                //                    audioPlayer1.volume = 0.45
                audioPlayIletisim.numberOfLoops = -1
                audioPlayIletisim.play()
            } catch {
            }
        }
    }
    
    func checkIsPlaying() {
        if isPlayingNefes == true {
            isPlayingNefes = false
            //            audioPlayNefes.pause()
            audioPlayNefes.stop()
        }
        if isPlayingBasari == true {
            isPlayingBasari = false
            //            audioPlayBasari.pause()
            audioPlayBasari.stop()
        }
        if isPlayingBarisVeBirlik == true {
            isPlayingBasari = false
            //            audioPlayBarisVeBirlik.pause()
            audioPlayBarisVeBirlik.stop()
        }
        if isPlayingBereketDenge == true {
            isPlayingBereketDenge = false
            //            audioPlayBereketDenge.pause()
            audioPlayBereketDenge.stop()
        }
        if isPlaying4Cumle == true {
            isPlaying4Cumle = false
            //            audioPlay4Cumle.pause()
            audioPlay4Cumle.stop()
        }
        if isPlayingIletisim == true {
            isPlayingIletisim = false
            //            audioPlayIletisim.pause()
            audioPlayIletisim.stop()
        }
        if isPlayingMujde == true {
            isPlayingMujde = false
            //            audioPlayMujde.pause()
            audioPlayMujde.stop()
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
        avQueuePlayer.pause()
        avQueuePlayer.removeAllItems()
        avQueuePlayer.replaceCurrentItem(with: playerItem)
        avQueuePlayer.play()
    }
}
