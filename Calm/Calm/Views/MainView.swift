//
//  ContentView.swift
//  Calm
//
//  Created by Berat Rıdvan Asiltürk on 28.11.2023.
//

import SwiftUI
import AVFoundation
import AVKit

struct MainView: View {
    
    // Tutorial denetimi icin kullanilir
    @State private var showWalkthrough = false
    @AppStorage("hasViewedWalkthrough")
    var hasViewedWalkthrough: Bool = false
    
    // Button Hide
    @State private var isHidden = false
    @State var currentVideo = "nefesMp4"
    
    @State private var audioPlayer1: AVAudioPlayer!
    @State private var audioPlayer2: AVAudioPlayer!
    @State private var audioPlayNefes: AVAudioPlayer!
    @State private var audioPlayBasari: AVAudioPlayer!
    @State private var audioPlayKalp: AVAudioPlayer!
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
    @State private var isInfoVisible = false
    
    @StateObject private var audioPlayerManager = AudioPlayerManager()
    
    var body: some View {
        ZStack {
            Image("background")
                .edgesIgnoringSafeArea(.bottom)
                .opacity(0.2)
            VStack {
                VStack {
                    
                    
                    Spacer()
                    Button(action: {
                        withAnimation {
                            self.isInfoVisible.toggle()
                            isHidden = true
                        }
                    }) {
                        HStack {
                            Image("info")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40, alignment: .center)
                                .padding()
                                .foregroundColor(.gray)
                                .opacity(0.7)
                        }
                        .alignmentGuide(HorizontalAlignment.trailing) { d in
                            d[HorizontalAlignment.trailing]
                        }
                        .alignmentGuide(VerticalAlignment.top) { d in
                            d[VerticalAlignment.top]
                        }
                        .padding()
                    }
                }
                .offset(x: 160)
                
                if isInfoVisible {
                    InfoView()
                        .transition(.move(edge: .leading))
                }
            }
            
            VStack {
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
                        .font(.subheadline)
                    
                }
            }
            .padding(8)
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(8)
            .shadow(radius: 4)
            .offset(y: -40)
                
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
                            .font(.subheadline)
                        
                    }
                }
                .padding(8)
                .background(Color.indigo)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .offset(y: -20)
                
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
                            .font(.subheadline)
                        
                    }
                }
                .padding(8)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                .offset(y: 10)
                
                
                Button {
                    checkIsPlaying()
                    withAnimation {
                        isHidden.toggle()
                    }
                    playKalp()
                } label: {
                    if !isHidden {
                        Text("Kalp Çakrası")
                            .font(.subheadline)
                        
                    }
                }
                .padding(8)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                .offset(y: 20)
                
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
                            .font(.subheadline)
                        
                    }
                }
                .padding(8)
                .background(Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                .offset(y: 20)
                
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
                            .font(.subheadline)
                        
                    }
                }
                .padding(8)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                .offset(y: 20)
                
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
                .padding(8)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                .offset(y: 20)
            }
        }
        .onTapGesture {
            withAnimation {
                isInfoVisible = false
                isHidden.toggle()
            }
        }
        .onAppear{
            withAnimation {
                isInfoVisible = false
                isHidden = true
            }
            showWalkthrough = hasViewedWalkthrough ? false : true
        }
        .onLoad{
            playNefes()
        }
        
        .sheet(isPresented: $showWalkthrough) {
            TutorialViewInContents()
        }
    }
    
    func playNefes() {
        isPlayingNefes = true
        if let audioURL = Bundle.main.url(forResource: "nefes", withExtension: "mp3") {
            do {
                audioPlayNefes = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayNefes.volume = 0.15
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
                audioPlayBasari.volume = 0.15
                //                    audioPlayer1.volume = 0.45
                audioPlayBasari.numberOfLoops = -1
                audioPlayBasari.play()
            } catch {
            }
        }
    }
    
    func playKalp() {
        isPlayingBarisVeBirlik = true
        if let audioURL = Bundle.main.url(forResource: "kalp", withExtension: "mp3") {
            do {
                audioPlayKalp = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayKalp.volume = 0.15
                //                    audioPlayer1.volume = 0.45
                audioPlayKalp.numberOfLoops = -1
                audioPlayKalp.play()
            } catch {
            }
        }
    }
    
    func playBereketDenge() {
        isPlayingBereketDenge = true
        if let audioURL = Bundle.main.url(forResource: "Bereket&Denge", withExtension: "mp3") {
            do {
                audioPlayBereketDenge = try AVAudioPlayer(contentsOf: audioURL)
                audioPlayBereketDenge.volume = 0.15
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
                audioPlay4Cumle.volume = 0.15
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
                audioPlayMujde.volume = 0.15
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
                audioPlayIletisim.volume = 0.15
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
            audioPlayKalp.stop()
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
        MainView()
    }
}

struct InfoView: View {
    var body: some View {
        VStack {
            Text("Sonsuz Meditasyon telefonun ekranı kapalıyken ve internet bağlantısı gerektirmeden geceleri uyku meditasyonu olarak kullanmanız amacıyla basit ve sade olarak tasarlanmıştır. Uygulamayı sonlandırana kadar meditasyon sonsuz döngüde devam eder. Ekranı kapatarak meditasyon yapmayı veya farklı uygulamalarda gezinmeyi deneyebilirsiniz.")
                .padding()
                .background(.cyan)
                .foregroundColor(.white)
                .font(.subheadline)
                .cornerRadius(30)
        }
    }
}

extension View {
    
    func onLoad(perform action: (() -> Void)? = nil) -> some View {
        modifier(ViewDidLoadModifier(perform: action))
    }
}

struct ViewDidLoadModifier: ViewModifier {
    
    @State private var didLoad = false
    private let action: (() -> Void)?
    
    init(perform action: (() -> Void)? = nil) {
        self.action = action
    }
    
    func body(content: Content) -> some View {
        content.onAppear {
            if didLoad == false {
                didLoad = true
                action?()
            }
        }
    }
}
