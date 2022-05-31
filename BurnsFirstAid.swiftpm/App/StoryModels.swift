import Foundation

struct Story {
    
    let pages: [StoryPage]

    subscript(_ pageIndex: Int) -> StoryPage {
        return pages[pageIndex]
    }
}

struct StoryPage {
    let scenes: String
    let text: String
    
    let choices: [Choice]
    let imgChoices: [String]
    
    //BG Image, type UIImage ->
    let bgImages: String
    let memoji: String
    
    init(_ scenes:String, text: String, choices: [Choice], bgImages: String, memoji: String, imgChoices: [String]) {
        self.scenes = scenes
        self.text = text
        self.choices = choices
        self.bgImages = bgImages
        self.memoji = memoji
        self.imgChoices = imgChoices
    }
}

struct Choice {
    let text: String
    let destination: Int
}

//Struct Gambar [] -> Image + koordinat atau CGFrame
//
