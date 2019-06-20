//
//  UserList.swift
//  SwiftUIDemo
//
//  Created by Bishow on 6/18/19.
//  Copyright © 2019 Bishow. All rights reserved.
//

import SwiftUI

struct UserList : View {
    var userList:[User] = []
    var body: some View {
        NavigationView {
            List(userList.identified(by: \.id)){ user in
                UserRow(user: user)
            }.navigationBarTitle(Text("User List"))
        }
        
    }
}

#if DEBUG
struct UserList_Previews : PreviewProvider {
    static var previews: some View {
        UserList()
    }
}
#endif
