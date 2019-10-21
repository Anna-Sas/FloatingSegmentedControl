//
//  ViewController.swift
//  Example
//
//  Created by Ryuhei Kaminishi on 2019/10/21.
//  Copyright © 2019 catelina777. All rights reserved.
//

import UIKit
import FloatingSegmentedControl

final class ViewController: UIViewController {

    @IBOutlet private weak var control: FloatingSegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        control.setSegments(with: [
            "Today", "Days", "Months"
        ])
        control.addTarget(self, action: #selector(update(_:)))
        control.isAnimateFocusMoving = true
    }

    @IBAction func didTap1Button(_ sender: Any) {
        control.move(to: 0)
    }

    @IBAction func didTap2Button(_ sender: Any) {
        control.move(to: 1)
    }

    @IBAction func didTap3Button(_ sender: Any) {
        control.move(to: 2)
    }

    @objc func update(_ sender: FloatingSegmentedControl) {
        print("focused index is \(sender.focusedIndex)")
    }
}

