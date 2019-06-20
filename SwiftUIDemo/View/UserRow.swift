//
//  UserRow.swift
//  SwiftUIDemo
//
//  Created by Bishow on 6/18/19.
//  Copyright © 2019 Bishow. All rights reserved.
//

import SwiftUI

struct UserRow : View {
    var user:User
    var body: some View {
        HStack {
        Image("lake").frame(width: 60, height: 60, alignment: .center).clipShape(Circle()).overlay(Circle().stroke(Color.white,lineWidth:2.0)).shadow(radius:3.0)
        VStack(alignment: .leading, spacing: 5) {
            Text(user.name).font(.title)
            HStack {
                Text(user.designation).font(.subheadline).color(.gray)
                Spacer()
                Text(user.address).font(.subheadline).color(.gray)
            }
            }.padding()
        }.padding()
    }
}

#if DEBUG
struct UserRow_Previews : PreviewProvider {
    static var previews: some View {
        UserRow(user: User(id: 1, name: "JHON", address: "USA", designation: "Dentist"))
    }
}
#endif
