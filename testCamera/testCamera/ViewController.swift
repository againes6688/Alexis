//
//  ViewController.swift
//  testCamera
//
//  Created by Apple on 5/18/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func CameraButton(_ sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(.camera)
        {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            self.present(imagePicker, animated: true, completion: nil)
        }
        }
    
    

    @IBAction func LibraryButton(_ sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
        {
            let library = UIImagePickerController()
            library.delegate=self
            library.sourceType = UIImagePickerControllerSourceType.photoLibrary
            self.present(library, animated: true, completion: nil)
        }
        
        
    }

}

