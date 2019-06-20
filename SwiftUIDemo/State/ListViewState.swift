//
//  ListViewState.swift
//  SwiftUIDemo
//
//  Created by Bishow on 6/17/19.
//  Copyright © 2019 Bishow. All rights reserved.
//

import Foundation
import ReSwift
struct User {
    var id:Int
    var name:String
    var address:String
    var designation:String
}


struct MainState: StateType {
    var userList:[User] = []
}
