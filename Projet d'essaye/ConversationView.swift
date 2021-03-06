//
//  ConversationView.swift
//  LEBON
//
//  Created by boucher guillaume on 22/03/2021.
//

import SwiftUI
struct ConversationView: View {
    
    var body: some View {
        ZStack{
            Color.orange
            VStack{
                TopView(title: "Messages")
                GeometryReader{_ in

                    ConversationViewS(tableau: conversation).clipShape(Rounded())
                }
            }
        }
    }
}


struct ConversationViewS: View {
    let tableau: [MessageMod]
    var body: some View {
       // List{}
            ScrollView {
                VStack {
                    ForEach(tableau){ message in
                        if message.isMine {
                            
                            SentMessage(message: message)
                        }
                        else {
                            ReceivedMessage(message: message)
                        }
                        
                    }
                }
            }
        }
    
}
struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
            .ignoresSafeArea()
    }
}

struct SentMessage: View {
    var message: MessageMod
    var body: some View {
        HStack {
            Spacer()
            
            Text(message.contenue)
                
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
                .padding()
            
        }
    }
}

struct ReceivedMessage: View {
    var message: MessageMod
    var body: some View {
        HStack {
            Text(message.contenue)
                
                .padding()
                .background(Color.gray)
                .cornerRadius(20)
                .padding()
            
            Spacer()
        }
    }
}


struct TopViewG : View{
    var title: String
    var body: some View{
        HStack(spacing:15){
            Text(title).fontWeight(.heavy).font(.system(size: 23))
            Spacer()
            Button(action: {
                
            }){
                Image(systemName: "magnifyingglass").resizable().frame(width: 20, height: 20)
                
            }
            Button(action:{
                
            }){
                
            }
            
        }
        .foregroundColor(Color.white)
        .padding()
        
    }
}
