//
//  User.swift
//  Table_CollectionView
//
//  Created by JOEYCO-0072PK on 29/12/2021.
//

import Foundation

struct Welcome : Codable{
    let users : [User]
}



struct User : Codable{
    let name , city : String
}
