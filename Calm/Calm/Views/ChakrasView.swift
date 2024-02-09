//
//  ChakrasView.swift
//  Calm
//
//  Created by Berat Ridvan Asilturk on 9.02.2024.
//

import SwiftUI

struct ChakrasView: View {
    
    
    @State private var isSheetPresented = false
    @State private var sheetText = ""
    
    private let tacCakraText = "Taç Çakra, Sanskritçe'de Sahasrara olarak adlandırılan yedinci enerji merkezi ya da çakradır. Bu çakra, insanın ruhsal uyanış, bilgelik ve bütünlük ile bağlantılıdır. Taç çakra, başın tepe noktasında, saç çizgisinin hemen üstünde bulunur. Taç çakrasının ana temaları şunlar olabilir: Bilgelik ve Anlayış: Taç çakra, derin bir içsel bilgelik ve evrensel anlayışla ilişkilidir. Bu çakra, hayatın derin anlamlarını kavramak ve evrensel bağlantıyı hissetmekle bağlantılıdır. Ruh ve Ruhsal Bağlantı: Taç çakra, insanın ruhsal boyutuyla derin bir bağlantı kurma yeteneğiyle ilişkilidir. Bu çakra, bireyin kendini aşma, ruhsal büyüme ve bütünleşme yolunda ilerlemesine yardımcı olabilir. Transandantal Deneyimler: Taç çakra, meditasyon ve derin içsel çalışmalar sırasında deneyimlenen transandantal veya mistik deneyimlerle ilişkilendirilir. Bu çakra, sınırları aşma ve bireyin sadece maddi dünyanın ötesinde bir varlık olduğunu anlama potansiyeli sunar. Bütünlük ve Birlik: Taç çakra, bütünlük hissi ve tüm yaşam formlarıyla birlik hissi ile bağlantılıdır. Bu çakra, ayrılıkları aşma ve evrensel sevgiyle birleşme kapasitesini simgeler. Taç çakrası, diğer altı çakra ile birlikte denge içinde çalışmalıdır. Altı çakra, temel ihtiyaçlar, duygusal denge, kişisel güç ve iletişim gibi farklı yaşam alanlarına odaklanırken, taç çakra daha yüksek bir bilinç seviyesine işaret eder. Bu çakranın dengelenmesi ve açılması, ruhsal büyüme, içsel huzur ve bütünlük konularında destek sağlayabilir. Yoga, meditasyon ve enerji çalışmaları, taç çakrasının denge ve açıklığını artırmak için kullanılan bazı yöntemler arasında yer alabilir."
    
    private let ucuncuGozText = "Üçüncü Göz Çakra, Sanskritçe'de Ajna olarak adlandırılan altıncı enerji merkezi ya da çakradır. Bu çakra, alın bölgesinin ortasında ve kaşların arasında bulunur. Üçüncü Göz Çakra, bireyin içsel anlayışını, içgörüsünü ve psişik yetenekleriyle ilişkilidir. İşte Üçüncü Göz Çakra hakkında kısa bilgiler: İçgörü ve Anlama: Üçüncü Göz Çakra, bireyin içsel anlayışını ve içgörüsünü temsil eder. Bu çakra, yaşamın derin anlamlarını anlama ve bireyin içsel rehberliğini takip etme yeteneği ile bağlantılıdır. Görselleme ve Hayal Gücü: Üçüncü Göz Çakra, görselleme yeteneği ve yaratıcılık ile ilişkilidir. İnsanlar, bu çakra sayesinde hayal gücünü kullanabilir, içsel vizyonlarını geliştirebilir ve yaratıcı düşünce süreçlerini güçlendirebilir. Psişik Yetenekler: Üçüncü Göz Çakra, psişik yeteneklerle (örneğin telepati, telekinezi) ve ruhsal algıyla bağlantılıdır. Bu çakra, bireyin energetik dünyayla bağlantı kurma ve farklı frekansta titreşen enerjileri algılama kapasitesini temsil eder. Denge ve Farkındalık: Üçüncü Göz Çakra, denge ve farkındalık konularında destek sağlar. Bireyin içsel rehberliği, bilinçli düşünce süreçleri ve yaşamın derin anlamlarına dair farkındalık bu çakra ile ilişkilidir. Renk ve Sembolizm: Üçüncü Göz Çakra, mor renk ile ilişkilendirilir. Aynı zamanda lotus çiçeği sembolüyle de temsil edilir. Bu semboller, çakranın özelliklerini ve enerjisini simgeler. Üçüncü Göz Çakra'nın dengelenmesi ve açılması, meditasyon, yoga, enerji çalışmaları ve farkındalık egzersizleri gibi tekniklerle desteklenebilir. Bu çakra, bireyin ruhsal yolculuğunda derinleşmesine ve içsel bilgeliğini keşfetmesine yardımcı olabilir."
    
