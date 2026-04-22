//
//  Title.swift
//  DecideToWatch
//
//  Created by Murtaza N on 4/22/26.
//

import Foundation

struct Title : Decodable, Identifiable{ //structure - lightweight way to group related data together
    var id: Int?
    var title: String? // "?" for optional
    var name: String?
    var overview: String?
    var posterPath: String?
}
