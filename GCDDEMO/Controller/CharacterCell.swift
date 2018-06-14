//
//  CharacterCell.swift
//  GCDDEMO
//
//  Created by lokesh chand on 13/06/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import UIKit

class CharacterCell: UITableViewCell
{
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    
    func setup(model: ModelData)
    {
        nameLabel.text = model.name
        infoLabel.text = model.info
        cellImageView.image = model.image

    }


}



