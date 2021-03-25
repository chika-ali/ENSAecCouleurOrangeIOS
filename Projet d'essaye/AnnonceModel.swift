//
//  AnnonceModel.swift
//  fon
//
//  Created by    CHIKA Ali on 09/03/2021.
//

import Foundation
struct AnnonceModel: Identifiable {
    var id = UUID()
    let type:Bool
    let dateDennonce:String
    //let dateReelle: Date
    let personneQuiFaitAnnonce:ProfileModel
    let photo:String
    let localisation:String
    let nombreLike:Int
    let nombrePartage:Int
    let disponiblilite:Bool
    let categorie:String
    let description:String
    let sujet: String
    
//    let formatter = DateFormatter()
//    formatter;.dateFormat = "yyyy/MM/dd HH:mm"
//    let someDateTime = formatter.date(from: "2016/10/08 22:31");
}

let firstAnnonce = AnnonceModel( type: false, dateDennonce:"11/12/1986", personneQuiFaitAnnonce: aliProfile,photo:"don1" ,localisation: "LYON", nombreLike: 50, nombrePartage: 20, disponiblilite: false , categorie: "animal", description: "50 kilo de viande à récupérer", sujet: "Viandes à donner ")

let secondeAnnonce = AnnonceModel( type: true, dateDennonce: "23/02/2032", personneQuiFaitAnnonce: walidProfile, photo: "don2", localisation: "Marseille", nombreLike: 23, nombrePartage: 12, disponiblilite: false, categorie: "végital", description: "2 kg de viande", sujet: "viandes à récuperer ")

let therdAnnonce = AnnonceModel(type: true, dateDennonce: "11/12/2011",  personneQuiFaitAnnonce: déborrahProfile, photo: "don3", localisation: "Villurban", nombreLike: 3, nombrePartage: 45, disponiblilite: false, categorie: "animale", description: "34 de kilo de carotte", sujet: "Carotte fresh")
let forthAnnonce: AnnonceModel=AnnonceModel(type: false, dateDennonce: "12/08/1976", personneQuiFaitAnnonce: aliProfile, photo: "don4", localisation: "Roan", nombreLike: 14, nombrePartage: 45, disponiblilite: true, categorie: "animal", description: "Lorem ipsum dolor sit amet, conse", sujet: "Pomme de terre")
let firstAnnonce1 = AnnonceModel( type: false, dateDennonce:"11/12/1986", personneQuiFaitAnnonce: jeansergeProfile,photo:"don5" ,localisation: "LYON", nombreLike: 23, nombrePartage: 12, disponiblilite: true , categorie: "animal", description: "50 kilo de viande à récupérer", sujet: "des oeufs")
let secondeAnnonce2 = AnnonceModel( type: true, dateDennonce: "23/02/2032", personneQuiFaitAnnonce: aliProfile, photo: "don6", localisation: "Marseille", nombreLike: 23, nombrePartage: 12, disponiblilite: false, categorie: "végital", description: "2 kg de viande", sujet: "légumes et fruits")

//creation de tableau
let tableauAnnonce:[AnnonceModel]=[firstAnnonce,
                                   secondeAnnonce,
                                   therdAnnonce,
                                   forthAnnonce,
                                   firstAnnonce1,
                                   secondeAnnonce2
]



//let maDate = Date()//
//
//let laDate = Date()//DateComponents(year: 2020, month: 09, day: 30, hour: 3, minute: 34 ).date!
    

//let dateFormater: DateFormatter = {
//    let dateFormater = DateFormatter()
//    dateFormater.dateFormat = "YYYY/MM/dd"
//    return dateFormater
//}()
