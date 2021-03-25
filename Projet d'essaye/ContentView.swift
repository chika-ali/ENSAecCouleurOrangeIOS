//
//  ContentView.swift
//  Projet d'essaye
//
//  Created by    CHIKA Ali on 17/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            ListeDesAnnoncesDisponible()
                
                
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Annonces")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
                        .accentColor(.orange)
                }
            
            SearchBar()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle")
                    Text("Recherche")
                        .accentColor(.orange)
                }
            FormAdView()
                .tabItem{
                    
                    Image(systemName: "plus.circle.fill")
                        .padding(/*@START_MENU_TOKEN@*/52.0/*@END_MENU_TOKEN@*/)
                    Text("Ajouter annonce")
                    Spacer()
                }
            MesView(messages: messages)
                .tabItem {
                    Image(systemName: "bubble.left")
                    Text("Message")
                }
                
                .tabItem {
                    Image(systemName: "bubble.left")
                    Text("Message")
                }
            ProfilView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profil")
        }
        
        
    }.accentColor(.orange)//.ignoresSafeArea()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .ignoresSafeArea()
    }
}
