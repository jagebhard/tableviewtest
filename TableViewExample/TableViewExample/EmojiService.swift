//
//  Service.swift
//  TableViewExample
//
//  Created by Juan Andres Gebhard on 07/01/2021.
//

import Foundation

struct Emoji {
    let character:Unicode.Scalar, description:String
    
}
class Service {
    func allEmojis() -> [Emoji] {
        var emojis = [Emoji]()
        let emojiRanges = [
            0x1F601...0x1F64F, // Emoticons
            0x2600...0x26FF, // Misc symbols
            0x1F680...0x1F6FF, // Transport and Map
            9100...9300
        ]
        for range in emojiRanges {
            for i in range {
                let char = UnicodeScalar(i) ?? UnicodeScalar("-")
                if let description = char.properties.name {
                    let emoji = Emoji(character: char,
                                      description: description)
                    emojis.append(emoji)
                }
            }
        }
        
        return emojis
    }
}

