//
//  Planet.swift
//  Planets
//
//  Created by Andrew R Madsen on 8/2/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

struct Planet {
    
    init(name: String, imageName: String) {
        self.name = name
        self.image = UIImage(named: imageName)! // may crash if planet file is missing
    }
    
    var name: String
    var image: UIImage
}
