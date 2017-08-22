//
//  ViewController.swift
//  pokeKnow
//
//  Created by Cons Bulaqueña on 14/03/2017.
//  Copyright © 2017 consios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    var pokemon = ["Pick a Pokemon", "Pikachu", "Charizard", "Collindra", "MewTwo", "Lugia", "Sylveon", "Genesect", "Eevee", "Arceus", "Greninja"]
    
    
    @IBOutlet var imageView: UIImageView!

    
    @IBOutlet var infoLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image = UIImage(named: "Pokeball2.png")
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //fromstacoveflow advice
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
    
        return 1
        
    }

    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
    
        return pokemon.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
       return pokemon[row]
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let pokemonSelected = pokemon[row]
        
        switch (pokemonSelected){
            
        case "Pikachu":
            imageView.image = UIImage(named: "1pikachu.png")
            infoLabel.text = "Pikachu is able to release electric discharges of varying intensity."
            
        case "Charizard":
            imageView.image = UIImage(named: "2Charizard.png")
            infoLabel.text = "This Pokémon flies in search of powerful opponents to battle, and its fire will burn hotter as it gains experience."
        
        case "Collindra":
            imageView.image = UIImage(named: "3Collin-1.png")
            infoLabel.text = "Collindra is notable for its unique ability grow back three heads each time, can automate machines and has powerful Solr moves."
            
        case "MewTwo":
            imageView.image = UIImage(named: "4Mewtwo.png")
            infoLabel.text = "Mewtwo is a Pokémon that was created by genetic manipulation. It is highly adept at utilizing its Psychic powers, displaying telekinesis and telepathy as well."
            
        case "Lugia":
            imageView.image = UIImage(named: "5lugia.png")
            infoLabel.text = "Lugia possesses the ability to control the weather; most notably, it can calm and give rise to storms.  It is extremely rare and is hardly ever seen."
            
            
        case "Sylveon":
            imageView.image = UIImage(named: "6sylveon.png")
            infoLabel.text = "This pokemon sends a soothing aura from its ribbonlike feelers to calm fights."
            
        case "Genesect":
            imageView.image = UIImage(named: "7Genesect.png")
            infoLabel.text = "This ancient bug Pokémon was altered by Team Plasma. They upgraded the cannon on its back."
            
        case "Eevee":
            imageView.image = UIImage(named: "8Eevee.png")
            infoLabel.text = "Eevee has an unstable genetic makeup that suddenly mutates due to the environment in which it lives."
            
        case "Arceus":
            imageView.image = UIImage(named: "9arceus.png")
            infoLabel.text = "Arceus is a white equine resembling a qilin or centaur with a gray, vertically-striated underside.  According to legend, it shaped the Pokémon universe using its 1000 arms."
            
        case "Greninja":
            imageView.image = UIImage(named: "10Greninja.png")
            infoLabel.text = "Greninja creates throwing stars out of compressed water. When it spins them and throws them at high speed, these stars can split metal in two."
        
        default:
            imageView.image = UIImage(named: "Pokeball2.png")
            infoLabel.text = "Gotta know em all."
            
        }//end of switch statement
    }//end of didSelectRow function
}
