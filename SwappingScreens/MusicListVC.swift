//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Jesus Gomez on 6/22/17.
//  Copyright © 2017 gomezja. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backButtonPressed(_ sender: Any) {
        // dimisses previous viewController (login screen) instead of adding
        // stacks of views
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Load3rdScreenPressed(_ sender: Any) {
        let songTitle = "song name here"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    // added function
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
              destination.selectedSong = song
            }
        }
    }

}
