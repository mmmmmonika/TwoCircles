//
//  TwoCircleVC.swift
//  TwoCircles
//
//  Created by Monika Piesyk on 11/10/2022.
//

import Foundation
import UIKit

class TwoCircleVC: UIViewController {
    
    static let firstCircleSize = 250.0
    static let secondCircleSize = 30.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstCircleX = (view.bounds.width - TwoCircleVC.firstCircleSize) / 2
        let firstCircleY = (view.bounds.height - TwoCircleVC.firstCircleSize) / 2
        let secondircleX = (TwoCircleVC.firstCircleSize - TwoCircleVC.secondCircleSize) / 2
        let secondircleY = (TwoCircleVC.firstCircleSize - TwoCircleVC.secondCircleSize) / 2
        
        let firstCircle = CircleView(frame: CGRect(x: firstCircleX, y: firstCircleY, width: TwoCircleVC.firstCircleSize, height: TwoCircleVC.firstCircleSize))
        let secondCircle = CircleView(frame: CGRect(x: secondircleX, y: secondircleY, width: TwoCircleVC.secondCircleSize, height: TwoCircleVC.secondCircleSize))
       
        view.addSubview(firstCircle)
        firstCircle.addSubview(secondCircle)
        
    }
    
}
