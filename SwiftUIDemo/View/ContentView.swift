//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Bishow on 6/17/19.
//  Copyright © 2019 Bishow. All rights reserved.
//

import SwiftUI
struct ContentView : View {
    
    init() {
        mainStore.dispatch(MainStateAction.showUserList)
    }
    
    var body: some View {
        UserList(userList: mainStore.state.userList)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
