//
//  HttpService.swift
//  myRace.core
//
//  Created by Yanbo Dang on 12/7/2023.
//

import Foundation

protocol HttpService {
    func request<T: Decodable>(request: Request, completion: @escaping (Result<T, EnError>) -> Void)
}