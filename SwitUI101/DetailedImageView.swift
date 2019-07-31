//
//  DetailedImageView.swift
//  SwitUI101
//
//  Created by Muhammad Izzuddin on 30/07/19.
//  Copyright © 2019 Muhammad Izzuddin. All rights reserved.
//

import SwiftUI

struct DetailedImageView: View {
    var product: Product
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .tapAction {
                    withAnimation(.easeIn(duration: 1)) { self.zoomed.toggle() }
                }
                .navigationBarTitle(Text(product.name), displayMode: .inline)
        }
        
    }
}

#if DEBUG
struct DetailedImageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailedImageView(product: testData[2])
        }
    }
}
#endif
