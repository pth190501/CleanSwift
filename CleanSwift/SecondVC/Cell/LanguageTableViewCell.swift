//
//  LanguageTableViewCell.swift
//  CleanSwift
//
//  Created by Phạm Thanh Hải on 28/11/2023.
//

import UIKit

class LanguageTableViewCell: UITableViewCell {

    @IBOutlet weak var lbLang: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
