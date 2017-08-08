//
//  TableViewCell.swift
//  TrainingExe4
//
//  Created by mac on 7/28/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var txtAV: UILabel!
    
    @IBOutlet weak var txtTime: UILabel!
    
    @IBOutlet weak var txtGocDo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
