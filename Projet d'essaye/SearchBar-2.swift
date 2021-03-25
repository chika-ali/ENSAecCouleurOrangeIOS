//
//  SearchBar.swift
//  Solidarity
//
//  Created by VIKKI on 15/03/2021.
//

import SwiftUI



struct SearchBar: View {
    var body: some View {
        ZStack{
            Color.orange
            VStack{
                TopViewS(title: "Search")
                GeometryReader{_ in

                    SearchBarS().clipShape(Rounded())
                }
            }
        }
    }
}


struct SearchBarS: View {
    @State private  var text: String = ""
    @State private var isEditing = false
        
    var body: some View {
        Spacer()
        List{}
       
        HStack {
          
            TextField("Saisir un mot clé", text: $text)
                .padding(30)
                .padding(.horizontal, 2)
                
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        // if user is on input field
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
                // when the user taps the search field
                .onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                }) {
                    Text("Annuler")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}

