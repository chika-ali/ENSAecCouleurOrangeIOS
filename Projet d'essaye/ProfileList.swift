//
//  ProfileListRow.swift
//  Tableau
//
//  Created by Mohamed Hamidi on 10/03/2021.
//

import SwiftUI

struct ProfilAppView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Text("Profile")
                    .font(.system(size: 25)) .bold()
            }
            .padding()
            Divider()
            
            HStack{
                Image("moah")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(15)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                VStack (alignment: .leading) {
                    Text("M.Hamidi")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                    Text("Dons: 11   Demande: 12")
                }
                Spacer()
            }
                        Divider()
            VStack(alignment: .leading) {
                Text("Modifier Votre profil")
                    .padding(.bottom)
                Text("Partager le profil")
            }
            .padding()
            Spacer()
        }
    }
}

struct ProfilAppView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilAppView()
    }
}
