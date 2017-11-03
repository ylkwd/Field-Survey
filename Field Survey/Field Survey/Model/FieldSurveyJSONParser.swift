//
//  FieldSurveyJSONParser.swift
//  Field Survey
//
//  Created by weizsw on 7/21/17.
//  Copyright © 2017 Shaowei Zhou. All rights reserved.
//

import Foundation

class FieldSurveyJSONParser {
    
    static let dateFormatter = DateFormatter()
    class func parse(_ data: Data) -> [FieldSurvey] {
        var fieldSurveys = [FieldSurvey]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
        let root = json as? [String: Any],
        let status = root["status"] as? String,
        status == "ok" {
        
            if let observations = root["observations"] as? [Any] {
                for observations in observations {
                    if let observations = observations as? [String:String]{
                        if let ClassificationName = observations["classification"],
                           let title = observations["title"],
                           let description = observations["description"],
                           let dateString = observations["date"],
                           let date = dateFormatter.date(from: dateString) {
                            if let fieldSurvey = FieldSurvey(fieldName: ClassificationName, title: title, description: description, date: date) {
                                fieldSurveys.append(fieldSurvey)
                            }
                        }
                    }
                }
            }
            
        }
        
        return fieldSurveys
    }
}
