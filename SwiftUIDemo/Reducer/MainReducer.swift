//
//  MainReducer.swift
//  SwiftUIDemo
//
//  Created by Bishow on 6/17/19.
//  Copyright © 2019 Bishow. All rights reserved.
//

import Foundation
import ReSwift
func mainReducer(action: Action, state: MainState?) -> MainState {
    var state = state ?? MainState()
    
    guard let action = action as? MainStateAction else {
        return state
    }
    
    switch action {
    case .showUserList:
        state.userList = generate()
    case .addUser:
        //state.userList.append(generate())
        print("add user")
        
    case .deleteUser(let index):
       state.userList.remove(at: index)
    }
    return state
}


func generate() -> [User] {
    var dataAry:[User] = []
    for i in 0..<20 {
       let obj = User(id:i, name: "Jhon", address: "USA", designation: "iOS Developer")
       dataAry.append(obj)
    }
    return dataAry
}
