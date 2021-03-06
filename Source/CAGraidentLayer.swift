//
//  CAGraidentLayer.swift
//  ComplimentaryGradientView
//
//  Created by George Kye on 2016-08-24.
//  Copyright © 2016 George Kye. All rights reserved.
//

import Foundation
import UIKit

extension CAGradientLayer{
  
  /// Set start points to CAGradientLayer
  /// - Parameters:
  ///   - start_point: Default start points. See `GradientStartPoint` enum
  ///   - customPoint: CustomStartPoint.
  func addStartPointsToGradient(_ start_point: GradientStartPoint, customPoint: CustomPoints? = nil){
    guard let custom = customPoint else{
    
      switch start_point{
      case .top:
        startPoint = CGPoint(x: 0.5, y: 0)
        endPoint = CGPoint(x: 0.5, y: 1)
      case .topRight:
        startPoint = CGPoint(x: 1, y: 0)
        endPoint = CGPoint(x: 0, y: 1)
      case .right:
        startPoint = CGPoint(x: 1, y: 0.5)
        endPoint = CGPoint(x: 0, y: 0.5)
      case .bottomRight:
        startPoint = CGPoint(x: 1, y: 1)
        endPoint = CGPoint(x: 0, y: 0)
      case .bottom:
        startPoint = CGPoint(x: 0.5, y: 1)
        endPoint = CGPoint(x: 0.5, y: 0)
      case .bottomLeft:
        startPoint = CGPoint(x: 0, y: 1)
        endPoint = CGPoint(x: 1, y: 0)
      case .left:
        startPoint = CGPoint(x: 0, y: 0.5)
        endPoint = CGPoint(x: 1, y: 0.5)
      case .topLeft:
        startPoint = CGPoint(x: 0, y: 0)
        endPoint = CGPoint(x: 1, y: 1)
      }
      return
    }
    
    startPoint = custom.startPoint
    endPoint = custom.endPoint
  }
}
