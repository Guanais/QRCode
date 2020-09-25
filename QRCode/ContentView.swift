//
//  ContentView.swift
//  QRCode
//
//  Created by Kaio Guanais on 2020-05-13.
//  Copyright © 2020 Kaio Guanais. All rights reserved.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct ContentView: View {
    @State private var url = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("QR Code Generator")
                    .foregroundColor(Color.black)
                    .font(.title)
                    .bold()
                    .fontWeight(.regular)
                    .fontWeight(.ultraLight)
                Image(systemName: "qrcode")
                    .resizable()
                    .foregroundColor(.red)
                    .frame(width: 50, height: 50)
                    .scaledToFit()
            }
            TextField("Insert website", text: self.$url)
                .padding(.vertical,10)
                .padding(.horizontal)
                .background(Color.black.opacity(0.07))
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.top,25)
                .padding(.bottom, 25)
            QRCodeView(url: "http://www.\(url)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
