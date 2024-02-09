//
//  ShareView.swift
//  Calm
//
//  Created by Berat Ridvan Asilturk on 9.02.2024.
//

import SwiftUI

struct ShareView: View {
    
    @State private var isShareSheetPresented = false
    let shareText = "https://apps.apple.com/tr/developer/berat-ridvan-asilturk/id1709821684"
    let reviewURL = URL(string: "https://apps.apple.com/tr/developer/berat-ridvan-asilturk/id1709821684")
    
    var body: some View {
        VStack{
            
            
            Text("Sonsuz Meditasyon hakkındaki düşüncelerin bizler için önemli.")
            
            Text("Lutfen bizlere kendimizi geliştirmemiz için geri bildirimde bulunmayi unutma.")
            
            Button(action: {
                if UIApplication.shared.canOpenURL(reviewURL!) {
                    UIApplication.shared.open(reviewURL!)
                }}) {
                Text("Yorum Yap")
            }
            .padding(20)
            
            Text("Ayrıca ∞ Meditasyonu beğendiysen arkadaşlarınla ve çevrenle paylaşabilirsin.")
            
            Button(action: {
                isShareSheetPresented.toggle()
            }, label: {
                Text("Paylaş")
                    .padding(10)
                    .padding(.horizontal, 10)
                    .background(Color("appOrangeColor"))
                    .cornerRadius(11)
                    .font(.headline)
                    .offset(y: -10)
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


