//
//  Lucifer_Helper.swift
//  FetchAPI_Data_Assignment1
//
//  Created by Hannan Max on 2023-01-18.
//

import Foundation

enum LuciferApiErrors: Error {
    case unableToConvertUrl
    case Invalid_URL
}

class Lucifer_Helper{
    
    static let urlString = "https://lucifer-quotes.vercel.app/api/quotes"
    
    static func fetchQuoteData() async throws -> Any {
        guard
            let url = URL(string: urlString)
        else { throw LuciferApiErrors.unableToConvertUrl }
        
        let (data, _) = try await
            URLSession.shared.data(from: url)
        
        let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
        
        return jsonObject
    }
    
}
