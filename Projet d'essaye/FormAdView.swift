//
//  FormAdView.swift
//  Solidarity
//
//  Created by VIKKI on 21/03/2021.
//

import SwiftUI
struct FormAdView: View {
    
    var body: some View {
        ZStack{
            Color.orange
            VStack{
                TopView(title: "Creer une annonce")
                GeometryReader{_ in

                    FormAdViewP().clipShape(Rounded())
                }
            }
        }
    }
}

struct FormAdViewP: View {
    @State var categoryIndex = 0
    var categorySelection = ["Don", "Demande"]
    @State var title = ""
    @State var description = ""
    @State var submitAdStatus: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Type d'annonce")) {
                    Picker(selection: $categoryIndex, label: Text("Choisir la catégorie")) {
                        ForEach(0 ..< categorySelection.count) {
                            Text(self.categorySelection[$0])
                        }
                    }
                }
                Section(header: Text("Titre de l'annonce")) {
                    TextField("Saisir un titre", text: $title)
                }
                Section(header: Text("Description de l'annonce")) {
                    TextField("Saisir une description", text: $description)
                }
                
                
                VStack {
                    
                    Button(action: {
                        self.submitAdStatus = true
                    }, label: {
                        Text(submitAdStatus ? "Annonce publiée" : "Publier l'annonce")
                            .frame(width: 345 , height: 20, alignment: .center)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(.systemBlue))
                            .cornerRadius(10)
                    })
                    .disabled(submitAdStatus)
                }
                .listRowInsets (EdgeInsets())
                
            }
            .navigationTitle("Créer")
            .foregroundColor(Color.black)
        }
    }
}

struct FormAdView_Previews: PreviewProvider {
    static var previews: some View {
        FormAdView()
            .ignoresSafeArea()
    }
}
