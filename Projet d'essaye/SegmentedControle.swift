//
//  SegmentedControle.swift
//  Projet d'essaye
//
//  Created by    CHIKA Ali on 20/03/2021.
//

import SwiftUI

struct SegmentedControle: View {
   
    @State private var favoriteColor = 0

        var body: some View {
            VStack {
                Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                    Text("Red").tag(0)
                    Text("Green").tag(1)
                    Text("Blue").tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())

                Text("Value: \(favoriteColor)")
            }
        }
    }


struct SegmentedControle_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControle()
    }
}
