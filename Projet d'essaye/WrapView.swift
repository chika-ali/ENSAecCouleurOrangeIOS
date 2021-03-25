//
//  WrapView.swift
//  Solidarity
//
//  Created by  SABI Jean-Serge Abiola on 22/03/2021.
//

import Foundation
import SwiftUI


struct WrapView <Content: View> : View {
    var content: Content
    var title: String
    
    init(title: String, @ViewBuilder _ content: @escaping  () -> Content) {
            self.content = content()
        self.title = title
        }
    
    var body: some View {
        ZStack{
            Color.orange
            VStack{
                TopView(title: title)
                GeometryReader{_ in
                    
                    content.clipShape(Rounded())
                }
            }
        }
    }
}
