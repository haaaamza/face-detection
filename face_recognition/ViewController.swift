//
//  ViewController.swift
//  face_recognition
//
//  Created by Hamza Mian on 2021-07-29.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let capSess = AVCaptureSession()
        
        guard let captDevice = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front) else {return}
        
        guard let input = try? AVCaptureDeviceInput(device: captDevice) else {return}
        
//            AVCaptureDevice.default(.builtInDualCamera, for: .video, position: .front)
        capSess.addInput(input)
        capSess.startRunning()
        
        let previewLayer = AVCaptureVideoPreviewLayer(session: capSess)
        view.layer.addSublayer(previewLayer)
        previewLayer.frame = view.frame //Add a constraint here so we can see the bottom bit
        // MARK: Check out: https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/CoreAnimation_guide/BuildingaLayerHierarchy/BuildingaLayerHierarchy.html or: https://stackoverflow.com/questions/14235032/calayer-content-goes-out-of-bounds-ios
        
        
    }


}

