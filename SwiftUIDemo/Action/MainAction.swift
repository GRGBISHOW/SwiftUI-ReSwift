//
//  MainAction.swift
//  SwiftUIDemo
//
//  Created by Bishow on 6/17/19.
//  Copyright © 2019 Bishow. All rights reserved.
//

import Foundation
import ReSwift

enum MainStateAction: Action {
    case showUserList
    case addUser
    case deleteUser(Int)
}
