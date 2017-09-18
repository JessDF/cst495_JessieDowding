//
//  Assets.swift
//  WorldTrotter
//
//  Created by Jessie Dowding on 9/17/17.
//  Copyright © 2017 Jessie Dowding. All rights reserved.
//

import UIKit

struct Assets {
    static let image = Assets.Image.share
    struct Image {
        static let share: Assets.Image = Image()
        var imgCat: UIImage {
            return UIImage(named: "catImg")!
        }
    }
}
