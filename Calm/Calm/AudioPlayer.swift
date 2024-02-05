//
//  AudioPlayer.swift
//  Calm
//
//  Created by Berat Rıdvan Asiltürk on 28.11.2023.
//

import SwiftUI
import AVFoundation

// MasalView icerisindeki player icin kullanildi
class AudioPlayerManager: ObservableObject {
    
    private var audioPlayer: AVAudioPlayer!
    
     init() {
         do {
             try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [.mixWithOthers, .allowAirPlay])
             try AVAudioSession.sharedInstance().setActive(true)
         } catch {
             print("Failed to configure AVAudioSession: \(error.localizedDescription)")
         }
     }
    
    func play(url: URL) {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.numberOfLoops = -1
                audioPlayer?.play()
            } catch {
                print("Error playing audio: \(error.localizedDescription)")
            }
        }

    func pause() {
        audioPlayer?.pause()
    }

    func stop() {
        audioPlayer?.stop()
        audioPlayer = nil
    }
}
