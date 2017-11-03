//
//  FieldSurvey.swift
//  Field Survey
//
//  Created by weizsw on 7/21/17.
//  Copyright © 2017 Shaowei Zhou. All rights reserved.
//

import Foundation

struct FieldSurvey {
    let field: Classification
    let title: String
    let description: String
    let date: Date
    
    init(field: Classification, title: String, description: String, date: Date) {
        self.field = field
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(fieldName: String, title: String, description: String, date: Date) {
        if let field = Classification(rawValue: fieldName) {
            self.init(field: field, title: title, description: description, date: date)
            
        } else {
            return nil
        }
    }
}
