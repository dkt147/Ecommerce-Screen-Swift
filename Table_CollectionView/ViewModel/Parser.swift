//
//  Parser.swift
//  Table_CollectionView
//
//  Created by JOEYCO-0072PK on 29/12/2021.
//

import Foundation


struct Parser {
    
    func parse(){
       // let api = URL(string: "https://mocki.io/v1/d4867d8b-b5d5-4a48-a4ab-79131b5809b8")
        
        let url = URL(string: "https://mocki.io/v1/d4867d8b-b5d5-4a48-a4ab-79131b5809b8")
            
           URLSession.shared.dataTask(with: url!) { data, response, error in
              if let data = data {
                  do {
                     let res = try JSONDecoder().decode([Welcome].self, from: data)
                     print(res)
                  } catch let error {
                      print(error.localizedDescription)
                  }
               }
           }.resume()
        
        
        
        
    }
    
    func fun(){
        print("OK")
    }
    
    
    
}
