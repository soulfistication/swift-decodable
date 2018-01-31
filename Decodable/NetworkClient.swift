//
//  NetworkClient.swift
//  Decodable
//
//  Created by Ivan Almada on 31/01/2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import Foundation

struct NetworkClient {

    func request(pokemon: Int, completion: @escaping (Data?, Error?) -> Void) {

        var request = URLRequest(url: URL(string: "\(Constants.APIURLs.baseURL.rawValue)/api/v2/\(Constants.APIURLs.pokemonEndPoint.rawValue)/\(pokemon)")!)

        request.httpMethod = "GET"

        let session = URLSession(configuration: .default)

        let datatask = session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(nil, error)
            } else {
                completion(data!, nil)
            }
        }

        datatask.resume()
    }

}
