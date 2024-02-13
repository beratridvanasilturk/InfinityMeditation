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
    
    let tacCakraText = [NSLocalizedString("Taç Çakra, Sanskritçe'de Sahasrara olarak adlandırılan yedinci enerji merkezi ya da çakradır. Bu çakra, insanın ruhsal uyanış, bilgelik ve bütünlük ile bağlantılıdır. Taç çakra, başın tepe noktasında, saç çizgisinin hemen üstünde bulunur. Taç çakrasının ana temaları şunlar olabilir: Bilgelik ve Anlayış: Taç çakra, derin bir içsel bilgelik ve evrensel anlayışla ilişkilidir. Bu çakra, hayatın derin anlamlarını kavramak ve evrensel bağlantıyı hissetmekle bağlantılıdır. Ruh ve Ruhsal Bağlantı: Taç çakra, insanın ruhsal boyutuyla derin bir bağlantı kurma yeteneğiyle ilişkilidir. Bu çakra, bireyin kendini aşma, ruhsal büyüme ve bütünleşme yolunda ilerlemesine yardımcı olabilir. Transandantal Deneyimler: Taç çakra, meditasyon ve derin içsel çalışmalar sırasında deneyimlenen transandantal veya mistik deneyimlerle ilişkilendirilir. Bu çakra, sınırları aşma ve bireyin sadece maddi dünyanın ötesinde bir varlık olduğunu anlama potansiyeli sunar. Bütünlük ve Birlik: Taç çakra, bütünlük hissi ve tüm yaşam formlarıyla birlik hissi ile bağlantılıdır. Bu çakra, ayrılıkları aşma ve evrensel sevgiyle birleşme kapasitesini simgeler. Taç çakrası, diğer altı çakra ile birlikte denge içinde çalışmalıdır. Altı çakra, temel ihtiyaçlar, duygusal denge, kişisel güç ve iletişim gibi farklı yaşam alanlarına odaklanırken, taç çakra daha yüksek bir bilinç seviyesine işaret eder. Bu çakranın dengelenmesi ve açılması, ruhsal büyüme, içsel huzur ve bütünlük konularında destek sağlayabilir. Yoga, meditasyon ve enerji çalışmaları, taç çakrasının denge ve açıklığını artırmak için kullanılan bazı yöntemler arasında yer alabilir.", comment: "The Crown Chakra is the seventh energy center or chakra, called Sahasrara in Sanskrit.This chakra is linked to human spiritual awakening, wisdom and wholeness.The crown chakra is located at the crown of the head, just above the hairline. The main themes of the crown chakra can be: Wisdom and Understanding: The crown chakra is associated with a deep inner wisdom and universal understanding. This chakra is linked to grasping the deeper meanings of life and feeling the universal connection. Spirit and Spiritual Connection: The crown chakra is associated with the ability to establish a deep connection with one's spiritual dimension. This chakra can help the individual to move along the path of self-transcendence, spiritual growth and integration. Transcendental Experiences: The crown chakra is associated with transcendental or mystical experiences experienced during meditation and deep inner work. This chakra offers the potential to transcend boundaries and realize that the individual is a being beyond the material world alone. Wholeness and Oneness: The crown chakra is linked to a sense of wholeness and unity with all life forms. This chakra symbolizes the capacity to transcend separation and unite with universal love. The crown chakra should work in balance with the other six chakras. While the six chakras focus on different areas of life such as basic needs, emotional balance, personal power and communication, the crown chakra points to a higher level of consciousness. Balancing and opening this chakra can support spiritual growth, inner peace and wholeness.Yoga, meditation and energy work can be some of the methods used to increase the balance and openness of the crown chakra.")]
    
    let ucuncuGozText = [NSLocalizedString(
        "Üçüncü Göz Çakra, Sanskritçe'de Ajna olarak adlandırılan altıncı enerji merkezi ya da çakradır. Bu çakra, alın bölgesinin ortasında ve kaşların arasında bulunur. Üçüncü Göz Çakra, bireyin içsel anlayışını, içgörüsünü ve psişik yetenekleriyle ilişkilidir. İşte Üçüncü Göz Çakra hakkında kısa bilgiler: İçgörü ve Anlama: Üçüncü Göz Çakra, bireyin içsel anlayışını ve içgörüsünü temsil eder. Bu çakra, yaşamın derin anlamlarını anlama ve bireyin içsel rehberliğini takip etme yeteneği ile bağlantılıdır. Görselleme ve Hayal Gücü: Üçüncü Göz Çakra, görselleme yeteneği ve yaratıcılık ile ilişkilidir. İnsanlar, bu çakra sayesinde hayal gücünü kullanabilir, içsel vizyonlarını geliştirebilir ve yaratıcı düşünce süreçlerini güçlendirebilir. Psişik Yetenekler: Üçüncü Göz Çakra, psişik yeteneklerle (örneğin telepati, telekinezi) ve ruhsal algıyla bağlantılıdır. Bu çakra, bireyin energetik dünyayla bağlantı kurma ve farklı frekansta titreşen enerjileri algılama kapasitesini temsil eder. Denge ve Farkındalık: Üçüncü Göz Çakra, denge ve farkındalık konularında destek sağlar. Bireyin içsel rehberliği, bilinçli düşünce süreçleri ve yaşamın derin anlamlarına dair farkındalık bu çakra ile ilişkilidir. Renk ve Sembolizm: Üçüncü Göz Çakra, mor renk ile ilişkilendirilir. Aynı zamanda lotus çiçeği sembolüyle de temsil edilir. Bu semboller, çakranın özelliklerini ve enerjisini simgeler. Üçüncü Göz Çakra'nın dengelenmesi ve açılması, meditasyon, yoga, enerji çalışmaları ve farkındalık egzersizleri gibi tekniklerle desteklenebilir. Bu çakra, bireyin ruhsal yolculuğunda derinleşmesine ve içsel bilgeliğini keşfetmesine yardımcı olabilir.", comment: "The Third Eye Chakra is the sixth energy center or chakra, called Ajna in Sanskrit. This chakra is located in the center of the forehead area and between the eyebrows.The Third Eye Chakra is associated with an individual's inner understanding, insight and psychic abilities. Here is some brief information about the Third Eye Chakra: Insight and Understanding: The Third Eye Chakra represents the inner understanding and insight of the individual. This chakra is linked to the ability to understand the deeper meanings of life and to follow one's inner guidance. Visualization and Imagination: The Third Eye Chakra is associated with visualization ability and creativity. Through this chakra, people can use their imagination, develop their inner vision and strengthen their creative thought processes. Psychic Abilities: The Third Eye Chakra is linked to psychic abilities (e.g. telepathy, telekinesis) and spiritual perception. This chakra represents the individual's capacity to connect with the energetic world and perceive energies vibrating at different frequencies. Balance and Awareness: The Third Eye Chakra provides support in matters of balance and awareness. The individual's inner guidance, conscious thought processes and awareness of the deeper meanings of life are associated with this chakra. Color and Symbolism: The Third Eye Chakra is associated with the color purple. It is also represented by the lotus flower symbol. These symbols symbolize the characteristics and energy of the chakra. Balancing and opening the Third Eye Chakra can be supported by techniques such as meditation, yoga, energy work and mindfulness exercises. This chakra can help the individual to deepen their spiritual journey and discover their inner wisdom.")]
    
    
    
    let bogazCakraText = [NSLocalizedString("Boğaz Çakrası, Sanskritçe'de Vishuddha olarak adlandırılan beşinci enerji merkezi ya da çakradır. Bu çakra, boğaz bölgesinde, gırtlak ve boyun arasında yer alır. Boğaz Çakrası, iletişim, ifade, doğru ifade ve yaratıcılık ile ilişkilidir. Ayrıca, içsel doğruluk ve kendi gerçeğini ifade etme kapasitesini temsil eder. İşte Boğaz Çakrası hakkında kısa bilgiler: İletişim: Boğaz Çakrası, bireyin kendini ifade etme ve başkalarıyla iletişim kurma yeteneği ile bağlantılıdır. Bu çakra, açık ve etkili iletişim becerilerini destekler. Doğru İfade: Boğaz Çakrası, içsel gerçeğin doğru bir şekilde ifade edilmesiyle ilişkilidir. Bu çakra, bireyin duygularını, düşüncelerini ve inançlarını açıkça ifade etme yeteneğini temsil eder. Yaratıcılık ve İfade: Boğaz Çakrası, sanat, müzik, yazı gibi yaratıcı ifade biçimleriyle de ilişkilidir. İnsanların içsel yaratıcılıklarını ifade etmelerine ve dışa vurmalarına yardımcı olabilir. Denge ve Sağlık: Boğaz Çakrası, enerji akışının düzenlenmesi ve denge sağlanması açısından önemlidir. Denge sağlandığında, bireyin fiziksel ve duygusal sağlığı olumlu yönde etkilenebilir. Renk ve Sembolizm: Boğaz Çakrası, mavi renk ile ilişkilidir. Aynı zamanda lotus çiçeği sembolüyle temsil edilir. Bu semboller, çakranın enerjilerini ve özelliklerini simgeler. Boğaz Çakrası'nın dengelenmesi ve açılması için meditasyon, özel nefes egzersizleri, yoga, ifade sanatları ve içsel dinleme pratiikleri gibi yöntemler kullanılabilir. Bu çakra, bireyin kendini ifade etme yeteneğini artırarak içsel dengeyi ve bütünlüğü destekler.", comment: "The Throat Chakra is the fifth energy center or chakra, called Vishuddha in Sanskrit. This chakra is located in the throat area, between the larynx and the neck. The Throat Chakra is associated with communication, expression, truthful expression and creativity. It also represents inner truthfulness and the capacity to express your own truth. Here is some brief information about the Throat Chakra: Communication: The Throat Chakra is linked to an individual's ability to express themselves and communicate with others. This chakra supports clear and effective communication skills. True Expression: The Throat Chakra is associated with the accurate expression of inner truth. This chakra represents the individual's ability to clearly express their feelings, thoughts and beliefs. Creativity and Expression: The Throat Chakra is also associated with creative forms of expression such as art, music, writing. It can help people express and externalize their inner creativity. Balance and Health: The Throat Chakra is important for regulating the flow of energy and maintaining balance. When balance is achieved, an individual's physical and emotional health can be positively affected. Color and Symbolism: The Throat Chakra is associated with the color blue. It is also represented by the lotus flower symbol. These symbols symbolize the energies and properties of the chakra. Methods such as meditation, special breathing exercises, yoga, expressive arts and inner listening practices can be used to balance and open the Throat Chakra. This chakra supports inner balance and integrity by increasing the individual's ability to express themselves.")]
    
    
    
    let kalpCakraText =  [NSLocalizedString( "Kalp Çakrası, Sanskritçe'de Anahata olarak adlandırılan dördüncü enerji merkezi ya da çakradır. Bu çakra, göğüs kafesinin ortasında, kalp bölgesinde yer alır. Kalp Çakrası, sevgi, şefkat, bağlantı, empati ve içsel barış ile ilişkilidir. Aynı zamanda diğer enerji merkezlerini birleştiren bir geçiş noktası olarak kabul edilir. İşte Kalp Çakrası hakkında kısa bilgiler: Sevgi ve Şefkat: Kalp Çakrası, sevgi ve şefkat enerjileriyle bağlantılıdır. Bireyin kendisine, diğer insanlara ve çevresine duyduğu sevgi ve hoşgörüyü temsil eder. Empati ve Bağlantı: Kalp Çakrası, diğer insanlarla empati kurma, bağlantı kurma ve ilişkilerde derinlik oluşturma yeteneğiyle ilişkilidir. İçsel Barış ve Dengeli Duygular: Bu çakra, içsel barış, denge ve dengeli duygular ile bağlantılıdır. Negatif duyguların dönüştürülmesi ve pozitif duyguların güçlenmesi konularında etkilidir. Renk ve Sembolizm: Kalp Çakrası, yeşil renk ile ilişkilidir. Aynı zamanda lotus çiçeği sembolüyle temsil edilir. Bu semboller, çakranın enerjilerini ve özelliklerini simgeler. Bağlantı ve İlişkiler: Kalp Çakrası, diğer enerji merkezleri arasında bir denge noktasıdır ve üç alt çakra ile üç üst çakra arasında bir köprü görevi görür. Bu çakra, fiziksel ve spiritüel dünyalar arasında bir bağlantı sağlar. Kalp Çakrası'nın dengelenmesi ve açılması için meditasyon, yoga, sevgi dolu eylemler, doğa ile zaman geçirme ve duygusal iyileşme çalışmaları gibi birçok farklı teknik kullanılabilir. Bu çakra, sevgi ve bağlantı enerjilerini artırarak bireyin içsel ve dışsal dünyasında harmoni ve denge sağlamaya yardımcı olabilir.", comment: "The Heart Chakra is the fourth energy center or chakra, called Anahata in Sanskrit. This chakra is located in the center of the rib cage, in the heart area. The Heart Chakra is associated with love, compassion, connection, empathy and inner peace. It is also considered a transition point that connects other energy centers. Here is some brief information about the Heart Chakra: Love and Compassion: The Heart Chakra is connected to the energies of love and compassion. It represents love and tolerance for oneself, other people and the environment. Empathy and Connection: The Heart Chakra is associated with the ability to empathize, connect and create depth in relationships with other people. Inner Peace and Balanced Emotions: This chakra is linked to inner peace, balance and balanced emotions. It is effective in transforming negative emotions and strengthening positive emotions. Color and Symbolism: The Heart Chakra is associated with the color green. It is also represented by the lotus flower symbol. These symbols symbolize the energies and properties of the chakra. Connection and Relationships: The Heart Chakra is a balance point between other energy centers and acts as a bridge between the three lower chakras and the three upper chakras. This chakra provides a connection between the physical and spiritual worlds. Many different techniques can be used to balance and open the Heart Chakra, such as meditation, yoga, loving actions, spending time with nature and emotional healing work. By increasing the energies of love and connection, this chakra can help bring harmony and balance in the inner and outer world of the individual.")]
    
    
    
    let solarPlexusCakraText =  [NSLocalizedString(
        "Solar Pleksus Çakrası, Sanskritçe'de Manipura olarak adlandırılan üçüncü enerji merkezi ya da çakradır. Bu çakra, karın bölgesinin üst kısmında, göğüs kafesinin altında, mide bölgesinde bulunur. Solar Pleksus Çakrası, kişisel güç, özsaygı, özdisiplin, özkontrol ve özgüven ile ilişkilidir. İşte Solar Pleksus Çakrası hakkında kısa bilgiler: Kişisel Güç: Solar Pleksus Çakrası, bireyin kişisel güç ve enerji merkezi olarak kabul edilir. Kendi hayatını kontrol etme ve yönlendirme yeteneğiyle bağlantılıdır. Özgüven ve Özsaygı: Bu çakra, özgüveni artırmak, kendine güveni geliştirmek ve kendine saygıyı güçlendirmekle ilişkilidir. Özdisiplin ve Özkontrol: Solar Pleksus Çakrası, özdisiplin ve özkontrolü destekler. Bireyin duygusal ve davranışsal dengeyi koruma yeteneğiyle bağlantılıdır. Güçlü Bir İrade: Çakra, güçlü bir irade oluşturmayı ve hedeflere ulaşmak için kararlılık göstermeyi temsil eder. Renk ve Sembolizm: Solar Pleksus Çakrası, sarı renk ile ilişkilidir. Aynı zamanda lotus çiçeği sembolüyle temsil edilir. Sarı renk, çakranın enerjilerini ve özelliklerini simgeler. Duygusal ve Fiziksel Denge: Solar Pleksus Çakrası, duygusal dengeyi korumak ve enerji akışını düzenlemek açısından önemlidir. Aynı zamanda sindirim sistemiyle de bağlantılıdır. Solar Pleksus Çakrası'nın dengelenmesi ve açılması için meditasyon, yoga, nefes teknikleri, özgüveni artıran çalışmalar ve yaşam enerjisiyle bağlantı kurmayı teşvik eden aktiviteler gibi yöntemler kullanılabilir. Bu çakra, bireyin içsel gücünü fark etmesine ve yaşam enerjisini pozitif bir şekilde yönlendirmesine yardımcı olabilir.", comment: "The Solar Plexus Chakra is the third energy center or chakra, called Manipura in Sanskrit. This chakra is located in the upper abdomen, under the rib cage, in the stomach area. The Solar Plexus Chakra is associated with personal power, self-esteem, self-discipline, self-control and self-confidence. Here is some brief information about the Solar Plexus Chakra: Personal Power: The Solar Plexus Chakra is considered the personal power and energy center of the individual. It is linked to the ability to control and direct one's own life. Self-Confidence and Self-Esteem: This chakra is associated with increasing self-esteem, developing self-confidence and strengthening self-respect. Self-Discipline and Self-Control: The Solar Plexus Chakra supports self-discipline and self-control. It is linked to the individual's ability to maintain emotional and behavioral balance. A Strong Will: The chakra represents building a strong will and determination to achieve goals. Color and Symbolism: The Solar Plexus Chakra is associated with the color yellow. It is also represented by the lotus flower symbol. The color yellow symbolizes the energies and properties of the chakra. Emotional and Physical Balance: The Solar Plexus Chakra is important for maintaining emotional balance and regulating the flow of energy. It is also connected to the digestive system. Methods such as meditation, yoga, breathing techniques, exercises that increase self-confidence and activities that encourage connection with life energy can be used to balance and open the Solar Plexus Chakra. This chakra can help the individual realize their inner strength and direct their life energy in a positive way.")]
    
    
    let sakralCakraText =  [NSLocalizedString( "Sakral Çakra, Sanskritçe'de Svadhisthana olarak adlandırılan ikinci enerji merkezi ya da çakradır. Bu çakra, bel bölgesinin altında, genital bölge ve karın arasında yer alır. Sakral Çakra, duygular, duygu durumu, yaratıcılık, cinsellik ve ilişkilerle ilişkilidir. İşte Sakral Çakra hakkında kısa bilgiler: Duygular ve Duygu Durumu: Sakral Çakra, duygusal denge ve duygu durumunun düzenlenmesiyle bağlantılıdır. Bireyin duygusal ifadesini dengelemeye yardımcı olabilir. Yaratıcılık: Bu çakra, yaratıcılık enerjisiyle ilişkilidir. Sanat, müzik, yazı gibi yaratıcı ifade biçimleri Sakral Çakra'nın etki alanına girer. Cinsellik ve İlişkiler: Sakral Çakra, cinsel enerjiyi temsil eder ve sağlıklı ilişkiler kurma yeteneğiyle bağlantılıdır. Hem cinsel sağlığı hem de duygusal bağlantıyı destekler. Özsaygı ve Kendini Kabul: Bu çakra, özsaygıyı artırma ve kendini kabul etme ile ilgilidir. Bireyin kendisiyle barış içinde olmasına yardımcı olabilir. Renk ve Sembolizm: Sakral Çakra, turuncu renk ile ilişkilidir. Aynı zamanda yedi lotus çiçeği yaprağı sembolüyle temsil edilir. Turuncu renk, çakranın enerjilerini ve özelliklerini simgeler. Denge ve Akış: Sakral Çakra'nın dengelenmesi, enerji akışının düzenlenmesi ve çakranın sağlıklı bir şekilde çalışması için önemlidir. Sakral Çakra'nın dengelenmesi ve açılması için meditasyon, yoga, enerji çalışmaları, dans, sanat terapisi ve duygusal iyileşme pratiikleri gibi birçok farklı yöntem kullanılabilir. Bu çakra, bireyin duygusal ve yaratıcı enerjisini uyumlu bir şekilde dengeleyerek yaşam enerjisinin akışını destekler.", comment: "The Sacral Chakra is the second energy center or chakra, called Svadhisthana in Sanskrit. This chakra is located below the lumbar region, between the genital area and the abdomen. The Sacral Chakra is associated with emotions, mood, creativity, sexuality and relationships. Here is some brief information about the Sacral Chakra: Emotions and Mood: The Sacral Chakra is linked to emotional balance and regulation of mood. It can help balance an individual's emotional expression. Creativity: This chakra is associated with the energy of creativity. Creative forms of expression such as art, music and writing fall under the influence of the Sacral Chakra. Sexuality and Relationships: The Sacral Chakra represents sexual energy and is linked to the ability to form healthy relationships. It supports both sexual health and emotional connection. Self-Esteem and Self-Acceptance: This chakra is related to increasing self-esteem and self-acceptance. It can help the individual to be at peace with themselves. Color and Symbolism: The Sacral Chakra is associated with the color orange. It is also represented by the symbol of seven lotus flower petals. The color orange symbolizes the energies and properties of the chakra. Balance and Flow: Balancing the Sacral Chakra is important for the regulation of energy flow and the healthy functioning of the chakra. Many different methods can be used to balance and open the Sacral Chakra, such as meditation, yoga, energy work, dance, art therapy and emotional healing practices. This chakra supports the flow of life energy by harmoniously balancing the emotional and creative energy of the individual.")]
    
    
    
    let kokCakraText =  [NSLocalizedString("Kök Çakra, Sanskritçe'de Muladhara olarak adlandırılan birinci enerji merkezi ya da çakradır. Bu çakra, omurganın tabanında, genital bölgenin hemen altında bulunur. Kök Çakra, güvenlik, dayanıklılık, temel ihtiyaçlar ve toplumsal bağlamla ilişkilidir. İşte Kök Çakra hakkında kısa bilgiler: Güven ve Dayanıklılık: Kök Çakra, bireyin kendini güvende hissetmesi, temel ihtiyaçlarının karşılanması ve dayanıklılığını sağlaması ile bağlantılıdır. Temel İhtiyaçlar: Bu çakra, temel fiziksel ihtiyaçları temsil eder; yiyecek, barınma, güvenlik gibi. Bu ihtiyaçların karşılanması, çakranın dengelenmesi için önemlidir. Topraklanma: Kök Çakra, bireyin topraklanması ve fiziksel dünyayla bağlantı kurmasıyla ilgilidir. Denge sağlandığında, bireyin yaşam enerjisi daha stabil hale gelir. Renk ve Sembolizm: Kök Çakra, kırmızı renk ile ilişkilidir. Aynı zamanda dört yapraklı lotus çiçeği sembolüyle temsil edilir. Kırmızı renk, çakranın enerjilerini ve özelliklerini simgeler. Denge ve Güç: Kök Çakra'nın dengelenmesi, enerji akışının düzenlenmesi ve çakranın sağlıklı bir şekilde çalışması için önemlidir. Bu, bireyin güvenliği ve temel ihtiyaçlarına güçlü bir bağlantı kurmasına yardımcı olur. Kök Çakra'nın dengelenmesi ve açılması için meditasyon, yoga, topraklama teknikleri, doğa ile temas ve sağlıklı bir yaşam tarzı gibi birçok farklı yöntem kullanılabilir. Bu çakra, bireyin fiziksel ve duygusal sağlığına katkıda bulunarak temel güven hissini destekler.", comment: "The Root Chakra is the first energy center or chakra, called Muladhara in Sanskrit. This chakra is located at the base of the spine, just below the genital area. The Root Chakra is associated with security, resilience, basic needs and social context. Here is some brief information about the Root Chakra: Trust and Resilience: The Root Chakra is linked to feeling safe, having one's basic needs met and ensuring resilience. Basic Needs: This chakra represents basic physical needs; food, shelter, security. Meeting these needs is important for balancing the chakra. Grounding: The Root Chakra is about grounding the individual and connecting with the physical world. When balance is achieved, the individual's life energy becomes more stable. Color and Symbolism: The Root Chakra is associated with the color red. It is also represented by the symbol of the lotus flower with four petals. The color red symbolizes the energies and properties of the chakra. Balance and Power: Balancing the Root Chakra is important for the regulation of energy flow and the healthy functioning of the chakra. This helps the individual to establish a strong connection to safety and basic needs. Many different methods can be used to balance and open the Root Chakra, such as meditation, yoga, grounding techniques, contact with nature and a healthy lifestyle. This chakra contributes to the physical and emotional health of the individual, supporting a sense of basic trust.")]
    
    
    
    // Tutorial denetimi icin kullanilir
    @State private var showWalkthrough = false
    @AppStorage("hasViewedWalkthrough")
    var hasViewedWalkthrough: Bool = false
    
    // Button Hide
    @State private var isHidden = false
    
    var body: some View {
        ZStack {
            Image("background")
                .edgesIgnoringSafeArea(.bottom)
                .opacity(0.2)
            VStack {
                VStack {
                    Text("Çakralar Hakkında")
                        .bold()
                        .font(.largeTitle)
                        .padding()
                        .offset(y: -70)
                }
                Button {
                    sheetText = tacCakraText.first!
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
                    sheetText = ucuncuGozText.first!
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
                    sheetText = bogazCakraText.first!
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
                    sheetText = kalpCakraText.first!
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
                    sheetText = solarPlexusCakraText.first!
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
                    sheetText = sakralCakraText.first!
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
                    sheetText = kokCakraText.first!
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
            .offset(y: -40)
        }
        .onTapGesture {
            withAnimation {
                isHidden.toggle()
            }
        }
        .onAppear{
            withAnimation {
                isHidden = true
            }
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
