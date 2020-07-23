//
//  GenreInterface.swift
//  
//
//  Created by Breno Aquino on 11/07/20.
//

import Foundation

class GenreInterface {
    
    private var network: Network<GenreAPIs> = Network<GenreAPIs>()
    private var config: MovieDBConfig = MovieDBConfig()
    
    init() {}
    
    func genres(callback: @escaping (Result<[Genre], NSError>) -> Void) {
        network.request(GenreAPIs.genres(config: config)) { result in
            switch result {
            case .success(let response):
                do {
                    let genres = try response.map([Genre].self, atKeyPath: "genres", using: JSONDecoder(), failsOnEmptyData: false)
                    callback(.success(genres))
                } catch let error {
                    callback(.failure(error as NSError))
                }
                
            case .failure(let error):
                callback(.failure(error as NSError))
            }
        }
    }
}
