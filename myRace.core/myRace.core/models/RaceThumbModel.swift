//
//  RaceThumbModel.swift
//  myRace.core
//
//  Created by Yanbo Dang on 12/7/2023.
//

import Foundation

struct RaceThumbModel: Decodable {
    let nextIds:[String]
    let raceSummeries: [String: RaceSummaryItem]
    
    enum CodingKeys: String, CodingKey {
        case nextIds = "next_to_go_ids"
        case raceSummeries = "race_summaries"
    }
    
}

struct RaceSummaryItem: Decodable {
    let raceId: String
    let raceName: String
    let raceNum: String
    let meetingId: String
    let meetingName: String
    let categoryId: String
    let advertisedStart: Advertised
    
    enum CodingKeys: String, CodingKey {
        case raceId = "race_id"
        case raceName = "race_name"
        case raceNum = "race_number"
        case meetingId = "meeting_id"
        case meetingName = "meeting_name"
        case categoryId = "category_id"
        case advertisedStart = "advertised_start"
    }
}


struct Advertised: Decodable {
    let seconds: Int
}