    private let bogazCakraText = "Boğaz Çakrası, Sanskritçe'de Vishuddha olarak adlandırılan beşinci enerji merkezi ya da çakradır. Bu çakra, boğaz bölgesinde, gırtlak ve boyun arasında yer alır. Boğaz Çakrası, iletişim, ifade, doğru ifade ve yaratıcılık ile ilişkilidir. Ayrıca, içsel doğruluk ve kendi gerçeğini ifade etme kapasitesini temsil eder. İşte Boğaz Çakrası hakkında kısa bilgiler: İletişim: Boğaz Çakrası, bireyin kendini ifade etme ve başkalarıyla iletişim kurma yeteneği ile bağlantılıdır. Bu çakra, açık ve etkili iletişim becerilerini destekler. Doğru İfade: Boğaz Çakrası, içsel gerçeğin doğru bir şekilde ifade edilmesiyle ilişkilidir. Bu çakra, bireyin duygularını, düşüncelerini ve inançlarını açıkça ifade etme yeteneğini temsil eder. Yaratıcılık ve İfade: Boğaz Çakrası, sanat, müzik, yazı gibi yaratıcı ifade biçimleriyle de ilişkilidir. İnsanların içsel yaratıcılıklarını ifade etmelerine ve dışa vurmalarına yardımcı olabilir. Denge ve Sağlık: Boğaz Çakrası, enerji akışının düzenlenmesi ve denge sağlanması açısından önemlidir. Denge sağlandığında, bireyin fiziksel ve duygusal sağlığı olumlu yönde etkilenebilir. Renk ve Sembolizm: Boğaz Çakrası, mavi renk ile ilişkilidir. Aynı zamanda lotus çiçeği sembolüyle temsil edilir. Bu semboller, çakranın enerjilerini ve özelliklerini simgeler. Boğaz Çakrası'nın dengelenmesi ve açılması için meditasyon, özel nefes egzersizleri, yoga, ifade sanatları ve içsel dinleme pratiikleri gibi yöntemler kullanılabilir. Bu çakra, bireyin kendini ifade etme yeteneğini artırarak içsel dengeyi ve bütünlüğü destekler."
    
