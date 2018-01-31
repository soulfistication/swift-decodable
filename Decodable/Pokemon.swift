//
//  Pokemon.swift
//  Decodable
//
//  Created by Ivan Almada on 31/01/2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

public struct Pokemon: Codable {
    public let id: Int
    public let name: String
    public let weight: Int
    public let height: Int
    public let base_experience: Int
}
