//
//  Art.swift
//  PaintersAndPaintings
//
//  Created by Ahmet Mohammed on 3/9/19.
//  Copyright © 2019 Ahmet. All rights reserved.
//

import Foundation
import UIKit

let painters = [

    Art(name: "André Derain",
        type: .fauvism,
        shortDescription: "10 June 1880 – 8 September 1954",
        caption1: "Charing Cross Bridge, London (1906)",
        caption2: "Le séchage des voiles (1905)",
        image11: UIImage(named: "charingad")!,
        image22: UIImage(named: "voilesdb")!),

    Art(name: "Georges Braque",
        type: .fauvism,
        shortDescription: "13 May 1882 - 31 August 1963",
        caption1: "Landscape in L’Estaque (1906–1907)",
        caption2: "Yellow Seacoat (1906)",
        image11: UIImage(named: "landscapegb")!,
        image22: UIImage(named: "seacostgb")!),

    Art(name: "Othon Friesz",
        type: .fauvism,
        shortDescription: "February 6, 1879 - January 10, 1949",
        caption1: "Landscape with Figures (1909)",
        caption2: "Les Baigneuses des Andelys (1908)",
        image11: UIImage(named: "figuresof")!,
        image22: UIImage(named: "andelysof")!
    ),

    Art(name: "Henri Matisse",
        type: .fauvism,
        shortDescription: "December 31, 1869 -  November 3, 1954",
        caption1: "Blue Pot and Lemon (1897)",
        caption2: "The Dance (1910)",
        image11: UIImage(named: "lemonhm")!,
        image22: UIImage(named: "thedancehm")!
    ),

    Art(name: "Sandro Botticelli",
        type: .renaissance,
        shortDescription: "March 1, 1445 - May 17, 1510",
        caption1: "The Birth of Venus (1485)",
        caption2: "Pallas and the Centaur, (1482)",
        image11: UIImage(named: "venussb")!,
        image22: UIImage(named: "pallassb")!
    ),

    Art(name: "Raphael",
        type: .renaissance,
        shortDescription: "April 6 1483, - April 6, 1520",
        caption1: "Portrait of Bindo Altoviti (1514)",
        caption2: "Sistine Madonna (1512)",
        image11: UIImage(named: "bindor")!,
        image22: UIImage(named: "madonnar")!
    ),

    Art(name: "Michelangelo",
        type: .renaissance,
        shortDescription: "6 March 1475 - 18 February 1564",
        caption1: "The Creation of Adam (1510)",
        caption2: "The Last Judgement (1534–1541)",
        image11: UIImage(named: "adamm")!,
        image22: UIImage(named: "judgem")!
    ),

    Art(name: "Leonardo da Vinci",
        type: .renaissance,
        shortDescription: "April 15, 1452 - May 2, 1519,",
        caption1: "Mona Lisa (1503)",
        caption2: "The Last Supper (1495–1498)",
        image11: UIImage(named: "monaldv")!,
        image22: UIImage(named: "supperldv")!
    ),
    

    Art(name: "Mary Cassatt",
        type: .impressionism,
        shortDescription: "May 23, 1844 - June 14, 1926",
        caption1: "Tea (1880)",
        caption2: "The Boating Party (1893–94) ",
        image11: UIImage(named: "tea")!,
        image22: UIImage(named: "boatparty")!
    ),

    Art(name: "Paul Cézanne",
        type: .impressionism,
        shortDescription: "January 19, 1839 - October 22, 1906",
        caption1: "Les Grandes Baigneuses (1898–1905)",
        caption2: "Still Life with a Curtain (1895)",
        image11: UIImage(named: "baigpc")!,
        image22: UIImage(named: "curtainpc")!
    ),

    Art(name: "Pierre-Auguste Renoir",
        type: .impressionism,
        shortDescription: "February 25, 1841 - December 3, 1919",
        caption1: "Dance at Le Moulin de la Galette (1876)",
        caption2: "The Theater Box (1874)",
        image11: UIImage(named: "gallettepar")!,
        image22: UIImage(named: "theatherpar")!
    ),

    Art(name: "Claude Monet",
        type: .impressionism,
        shortDescription: "November 14, 1840 - December 5, 1926",
        caption1: "Impression, Sunrise (1872)",
        caption2: "The Luncheon (1868)",
        image11: UIImage(named: "sunrisecm")!,
        image22: UIImage(named: "luncheoncm")!
    ),

    Art(name: "Edward Hopper",
        type: .modernism,
        shortDescription: "July 22, 1882 - May 15, 1967 ",
        caption1: "Nighthawks (1942)",
        caption2: "Chop Suey (1929)",
        image11: UIImage(named: "nighthawkseh")!,
        image22: UIImage(named: "sueyep")!
    ),

    Art(name: "Piet Mondrian",
        type: .modernism,
        shortDescription: "7 March 1872 - 1 February 1944",
        caption1: "Composition II in Red, Blue, and Yellow (1930)",
        caption2: "Willow Grove: Impression of Light and Shadow (1905)",
        image11: UIImage(named: "comppm")!,
        image22: UIImage(named: "grovepm")!
    ),
    
    Art(name: "Edouard Manet",
        type: .modernism,
        shortDescription: "January 23, 1832 - April 30, 1883",
        caption1: "The Railway (1873)",
        caption2: "The Old Musician (1862)",
        image11: UIImage(named: "railwayem")!,
        image22: UIImage(named: "musicianem")!
    ),
    Art(name: "Pablo Picasso",
        type: .modernism,
        shortDescription: "25 October 1881 - 8 April 1973 ",
        caption1: "La Vie (1903)",
        caption2: "The Old Guitarist",
        image11: UIImage(named: "lavie")!,
        image22: UIImage(named: "guitaristpp")!
    ),
    
]

class Art {
    
    enum `Type`: String {
        case modernism = "modernism"
        case impressionism = "impressionism"
        case renaissance = "renaissance"
        case fauvism  = "fauvism"
    }
    
    var name: String
    var type: Type
    var shortDescription: String
    var caption1: String
    var caption2: String
    var image11: UIImage
    var image22: UIImage

    
    init(name: String, type: Type, shortDescription: String, caption1: String, caption2: String, image11: UIImage, image22: UIImage) {
        self.name = name
        self.type = type
        self.shortDescription = shortDescription
        self.caption1 = caption1
        self.caption2 = caption2
        self.image11 = image11
        self.image22 = image22

    }
    
}
