//
//  MessageMod.swift
//  LEBON
//
//  Created by boucher guillaume on 22/03/2021.
//

import Foundation

struct MessageMod : Identifiable {
    var id = UUID()
    
    
    let contenue: String
    let date: Date
    let isMine: Bool
    
    
}

let conversation: [MessageMod] = [
    MessageMod(contenue: "Salut", date: Date(), isMine: true),
    MessageMod(contenue: "Salut", date: Date(), isMine: false),
    MessageMod(contenue: "Commen ça va", date: Date(), isMine: true),
    MessageMod(contenue: "Oui et toi", date: Date(), isMine: false),
    MessageMod(contenue: "poiu", date: Date(), isMine: true),
    MessageMod(contenue: "oui c'et encore dispo", date: Date(), isMine: false),
    MessageMod(contenue: "quand je peut réc", date: Date(), isMine: true),
    MessageMod(contenue: "à 10 H", date: Date(), isMine: false)
]
