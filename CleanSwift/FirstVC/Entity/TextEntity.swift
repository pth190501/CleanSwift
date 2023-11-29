//
//  TextEntity.swift
//  CleanSwift
//
//  Created by Phạm Thanh Hải on 28/11/2023.
//

import Foundation
import ObjectMapper

struct TextEntity: Codable {
    let result: String
    
    init(result: String) {
        self.result = result
    }
}
