//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tim Krull on 6/25/18.
//  Copyright © 2018 Tim Krull. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var ballImageView: UIImageView! //ImageView for the ball image
	
	let ballFaces = ["ball1", "ball2", "ball3", "ball4", "ball5"] //array of ball image names
	
	override func viewDidLoad() {
		super.viewDidLoad()
		updateBall()
	}//viewDidLoad()

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}//didReceiveMemoryWarning()

	//action for when the Ask button is pressed
	@IBAction func askPressed(_ sender: UIButton) {
		updateBall()
	}//askPressed(Any)
	
	//updates the ball image with a pseudo-randomly chosen ball image
	func updateBall(){
		let randomChoice : Int = Int(arc4random_uniform(5))
		
		ballImageView.image = UIImage(named: ballFaces[randomChoice])
	}//updateBall()
	
	//action for then the device is shaken
	override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
		updateBall()
	}//motionEnded(UIEventSubtype, UIEvent?)
	
}

