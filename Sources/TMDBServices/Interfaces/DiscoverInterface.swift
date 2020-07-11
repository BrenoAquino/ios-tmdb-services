//
//  DiscoverInterface.swift
//  
//
//  Created by Breno Aquino on 11/07/20.
//

import Foundation

class DiscoverInterface {
    
    private var network: Network<DiscoverAPI> = Network<DiscoverAPI>()
    private var config: MovieDBConfig = MovieDBConfig()
    
    init() {}
    
    func movies(genre: Int, callback: @escaping (Result<[Movie], NSError>) -> Void) {
        network.request(DiscoverAPI.discoverMovie(config: config, genre: genre)) { result in
            switch result {
            case .success(let response):
                do {
                    let movies = try response.map([Movie].self, atKeyPath: "results", using: JSONDecoder(), failsOnEmptyData: false)
                    callback(.success(movies))
                } catch let error {
                    callback(.failure(error as NSError))
                }
                
            case .failure(let error):
                callback(.failure(error as NSError))
            }
        }
    }
}
