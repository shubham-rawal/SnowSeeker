//
//  Resort.swift
//  SnowSeeker
//
//  Created by Shubham Rawal on 21/09/22.
//

import Foundation

struct Resort : Codable, Identifiable {
    let id: String
    let name: String
    let country: String
    let description: String
    let imageCredit: String
    let price: Int
    let size: Int
    let elevation: Int
    let snowDepth: Int
    let runs: Int
    let facilities: [String]
    
    static let allResorts: [Resort] = Bundle.main.decode("resorts.json")
    static let example = allResorts[0]
}
