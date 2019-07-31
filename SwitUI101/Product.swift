//
//  Product.swift
//  SwitUI101
//
//  Created by Muhammad Izzuddin on 30/07/19.
//  Copyright © 2019 Muhammad Izzuddin. All rights reserved.
//

import SwiftUI

struct Product: Identifiable {
    var id = UUID()
    var price: Int
    var name: String
    var seller: String
    var image: String
    var bestSeller: Bool
    
    init(name: String, image: String, seller: String, price: Int, bestSeller: Bool) {
        self.price = price
        self.name = name
        self.seller = seller
        self.image = image
        self.bestSeller = bestSeller
    }
}

#if DEBUG
let testData = [
    Product(
        name: "HIASAN DINDING - DEKORASI RUMAH - LUKISAN KALIGRAFI - MEI H",
        image: "image1",
        seller: "DANISA ART",
        price: 72000,
        bestSeller: true
    ),
    Product(
        name: "Dekorasi Rumah - Hiasan Dinding Kaligrafi - Lukisan Tangan",
        image: "image2",
        seller: "MANYUN ART",
        price: 78000,
        bestSeller: false
    ),
    Product(
        name: "Lukisan Kaligrafi - Bunga Abstrak Orange",
        image: "image3",
        seller: "MANTAP JIWA ART",
        price: 120000,
        bestSeller: false
    ),
    Product(
        name: "Lukisan Bunga Merah Abstrak Kaligrafi  RZK- M ",
        image: "image4",
        seller: "DANISA ART",
        price: 96000,
        bestSeller: true
    ),
    Product(
        name: "Lukisan Bunga Biru Abstrak  RZK- B ",
        image: "image5",
        seller: "DANISA ART",
        price: 96000,
        bestSeller: true
    ),
    Product(
        name: "poster motivasi-Sholat harus full time-hiasan dinding pigura frame ",
        image: "image6",
        seller: "SPIRIT poster",
        price: 45000,
        bestSeller: false
    ),
    Product(
        name: "Lukisan Abstrak Modern - 5GTA2",
        image: "image7",
        seller: "DANISA ART",
        price: 109200,
        bestSeller: true
    ),
    Product(
        name: "poster motivasi-Bersyukurlah-hiasan dinding pigura frame",
        image: "image8",
        seller: "SPIRIT poster",
        price: 45000,
        bestSeller: false
    ),
    Product(
        name: "poster motivasi-Kerja Keras Cerdas Tuntas-pajangan bingkai pigura hiasan dinding dekorasi rumah",
        image: "image9",
        seller: "SPIRIT poster",
        price: 45000,
        bestSeller: false
    ),
    Product(
        name: "KALIGRAFI AYAT KURSI Series",
        image: "image10",
        seller: "Jati Mulia",
        price: 850000,
        bestSeller: false
    )
]
#endif
