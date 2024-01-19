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
        
    }
    func startPlaneDetection(){
        
        arView.automaticallyConfigureSession = true
        
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = [.horizontal]
        configuration.environmentTexturing = .automatic
        
    }

}
