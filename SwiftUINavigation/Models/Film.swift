//
//  Film.swift
//  SwiftUINavigation
//
//  Created by Rameez Hasan on 16/06/2024.
//

import Foundation
import SwiftUI

struct Film: Hashable, Codable, Identifiable {
    
    var id: Int
    var Title: String
    var Year: String
    var Rated: String
    var Released: String
    var Genre: String
    var Plot: String

    private var Images: [String]
    var image: URL? {
        URL.init(string: Images.first ?? "")
    }
}
