//
//  PokemonData.swift
//  Pokescann
//
//  Created by Nat Mac on 6/19/18.
//  Copyright © 2018 DaniApps. All rights reserved.
//

import Foundation

struct Pokemon {
    let name: String
    let image: String
    let id: String
    let type: String
    let height: Double
    let weight: Double
    let baseExperience: Int
    
    enum SerializationError: Error {
        case missing(String)
        case invalid(String, Any)
    }
    
    init(json:[String:Any]) throws {
        guard let name = json["name"] as? String
            else {
                throw SerializationError.missing("Name is missing")
        }
        guard let id = json["id"] as? String
            else {
                throw SerializationError.missing("Id is missing")
                
        }
        guard let height = json["height"] as? Double
            else {
                throw SerializationError.missing("Height is missing")
                
        }
        guard let weight = json["weight"] as? Double
            else {
                throw SerializationError.missing("Weight is missing")
                
        }
        guard let baseExperience = json["base_experience"] as? Int
            else {
                throw SerializationError.missing("Base experience is missing")
                
        }
        guard let image = json["forms"] as? String
            else {
                throw SerializationError.missing("Image is missing")
                
        }
        guard let type = json["type"] as? String
            else {
                throw SerializationError.missing("Base experience is missing")
                
        }

        self.name = name
        self.baseExperience = baseExperience
        self.id = id
        self.height = height
        self.weight = weight
        self.image = image
        self.type = type
        
    }
    static let basePath = "http://pokeapi.co/api/v2/"
    
        
      
}//End of Pokemon












