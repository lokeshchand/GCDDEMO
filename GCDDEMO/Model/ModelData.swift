//
//  ModelData.swift
//  GCDDEMO
//
//  Created by lokesh chand on 13/06/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import UIKit

class ModelData{
    
    var name = ""
    var info = ""
    var image :UIImage?
    init(name:String,info:String,image:UIImage?)
    {
        self.name = name
        self.info = info
        self.image = image
    }
    
}
