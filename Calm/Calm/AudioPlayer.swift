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
    private var audioPlayer2: AVAudioPlayer!
    
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
        
        do {
            audioPlayer2 = try AVAudioPlayer(contentsOf: url)
            audioPlayer2?.numberOfLoops = -1
            audioPlayer2?.play()
        } catch {
            print("Error playing audio: \(error.localizedDescription)")
        }
        
        
        }

    func pause() {
        audioPlayer?.pause()
        
            audioPlayer2?.pause()
    }

    func stop() {
        audioPlayer?.stop()
        audioPlayer = nil
        
            audioPlayer2?.stop()
            audioPlayer2 = nil
    }
}
