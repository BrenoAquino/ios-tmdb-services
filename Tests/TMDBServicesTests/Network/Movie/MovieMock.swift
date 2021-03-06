//
//  MovieMock.swift
//  
//
//  Created by Breno Aquino on 28/10/20.
//

import Foundation
import Moya
import TMDBServices

enum MovieMock {
    // Upcoming
    static let upcomingSuccess = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("upcoming-success")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let upcomingGenericError = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("upcoming-failure")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(400, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let upcomingMapError = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("upcoming-map-error")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let upcomingEmpty = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("upcoming-empty")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    // Detail
    static let detailSuccess = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("detail-success")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let detailGenericError = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("detail-failure")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(400, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let detailMapError = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("detail-map-error")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    // Keywords
    static let keywordsSuccess = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("keywords-success")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let keywordsGenericError = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("keywords-failure")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(400, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let keywordsMapError = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("keywords-map-error")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let keywordsEmpty = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("keywords-empty")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    // Recommendations
    static let recommendationsSuccess = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("recommendations-success")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let recommendationsGenericError = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("recommendations-failure")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(400, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let recommendationsMapError = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("recommendations-map-error")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
    
    static let recommendationsEmpty = { (target: Moya.TargetType) -> Endpoint in
        let data = Mock.shared.file("recommendations-empty")
        return Endpoint(
            url: target.baseURL.appendingPathComponent(target.path).absoluteString,
            sampleResponseClosure: { .networkResponse(200, data) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers
        )
    }
}
