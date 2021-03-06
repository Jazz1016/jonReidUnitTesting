//
//  MockURLSession.swift
//  NetworkRequestTests
//
//  Created by James Lea on 5/2/22.
//

import Foundation
@testable import NetworkRequest

class MockURLSession: URLSessionProtocol {
    var dataTaskCallCount = 0
    var dataTaskArgsRequest: [URLRequest] = []
    
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        dataTaskCallCount += 1
        dataTaskArgsRequest.append(request)
        return DummyURLSessionDataTask()
    }
}

private class DummyURLSessionDataTask: URLSessionDataTask {
    override func resume() {}
}
