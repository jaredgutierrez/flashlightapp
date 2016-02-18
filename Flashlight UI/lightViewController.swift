//
//  lightViewController.swift
//  Flashlight UI
//
//  Created by Jared Gutierrez on 2/15/16.
//  Copyright © 2016 Jared Gutierrez. All rights reserved.
//

import UIKit
import AVFoundation

class lightViewController: UIViewController {
    @IBOutlet weak var OnIndicator: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func SwitchLight(sender: AnyObject) {
        
        let device = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
        if (device.hasTorch) {
            do {
                try device.lockForConfiguration()
                if (device.torchMode == AVCaptureTorchMode.On) {
                    device.torchMode = .Off
                } else {
                    device.torchMode = .On
                }
                device.unlockForConfiguration()
            } catch {
                print("error")
            }
            
            
        }

        
        
        
    }
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
