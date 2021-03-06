//
//  MovieAPIs.swift
//  
//
//  Created by Breno Aquino on 11/07/20.
//

import Foundation
import Moya

enum MovieAPIs {
    case upcoming(config: MovieDBConfig)
    case detail(id: Int, config: MovieDBConfig)
    case keywords(id: Int, config: MovieDBConfig)
    case recommendations(id: Int, config: MovieDBConfig)
}

extension MovieAPIs: TargetType {
    
    var baseURL: URL {
        switch self {
        case .upcoming(let config),
             .detail(_, let config),
             .keywords(_, let config),
             .recommendations(_, let config):
            return try! config.baseURL.asURL()
        }
    }
    
    var path: String {
        switch self {
        case .upcoming(let config):
            return config.path("/movie/upcoming")
        case .detail(let id, let config):
            return config.path("/movie/\(id)")
        case .keywords(let id, let config):
            return config.path("/movie/\(id)/keywords")
        case .recommendations(let id, let config):
            return config.path("/movie/\(id)/recommendations")
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .upcoming, .detail, .keywords, .recommendations:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .upcoming(let config),
             .detail(_, let config),
             .keywords(_, let config),
             .recommendations(_, let config):
            let params: [String: Any] = ["language": "pt-br", "api_key": config.apiKey]
            return .requestParameters(parameters: params, encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    var validationType: ValidationType {
        return .successCodes
    }
    
    var sampleData: Data {
        return Data()
    }
}
