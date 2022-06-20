//
//  Box.swift
//  ARKitPlanes
//
//  Created by Felix Titov on 6/20/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import SceneKit
import ARKit

class Box: SCNNode {
    init(atPosition position: SCNVector3) {
        super.init()
        
        let boxGeometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        
        let material = SCNMaterial()
        material.diffuse.contents = UIColor.green
        
        boxGeometry.materials = [material]
        self.geometry = boxGeometry
        
        self.position = position
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}