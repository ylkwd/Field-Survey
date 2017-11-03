//
//  FieldSurveyTableViewCell.swift
//  Field Survey
//
//  Created by Yaoxuan Luan on 11/3/17.
//  Copyright © 2017 Yaoxuan Luan. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var fieldiconimageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
