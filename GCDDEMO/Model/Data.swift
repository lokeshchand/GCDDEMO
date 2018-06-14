//
//  Data.swift
//  GCDDEMO
//
//  Created by lokesh chand on 13/06/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import UIKit
class Data {
    
    static func getData() -> [ModelData]{
        
        var data: [ModelData] = []
        let info = "Rose,Lotus,sunflower,Lilly"
        data.append(ModelData(name:"Flower1",info:info,image:#imageLiteral(resourceName: "Flower3")))
        data.append(ModelData(name:"Flower2",info:info,image:#imageLiteral(resourceName: "Flower4")))
        data.append(ModelData(name:"Flower3",info:info,image:#imageLiteral(resourceName: "Flower1")))
        data.append(ModelData(name:"Flower4",info:info,image:#imageLiteral(resourceName: "Flower2")))
        
        sleep(2)
        return data
    }
}
