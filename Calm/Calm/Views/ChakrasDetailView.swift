//
//  ChakrasDetailView.swift
//  Calm
//
//  Created by Berat Ridvan Asilturk on 9.02.2024.
//

import SwiftUI

struct SheetView: View {
    @Binding var buttonText: String
    // Sheet dissmis'da kullanilir 
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView{
            VStack {
                Text("Çakra İçeriği")
                    .bold()
                    .foregroundColor(.indigo)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                    .padding(.top, 30)
                
                Text("\(buttonText)")
                    .foregroundColor(.gray)
                    .padding(20)
                
                
                Button("Kapat") {
                    presentationMode.wrappedValue.dismiss()
                }
                .foregroundColor(.black)
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
                .background(.yellow)
                .cornerRadius(12)
                .padding(.bottom, 20)
            }
        }
    }
}


