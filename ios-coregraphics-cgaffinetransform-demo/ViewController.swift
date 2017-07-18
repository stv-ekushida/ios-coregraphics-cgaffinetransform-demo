//
//  ViewController.swift
//  ios-coregraphics-cgaffinetransform-demo
//
//  Created by Eiji Kushida on 2017/07/19.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateTransform()
    }

    private func updateTransform() {

        let rotationAngleTransform = CGAffineTransform(rotationAngle: 45)
        let scaleTransform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        let transform = rotationAngleTransform.concatenating(scaleTransform)
        imageView.transform = transform
    }
}