    private let kalpCakraText = "Kalp Çakrası, Sanskritçe'de Anahata olarak adlandırılan dördüncü enerji merkezi ya da çakradır. Bu çakra, göğüs kafesinin ortasında, kalp bölgesinde yer alır. Kalp Çakrası, sevgi, şefkat, bağlantı, empati ve içsel barış ile ilişkilidir. Aynı zamanda diğer enerji merkezlerini birleştiren bir geçiş noktası olarak kabul edilir. İşte Kalp Çakrası hakkında kısa bilgiler: Sevgi ve Şefkat: Kalp Çakrası, sevgi ve şefkat enerjileriyle bağlantılıdır. Bireyin kendisine, diğer insanlara ve çevresine duyduğu sevgi ve hoşgörüyü temsil eder. Empati ve Bağlantı: Kalp Çakrası, diğer insanlarla empati kurma, bağlantı kurma ve ilişkilerde derinlik oluşturma yeteneğiyle ilişkilidir. İçsel Barış ve Dengeli Duygular: Bu çakra, içsel barış, denge ve dengeli duygular ile bağlantılıdır. Negatif duyguların dönüştürülmesi ve pozitif duyguların güçlenmesi konularında etkilidir. Renk ve Sembolizm: Kalp Çakrası, yeşil renk ile ilişkilidir. Aynı zamanda lotus çiçeği sembolüyle temsil edilir. Bu semboller, çakranın enerjilerini ve özelliklerini simgeler. Bağlantı ve İlişkiler: Kalp Çakrası, diğer enerji merkezleri arasında bir denge noktasıdır ve üç alt çakra ile üç üst çakra arasında bir köprü görevi görür. Bu çakra, fiziksel ve spiritüel dünyalar arasında bir bağlantı sağlar. Kalp Çakrası'nın dengelenmesi ve açılması için meditasyon, yoga, sevgi dolu eylemler, doğa ile zaman geçirme ve duygusal iyileşme çalışmaları gibi birçok farklı teknik kullanılabilir. Bu çakra, sevgi ve bağlantı enerjilerini artırarak bireyin içsel ve dışsal dünyasında harmoni ve denge sağlamaya yardımcı olabilir."
    
    private let solarPlexusCakraText = "Solar Pleksus Çakrası, Sanskritçe'de Manipura olarak adlandırılan üçüncü enerji merkezi ya da çakradır. Bu çakra, karın bölgesinin üst kısmında, göğüs kafesinin altında, mide bölgesinde bulunur. Solar Pleksus Çakrası, kişisel güç, özsaygı, özdisiplin, özkontrol ve özgüven ile ilişkilidir. İşte Solar Pleksus Çakrası hakkında kısa bilgiler: Kişisel Güç: Solar Pleksus Çakrası, bireyin kişisel güç ve enerji merkezi olarak kabul edilir. Kendi hayatını kontrol etme ve yönlendirme yeteneğiyle bağlantılıdır. Özgüven ve Özsaygı: Bu çakra, özgüveni artırmak, kendine güveni geliştirmek ve kendine saygıyı güçlendirmekle ilişkilidir. Özdisiplin ve Özkontrol: Solar Pleksus Çakrası, özdisiplin ve özkontrolü destekler. Bireyin duygusal ve davranışsal dengeyi koruma yeteneğiyle bağlantılıdır. Güçlü Bir İrade: Çakra, güçlü bir irade oluşturmayı ve hedeflere ulaşmak için kararlılık göstermeyi temsil eder. Renk ve Sembolizm: Solar Pleksus Çakrası, sarı renk ile ilişkilidir. Aynı zamanda lotus çiçeği sembolüyle temsil edilir. Sarı renk, çakranın enerjilerini ve özelliklerini simgeler. Duygusal ve Fiziksel Denge: Solar Pleksus Çakrası, duygusal dengeyi korumak ve enerji akışını düzenlemek açısından önemlidir. Aynı zamanda sindirim sistemiyle de bağlantılıdır. Solar Pleksus Çakrası'nın dengelenmesi ve açılması için meditasyon, yoga, nefes teknikleri, özgüveni artıran çalışmalar ve yaşam enerjisiyle bağlantı kurmayı teşvik eden aktiviteler gibi yöntemler kullanılabilir. Bu çakra, bireyin içsel gücünü fark etmesine ve yaşam enerjisini pozitif bir şekilde yönlendirmesine yardımcı olabilir."
    
