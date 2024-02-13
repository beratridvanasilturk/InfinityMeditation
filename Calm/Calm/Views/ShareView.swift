//
//  ShareView.swift
//  Calm
//
//  Created by Berat Ridvan Asilturk on 9.02.2024.
//

import SwiftUI

struct ShareView: View {
    
    @State private var isShareSheetPresented = false
    let shareText = "https://apps.apple.com/tr/app/meditation/id6477408670?platform=iphone"
    let reviewURL = URL(string: "https://apps.apple.com/tr/app/meditation/id6477408670?platform=iphone")
    
    var body: some View {
        VStack{
            
            
            Text("∞ Meditasyon hakkındaki düşüncelerin bizler için önemli.")
                .font(.headline)
                .multilineTextAlignment(.center)
                .foregroundColor(.indigo)
                .padding(30)
            Text("Lutfen bizlere geri bildirimde bulunmayı unutma.")
                .font(.callout)
                .bold()
                .multilineTextAlignment(.center)
                .foregroundColor(.indigo)
                .padding(30)
            Button(action: {
                if UIApplication.shared.canOpenURL(reviewURL!) {
                    UIApplication.shared.open(reviewURL!)
                }}) {
                    Text("Yorum Yap")
                        .bold()
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .background(.yellow)
                        .cornerRadius(11)
                }
                .padding(30)
            
            Text("Ayrıca ∞ Meditasyonu beğendiysen arkadaşlarınla ve çevrenle paylaşabilirsin.")
                .bold()
                .font(.headline)
                .multilineTextAlignment(.center)
                .font(.callout)
                .foregroundColor(.gray)
            
                .padding()
            Button(action: {
                isShareSheetPresented.toggle()
            }, label: {
                Text("∞ Meditasyon'u Paylaş")
                    .bold()
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.indigo)
                    .cornerRadius(11)
            })
            .sheet(isPresented: $isShareSheetPresented, content: {
                ShareSheet(activityItems: [shareText])
            })
            .padding()
        }
    }
    
    struct ShareSheet: View {
        
        let activityItems: [Any]
        
        var body: some View {
            // Paylaşma işlemi için UIActivityViewController kullanır
            ActivityView(activityItems: activityItems)
        }
    }
    
    struct ActivityView: UIViewControllerRepresentable {
        
        let activityItems: [Any]
        
        func makeUIViewController(context: Context) -> UIActivityViewController {
            let activityViewController = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
            return activityViewController
        }
        
        func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
            // Burada herhangi bir güncelleme yapılmasına gerek yoktur.
        }
    }
}
#Preview {
    ShareView()
}


