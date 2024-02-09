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
                Text("Sheet İçeriği")
                    .font(.headline)
                    .padding()
                
                Text("\(buttonText)")
                    .foregroundColor(.white)
                    .padding(30)
                
                
                Button("Kapat") {
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
            }
        }
    }
}