    private let sakralCakraText = "Sakral Çakra, Sanskritçe'de Svadhisthana olarak adlandırılan ikinci enerji merkezi ya da çakradır. Bu çakra, bel bölgesinin altında, genital bölge ve karın arasında yer alır. Sakral Çakra, duygular, duygu durumu, yaratıcılık, cinsellik ve ilişkilerle ilişkilidir. İşte Sakral Çakra hakkında kısa bilgiler: Duygular ve Duygu Durumu: Sakral Çakra, duygusal denge ve duygu durumunun düzenlenmesiyle bağlantılıdır. Bireyin duygusal ifadesini dengelemeye yardımcı olabilir. Yaratıcılık: Bu çakra, yaratıcılık enerjisiyle ilişkilidir. Sanat, müzik, yazı gibi yaratıcı ifade biçimleri Sakral Çakra'nın etki alanına girer. Cinsellik ve İlişkiler: Sakral Çakra, cinsel enerjiyi temsil eder ve sağlıklı ilişkiler kurma yeteneğiyle bağlantılıdır. Hem cinsel sağlığı hem de duygusal bağlantıyı destekler. Özsaygı ve Kendini Kabul: Bu çakra, özsaygıyı artırma ve kendini kabul etme ile ilgilidir. Bireyin kendisiyle barış içinde olmasına yardımcı olabilir. Renk ve Sembolizm: Sakral Çakra, turuncu renk ile ilişkilidir. Aynı zamanda yedi lotus çiçeği yaprağı sembolüyle temsil edilir. Turuncu renk, çakranın enerjilerini ve özelliklerini simgeler. Denge ve Akış: Sakral Çakra'nın dengelenmesi, enerji akışının düzenlenmesi ve çakranın sağlıklı bir şekilde çalışması için önemlidir. Sakral Çakra'nın dengelenmesi ve açılması için meditasyon, yoga, enerji çalışmaları, dans, sanat terapisi ve duygusal iyileşme pratiikleri gibi birçok farklı yöntem kullanılabilir. Bu çakra, bireyin duygusal ve yaratıcı enerjisini uyumlu bir şekilde dengeleyerek yaşam enerjisinin akışını destekler."
    
    private let kokCakraText = "Kök Çakra, Sanskritçe'de Muladhara olarak adlandırılan birinci enerji merkezi ya da çakradır. Bu çakra, omurganın tabanında, genital bölgenin hemen altında bulunur. Kök Çakra, güvenlik, dayanıklılık, temel ihtiyaçlar ve toplumsal bağlamla ilişkilidir. İşte Kök Çakra hakkında kısa bilgiler: Güven ve Dayanıklılık: Kök Çakra, bireyin kendini güvende hissetmesi, temel ihtiyaçlarının karşılanması ve dayanıklılığını sağlaması ile bağlantılıdır. Temel İhtiyaçlar: Bu çakra, temel fiziksel ihtiyaçları temsil eder; yiyecek, barınma, güvenlik gibi. Bu ihtiyaçların karşılanması, çakranın dengelenmesi için önemlidir. Topraklanma: Kök Çakra, bireyin topraklanması ve fiziksel dünyayla bağlantı kurmasıyla ilgilidir. Denge sağlandığında, bireyin yaşam enerjisi daha stabil hale gelir. Renk ve Sembolizm: Kök Çakra, kırmızı renk ile ilişkilidir. Aynı zamanda dört yapraklı lotus çiçeği sembolüyle temsil edilir. Kırmızı renk, çakranın enerjilerini ve özelliklerini simgeler. Denge ve Güç: Kök Çakra'nın dengelenmesi, enerji akışının düzenlenmesi ve çakranın sağlıklı bir şekilde çalışması için önemlidir. Bu, bireyin güvenliği ve temel ihtiyaçlarına güçlü bir bağlantı kurmasına yardımcı olur. Kök Çakra'nın dengelenmesi ve açılması için meditasyon, yoga, topraklama teknikleri, doğa ile temas ve sağlıklı bir yaşam tarzı gibi birçok farklı yöntem kullanılabilir. Bu çakra, bireyin fiziksel ve duygusal sağlığına katkıda bulunarak temel güven hissini destekler."
    
    // Tutorial denetimi icin kullanilir
    @State private var showWalkthrough = false
    @AppStorage("hasViewedWalkthrough")
    var hasViewedWalkthrough: Bool = false
    
    // Button Hide
    @State private var isHidden = false
    @State private var isChakraInfoVisible = false
    
