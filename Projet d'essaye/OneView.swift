//
//  OneView.swift
//  Solidarity
//
//  Created by  SABI Jean-Serge Abiola on 22/03/2021.
//

import SwiftUI
struct OneView: View {
    
    var body: some View {
        ZStack{
            
            Color.orange
            VStack{
                TopViewS(title: "Exemple")
                GeometryReader{_ in

                    OneViewS(tableauDiscussion:tableauDiscussion).clipShape(Rounded())
                }
            }
        }
    }
}

struct OneViewS: View {

    var tableauDiscussion:[tabdiscussion]
    
    var body: some View {
        
        List{}
           
            VStack{
//                List(tableauDiscussion){
//                    x in
                 LazyVStack{
                    Text("")
                        .foregroundColor(Color.gray)
                        .frame(width: 100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0)


                   }
//
//
//
                }
//
//
//
//
//            }
   
      
    }
}

struct OneView_Previews: PreviewProvider {
    static var previews: some View {
        OneView()
            .ignoresSafeArea()
    }
}

