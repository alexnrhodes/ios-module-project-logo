//
//  LogoView.swift
//  HarryPotterLogo
//
//  Created by Alex Rhodes on 9/11/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

@IBDesignable class LogoView: UIView {
    
    private let glassesWidth: CGFloat = 10
    private let glassesColor: UIColor = .black
    private let borderWidth: CGFloat = 8
    private let glassesGrey: UIColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        
        
        if let context = UIGraphicsGetCurrentContext() {
            
            // lightening bolt
            let corner1 = CGPoint(x: rect.size.width * 0.35, y: rect.size.height * 0.1)
            let corner2 = CGPoint(x: rect.size.width * 0.45, y: rect.size.height * 0.4)
            let corner3 = CGPoint(x: rect.size.width * 0.3, y: rect.size.height * 0.55)
            let corner4 = CGPoint(x: rect.size.width * 0.64, y: rect.size.height * 0.9)
            let corner5 = CGPoint(x: rect.size.width * 0.55 , y: rect.size.height * 0.57)
            let corner6 = CGPoint(x: rect.size.width * 0.68, y: rect.size.height * 0.4)
            

            context.move(to: corner1)
            context.addLine(to: corner2)
            context.addLine(to: corner3)
            context.addLine(to: corner4)
            context.addLine(to: corner5)
            context.addLine(to: corner6)
            context.addLine(to: corner1)


            context.setFillColor(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
            context.fillPath()
            
            // glasses center
            let curvePoint = CGPoint(x: rect.size.width * 0.5, y: rect.size.height * 0.4)
            let leftNose = CGPoint(x: rect.size.width * 0.4, y: rect.size.height * 0.49)
            let rightNose = CGPoint(x: rect.size.width * 0.6, y: rect.size.height * 0.49)
            
            context.move(to: leftNose)
            context.addQuadCurve(to: rightNose, control: curvePoint)
            
            context.setStrokeColor(glassesGrey.cgColor)
            context.setLineWidth(borderWidth)
            context.strokePath()
            
            // left and right eye white border
            
             let leftEyeBorder = CGRect(x: rect.size.width * 0.15 - glassesWidth, y: rect.size.height * 0.45 - glassesWidth, width: (rect.size.width/2) * 0.6, height: (rect.size.width/2) * 0.6)
            
            context.addEllipse(in: leftEyeBorder)
            context.setLineWidth(glassesWidth)
            context.setStrokeColor(glassesGrey.cgColor)
            context.strokePath()


            //border
            
            let rightEyeBorder = CGRect(x: rect.size.width * 0.6 - glassesWidth, y: rect.size.height * 0.45 - glassesWidth, width: (rect.size.width/2) * 0.6, height: (rect.size.width/2) * 0.6)
            
            context.addEllipse(in: rightEyeBorder)
            context.setLineWidth(glassesWidth)
            context.setStrokeColor(glassesGrey.cgColor)
            context.strokePath()
            
            
            
            let leftEdgePieceR = CGPoint(x: rect.size.width * 0.085, y: rect.size.height * 0.555)
            
            let leftEdgePieceL = CGPoint(x: rect.size.width * 0.13, y: rect.size.height * 0.555)
            
            context.move(to: leftEdgePieceL)
            context.addLine(to: leftEdgePieceR)
            
            context.setLineWidth(glassesWidth)
            context.setStrokeColor(glassesGrey.cgColor)
            context.strokePath()
            
            let rightEdgePieceR = CGPoint(x: rect.size.width * 0.915, y: rect.size.height * 0.555)
            
            let rightEdgePieceL = CGPoint(x: rect.size.width * 0.87, y: rect.size.height * 0.555)
            
            context.move(to: rightEdgePieceL)
            context.addLine(to: rightEdgePieceR)
            
            context.setLineWidth(glassesWidth)
            context.setStrokeColor(glassesGrey.cgColor)
            context.strokePath()
        }
        
    }
    
}
