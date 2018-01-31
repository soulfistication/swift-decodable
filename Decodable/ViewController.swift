//
//  ViewController.swift
//  Decodable
//
//  Created by Ivan Almada on 31/01/2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let client = NetworkClient()
        client.request(pokemon: 10) { (data, error) in
            if let data = data {
                let decoder = JSONDecoder()
                let pokemon = try! decoder.decode(Pokemon.self, from: data)
                print(pokemon.name)
            } else {
                print(error!.localizedDescription)
            }
        }
    }
}
