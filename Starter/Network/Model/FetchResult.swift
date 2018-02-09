//
//  FetchResult.swift
//  Starter
//
//  Created by DragonCherry on 08/02/2018.
//  Copyright © 2018 DragonCherry. All rights reserved.
//

import RxDataSources

protocol FetchResultType {
    associatedtype T
    var isSuccess: Bool { get }
    var value: T? { get }
    var error: Error? { get }
    func map<O>(_ selector: @escaping (Self.T) -> O) -> FetchResult<O>
}

enum FetchResult<T>: FetchResultType {
    
    case success(result: T)
    case error(error: Error)
    
    var isSuccess: Bool {
        if case FetchResult.success(_) = self {
            return true
        } else {
            return false
        }
    }
    
    var value: T? {
        if case FetchResult.success(let v) = self {
            return v
        } else {
            return nil
        }
    }
    
    var error: Error? {
        if case FetchResult.error(let e) = self {
            return e
        } else {
            return nil
        }
    }
    
    func map<O>(_ selector: @escaping (T) -> O) -> FetchResult<O> {
        switch self {
        case .success(let value):
            return FetchResult<O>.success(result: selector(value))
        case .error(let error):
            return FetchResult<O>.error(error: error)
        }
    }
}

enum SectionFetchResult<T: SectionModelType> {
    
    case success(section: T)
    case error(error: Error)
    
    var isSuccess: Bool {
        if case SectionFetchResult.success(_) = self {
            return true
        } else {
            return false
        }
    }
    
    var section: T? {
        switch self {
        case .success(let section):
            return section
        default:
            return nil
        }
    }
}
