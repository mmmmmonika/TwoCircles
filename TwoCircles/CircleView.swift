//
//  CircleView.swift
//  TwoCircles
//
//  Created by Monika Piesyk on 18/10/2022.
//

import Foundation
import UIKit

class CircleView: UIView {
    
    private var initialCenter: CGPoint = .zero
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.clear
        
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(didPan(panGestureRecognizer:)))
        addGestureRecognizer(panGestureRecognizer)
    }

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        path.lineWidth = 0.5
        UIColor.black.setStroke()
        path.stroke()
    }
    
    @objc func didPan(panGestureRecognizer: UIPanGestureRecognizer) {

        switch panGestureRecognizer.state {
            case .began:
                initialCenter = center
            case .changed:
                let translation = panGestureRecognizer.translation(in: self)
            
                let x = initialCenter.x + translation.x
                let y = initialCenter.y + translation.y
                let dX = TwoCircleVC.firstCircleSize / 2 - x
                let dY = TwoCircleVC.firstCircleSize / 2 - y
         
                let delta = sqrt( dX * dX + dY * dY)
           
                if delta < (TwoCircleVC.firstCircleSize - TwoCircleVC.secondCircleSize) / 2 {
                    center = CGPoint(x: initialCenter.x + translation.x,
                                     y: initialCenter.y + translation.y)
                }
            default:
                break
            }
    }
}
