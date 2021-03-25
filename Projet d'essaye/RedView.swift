//
//  RedView.swift
//  Solidarity
//
//  Created by    CHIKA Ali on 15/03/2021.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        TabView{
            Text("eeeeeeee")
            //DemandesView( x: tableauAnnonce)
            .tabItem {
                    Image(systemName: "book.fill")
                    Text("Annonces")
                }
            Text("ttttttt")
                //RedView()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle")
                    Text("Recherche")
                }
           
                Home().tabItem {
                    Image(systemName: "bubble.left")
                    Text("Message")
                }
            ProfilAppView()
                 .tabItem {
                     Image(systemName: "person.circle")
                     Text("Profil")
            
            
            
            
            
//            Text("eeeeeeee")
//            //DemandesView( x: tableauAnnonce)
//            .tabItem {
//                    Image(systemName: "book.fill")
//                    Text("Annonces")
//                }
//            Text("ttttttt")
//                //RedView()
//                .tabItem {
//                    Image(systemName: "magnifyingglass.circle")
//                    Text("Recherche")
//                }
//            Text("ffffffff")
//                //RedView()
//                Home().tabItem {
//                    Image(systemName: "bubble.left")
//                    Text("Message")
//                }
//            ProfilAppView()
//                 .tabItem {
//                     Image(systemName: "person.circle")
//                     Text("Profil")
//
                 }
            
        VStack {
            Text("")
            Color.white
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
struct Home: View{
    var body : some View{
        ZStack{
            Color.orange
            VStack{
                topView()
            }
        }
    }
}





    struct topView : View{
        var body: some View{
            HStack(spacing:15){
                Text("Messages").fontWeight(.heavy).font(.system(size: 23))
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
        GeometryReader{_ in
            
            MainView().clipShape(Rounded())
        }
    }
}
}
struct MainView: View {
    var body : some View{
        List(msgs){i in
            cellView(pic: i.pic, name: i.name, msg: i.msg, time: i.time, msgs: i.msgs)
            }
    }
}

struct Rounded :Shape {
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: .topLeft, cornerRadii: CGSize(width: 55, height: 55))
        return Path(path.cgPath)
    }
}

struct cellView: View {
    var pic : String
    var name: String
    var msg : String
    var time: String
    var msgs: String
    
    var body: some View{
        HStack{
            
            Image(pic).resizable().frame(width: 50, height: 50).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(alignment:.leading,spacing: 5){
                Text(name)
                Text(msg).lineLimit(1)
            }
            Spacer()
            VStack(spacing:15){
                Text(time)
                if msgs != ""{
                    
                    Text(msgs).padding(8).background(Color.orange).foregroundColor(.white).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                else {
                    Spacer()
                }
            }
            
            
        }.padding(10)
    }
}




struct msgType: Identifiable{
    var id: Int
    var msg : String
    var time: String
    var msgs: String
    var name: String
    var pic: String
    
}
var msgs :[msgType] = [

    msgType(id: 0, msg: "bonjour, la commande est-t-elle disponible?", time: "14:33", msgs: "2", name: "Zubergker", pic: "Mark")
    ,msgType(id: 1, msg: "Bonjour, vous avez vraiment une très bonne initiative!", time: "12:12", msgs: "2", name: "Thrive&Up", pic: "TU" )
    ,msgType(id: 2, msg: "Je vous attends pour réceptionner la commande?", time: "17:59", msgs: "", name: "Aliswift", pic: "img2")
    ,msgType(id: 3, msg: "Êtes-vous disponible?", time: "15:35", msgs: "", name: "Jean-Serge", pic: "img2")
    ,msgType(id: 4, msg: "Vous voulez voir la marchandise?", time: "18:45", msgs: "", name: "Association AgoAliment", pic: "img2"),
    msgType(id: 0, msg: "bonjour, la commande est-t-elle disponible?", time: "14:33", msgs: "2", name: "Zubergker", pic: "img2")
    ,msgType(id: 1, msg: "Bonjour, vous avez vraiment une très bonne initiative!", time: "12:12", msgs: "2", name: "GuiMap", pic: "img1")
    ,msgType(id: 2, msg: "Je vous attends pour réceptionner la commande?", time: "17:59", msgs: "", name: "Aliswift", pic: "img2")
    ,msgType(id: 3, msg: "Êtes-vous disponible?", time: "15:35", msgs: "", name: "Jean-Serge", pic: "img2")
    ,msgType(id: 4, msg: "Vous voulez voir la marchandise?", time: "18:45", msgs: "", name: "Mohamed", pic: "img2")

]
