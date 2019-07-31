//
//  ContentView.swift
//  SwitUI101
//
//  Created by Muhammad Izzuddin on 29/07/19.
//  Copyright © 2019 Muhammad Izzuddin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var products: [Product] = []
    
    var body: some View {
        NavigationView {
            List(products) { product in
                NavigationLink(destination: DetailedImageView(product: product)) {
                    ProductItemView(product: product)
                }
            }
            .navigationBarTitle("Product List")
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(products: testData)
    }
}
#endif

struct ProductItemView: View {
    var product: Product
    @State private var showingAlert: Bool = false
    
    var body: some View {
        HStack {
            Image(product.image)
                .resizable()
                .padding(8)
                .frame(width: 120, height: 120, alignment: .center)
                .aspectRatio(contentMode: .fit)
                
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                    Text("\(product.price)").font(.subheadline).bold()
                }
                    
                HStack {
                    if product.bestSeller {
                        Image("best")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    Text(product.seller)
                    Spacer()
                    Text("Beli")
                        .foregroundColor(.white)
                        .frame(width: 64, height: 32)
                        .background(Color.red)
                        .cornerRadius(8)
                        .gesture(TapGesture().onEnded() {
                            self.showingAlert = true
                        })
                        
                        .alert(isPresented: $showingAlert) {
                            Alert(
                                title: Text("Konfirmasi Belanja"),
                                message: Text("Barang \(product.name) telah berhasil masuk ke keranjang kamu"),
                                dismissButton: .default(Text("Oke"))
                            )
                        }
                }
            }
            .padding(8)
        }
    }
}
