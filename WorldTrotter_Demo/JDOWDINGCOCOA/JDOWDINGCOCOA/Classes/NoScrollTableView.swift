//
//  NoScrollTableView.swift
//  Pods
//
//  Created by Jessie Dowding on 9/17/17.
//
//

import Foundation
import UIKit

public class NoScrollTableView: UITableView {
    
    override public var contentSize: CGSize {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
    }
    
    override public var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        
        return CGSize(width: UIViewNoIntrinsicMetric, height: contentSize.height)
    }
    
}
