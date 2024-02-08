//
//  TutarialView.swift
//  TenMinutes
//
//  Created by Berat Rıdvan Asiltürk on 7.10.2023.
//

import SwiftUI

struct TutorialViewInContents: View {
    
    // User Def'e AppStorage yontemi ile kayit etme islemini gerceklestirir
    @AppStorage("hasViewedWalkthrough") var hasViewedWalkthrough: Bool = false
    @State private var currentPage = 0
    // Tab View'i dismiss etmek icin hazir olan dismiss methodunu kullanir
    @Environment(\.dismiss) var dismiss
    
    let pageHeadings = [NSLocalizedString("∞ meditasyon'a Hoşgeldin!", comment: "∞ meditation"),
                        NSLocalizedString("UYKU BOYUNCA MEDİTASYON YAPIN", comment:"MEDIATE DURING SLEEP"),
                        NSLocalizedString("İNTERNET BAĞLANTISI GEREKMEZ", comment: "NO INTERNET CONNECTION REQUIRED")]
    
    let pageSubHeadings = [NSLocalizedString("∞ Meditasyon'da 7 farklı seçenek içerisinden seçmiş olduğunuz çakra meditasyonu ile sonsuz döngüde meditasyon çalışması yapın.", comment: "Meditate in an infinite loop with the content you have chosen from 7 different chakra meditations."),
                           NSLocalizedString("Sabah uyanana kadar sonsuz meditasyon ile kaliteli bir uyku deneyimi yaşayın. Üstelik alarm ve telefon uygulamaları gibi temel fonksiyonları engellemeyen ∞ meditasyon, %60 oranında kısılmış ses düzeyi ile telefonun sesini kısmanıza gerek kalmadan uyku boyunca meditasyon deneyimi sağlar.", comment: "Experience quality sleep with endless meditation until you wake up in the morning. And it doesn't interfere with essential functions like alarms and phone apps. ∞ meditation provides a meditation experience throughout sleep without the need to turn down the phone volume with 60% volume reduction."),
                           NSLocalizedString("Gece yatmadan önce wifi özelliğini kapatan kullanıcılar düşünülerek tasarlanan ∞ meditasyon, internet bağlantısı olmadan siz uygulamayı sonlandırana kadar internetsiz meditasyon deneyimi sunar.", comment: "Designed with those who turn off wifi before going to bed at night in mind, ∞ meditation offers a forever internet-free meditation experience without an internet connection.")]
    
    let pageImages = [ "meditation1", "meditation2", "meditation3" ]
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .systemIndigo
        UIPageControl.appearance().pageIndicatorTintColor = .lightGray
    }
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(pageHeadings.indices, id: \.self) { index in
                    TutorialPageInContents(image: pageImages[index], heading: pageHeadings[index], subHeading: pageSubHeadings[index])
                        .tag(index)
                } }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .automatic))
            .animation(.linear(duration: 0.7), value: currentPage)
            
            VStack(spacing: 20) {
                Button(action: {
                    if currentPage < pageHeadings.count - 1 {
                        currentPage += 1
                    } else {
                        // User Def'e tutorial gosterilip gosterilmedigini denetlemek icin deger kaydetmede kullanilir
                        hasViewedWalkthrough = true
                        dismiss()
                    } }) {
                        Text(currentPage == pageHeadings.count - 1 ? "∞ Meditasyon'u Başlat" : "İleri")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal, 30)
                            .background(.indigo)
                            .cornerRadius(11)
                    }
                if currentPage < pageHeadings.count - 1 {
                    Button(action: {
                        // User Def'e tutorial gosterilip gosterilmedigini denetlemek icin deger kaydetmede kullanilir
                        hasViewedWalkthrough = true
                        dismiss()
                    }) {
                        Text("Atla")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    } }
            }
            .padding(.bottom)
        }
        .background(Color("appOrangeColor"))
    }
}

struct TutorialPageInContents: View {
    let image: String
    let heading: String
    let subHeading: String
    var body: some View {
        
        VStack(spacing: 100) {
            Image(image)
                .resizable()
                .scaledToFit()
                .aspectRatio(.infinity, contentMode: .fill)
                .offset(y: 60)
            VStack(spacing: 30) {
                Text(heading)
                    .bold()
                    .multilineTextAlignment(.center)
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .opacity(0.7)
                
                Text(subHeading)
                    .bold()
                    .font(.body)
                    .lineLimit(10)
                    .foregroundColor(.white)
//                    .opacity(0.9)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, 10)
            Spacer()
        }
    }
}

struct TutarialView_Previews_Contents: PreviewProvider {
    static var previews: some View {
        TutorialViewInContents()
    }
}
