//
//  APIClient.swift
//  SoManyGames
//
//  Created by Luke Charman on 01/04/2017.
//  Copyright © 2017 Luke Charman. All rights reserved.
//

import Foundation

typealias JSONDictionary = [String: AnyObject]
typealias SearchCompletion = ([Game]) -> ()

protocol APIClient {
    func search(for term: String, page: Int, completion: SearchCompletion?)
    func similarGames(to games: [Game], completion: SearchCompletion?)
}
