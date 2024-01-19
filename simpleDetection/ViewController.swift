//
//  ViewController.swift
//  simpleDetection
//
//  Created by Longxuan Lin on 1/19/24.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController{

    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // fire off plane detection
        startPlaneDetection()
        
        // 2D point
        arView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(recognizer:))))
        
        
    }
    
    @objc
    func handleTap(recognizer: UITapGestureRecognizer){
        //Touch location
        let tapLocation = recognizer.location(in: arView)
        
        
    }
    
    
    
    
    
    func startPlaneDetection(){
        
        arView.automaticallyConfigureSession = true
        
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = [.horizontal]
        configuration.environmentTexturing = .automatic
        
        
        arView.session.run(configuration)
        
    }

}