    var body: some View {
        ZStack {
            Image("background")
                .edgesIgnoringSafeArea(.bottom)
                .opacity(0.2)
            VStack {
                Button {
                    sheetText = tacCakraText
                    isSheetPresented.toggle()
                    withAnimation {
                        isHidden.toggle()
                    }
                }
            label: {
                if !isHidden {
                    Text("Taç Çakrası")
                        .font(.subheadline)
                }
            }
            .sheet(isPresented: $isSheetPresented) {
                // .sheet içinde gösterilecek olan SheetView
                SheetView(buttonText: $sheetText)
            }
            .padding(8)
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(8)
            .shadow(radius: 4)
            .offset(y: -40)
                
                Button {
                    sheetText = ucuncuGozText
                    isSheetPresented.toggle()
                    withAnimation {
                        isHidden.toggle()
                    }
                } label: {
                    if !isHidden {
                        Text("Üçüncü Göz")
                            .font(.subheadline)
                    }
                }
                .sheet(isPresented: $isSheetPresented) {
                    // .sheet içinde gösterilecek olan SheetView
                    SheetView(buttonText: $sheetText)
                }
                .padding(8)
                .background(Color.indigo)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .offset(y: -20)
                
                Button {
                    sheetText = bogazCakraText
                    isSheetPresented.toggle()
                    withAnimation {
                        isHidden.toggle()
                    }
                } label: {
                    if !isHidden {
                        Text("Boğaz Çakrası")
                            .font(.subheadline)
                    }
                }
                .sheet(isPresented: $isSheetPresented) {
                    // .sheet içinde gösterilecek olan SheetView
                    SheetView(buttonText: $sheetText)
                }
                .padding(8)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                .offset(y: 10)
                
                Button {
                    sheetText = kalpCakraText
                    isSheetPresented.toggle()
                    withAnimation {
                        isHidden.toggle()
                    }
                } label: {
                    if !isHidden {
                        Text("Kalp Çakrası")
                            .font(.subheadline)
                        
                    }
                }
                .sheet(isPresented: $isSheetPresented) {
                    // .sheet içinde gösterilecek olan SheetView
                    SheetView(buttonText: $sheetText)
                }
                .padding(8)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                .offset(y: 20)
                
                Button {
                    sheetText = solarPlexusCakraText
                    isSheetPresented.toggle()
                    withAnimation {
                        isHidden.toggle()
                    }
                } label: {
                    if !isHidden {
                        Text("Solar Plexus")
                            .font(.subheadline)
                        
                    }
                }
                .sheet(isPresented: $isSheetPresented) {
                    // .sheet içinde gösterilecek olan SheetView
                    SheetView(buttonText: $sheetText)
                }
                .padding(8)
                .background(Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                .offset(y: 20)
                
                Button {
                    sheetText = sakralCakraText
                    isSheetPresented.toggle()
                    withAnimation {
                        isHidden.toggle()
                    }
                } label: {
                    if !isHidden {
                        Text("Sakral Çakra")
                            .font(.subheadline)
                        
                    }
                }
                .sheet(isPresented: $isSheetPresented) {
                    // .sheet içinde gösterilecek olan SheetView
                    SheetView(buttonText: $sheetText)
                }
                .padding(8)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding()
                .offset(y: 20)
                
                Button {
                    sheetText = kokCakraText
                    isSheetPresented.toggle()
                    withAnimation {
                        isHidden.toggle()
                    }
                } label: {
                    if !isHidden {
                        Text("Kök Çakrası")
                    }
                }
                .sheet(isPresented: $isSheetPresented) {
                    // .sheet içinde gösterilecek olan SheetView
                    SheetView(buttonText: $sheetText)
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
                isChakraInfoVisible = false
                isHidden.toggle()
            }
        }
        .onAppear{
            showWalkthrough = hasViewedWalkthrough ? false : true
        }
        
        .sheet(isPresented: $showWalkthrough) {
            TutorialViewInContents()
        }
    }
}
#Preview {
    ChakrasView()
}
