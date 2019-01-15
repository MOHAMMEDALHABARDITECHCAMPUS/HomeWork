//
//  TrafficTableViewCell.swift
//  L5P24
//
//  Created by mac on 09/05/1440 AH.
//  Copyright © 1440 MOAHMMED. All rights reserved.
//

import UIKit

class TrafficTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var TrefficName: UILabel!
    @IBOutlet weak var LeDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    // MARK : - هنا اخذنا الترفك الي انشنها في الكلاس
    func configureTraiffic(Trif:TrafficItems){
        // MARK : - هنا اخذنا من ليبل الي فوق لا تلخبط جبنا الاسماء منها
        ImageView.image = Trif.ItemImage
        TrefficName.text = Trif.itemName
        LeDesc.text = Trif.itemDesc
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
