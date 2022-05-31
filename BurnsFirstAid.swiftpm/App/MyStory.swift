import Foundation
import SwiftUI

let story = Story(pages: [
    StoryPage( // 0
        "chat",
        text: """
        Hello, My name is Moma.
        I want to cook a famous Indonesian traditional food, Ayam Taliwang.
        It's from Lombok, West Nusa Tenggara.
        Let's cook together, shall we?
        """,
        choices: [
            Choice(text: "Let's Go!", destination: 26),
        ],
        bgImages: "scene_1",
        memoji: "mom_welcome",
        imgChoices: []
             ),
    StoryPage( // 1
        "chat",
        text: """
        Awww! My hand got splashed by the oil!
        What should I do?😭
        """,
        choices: [
            Choice(text: "Call Doctor!", destination: 2),
        ],
        bgImages: "scene_2",
        memoji: "mom_shock",
        imgChoices: []
             ),
    StoryPage( // 2
        "chat",
        text: """
        Hi there! I'm Via, your one call away doctor.
        I’m coming! Let's help Moma together!
        """,
        choices: [
            Choice(text: "Let's Go!", destination:3),
        ],
        bgImages: "scene_2",
        memoji: "doc_coming",
        imgChoices: []
             ),
    StoryPage( // 3 ask1
        "question",
        text: "",
        choices: [
            Choice(text: "Turn off the stove", destination:5),
            Choice(text: "Pouring water into the stove", destination:4),
        ],
        bgImages: "scene_2",
        memoji: "",
        imgChoices: ["ask1_A","ask1_B"]
             ),
    StoryPage( // 4 ask1_false
        "chat",
        text: """
        Oops..
        Pouring water on the fire in the stove will only expand the fire 😱
        """,
        choices: [
            Choice(text: "Try Again", destination:3),
        ],
        bgImages: "scene_2",
        memoji: "doc_false",
        imgChoices: []
             ),
    StoryPage( // 5 ask1_true
        "chat",
        text: """
        Good job! The fire is off.
        Now, let’s check Moma’s hand!
        """,
        choices: [
            Choice(text: "Next", destination:6),
        ],
        bgImages: "scene_2",
        memoji: "doc_true",
        imgChoices: []
             ),
    StoryPage( // 6
        "chat",
        text: """
        Excellent!
        Now let’s check the degree of burns.
        """,
        choices: [
            Choice(text: "Next", destination:7),
        ],
        bgImages: "hand_firstDegree",
        memoji: "doc_thinking",
        imgChoices: []
             ),
    StoryPage( // 7
        "chat",
        text: """
        First, let me share about the difference of each degree of burns.
        """,
        choices: [
            Choice(text: "Next", destination:8),
        ],
        bgImages: "hand_firstDegree",
        memoji: "doc_thinking",
        imgChoices: []
             ),
    StoryPage( // 8_first degree
        "chat",
        text: """
        First-Degree Burns:
        A first-degree burn refers to a burn injury in which the surface of the skin is damaged, but the outermost layer of skin, is still intact.
        """,
        choices: [
            Choice(text: "Next", destination:9),
        ],
        bgImages: "hand_first",
        memoji: "doc_idea",
        imgChoices: []
             ),
    StoryPage( // 9_second degree
        "chat",
        text: """
        Second-Degree Burns:
        Burns that affect the outermost and second skin layer.
        Blisters are the first sign of a second-degree burn.
        """,
        choices: [
            Choice(text: "Next", destination:10),
        ],
        bgImages: "hand_second",
        memoji: "doc_idea",
        imgChoices: []
             ),
    StoryPage( // 10_third degree
        "chat",
        text: """
        Third Degree Burns:
        Burns that have killed the skin all the way to the fatty tissue.
        Third-degree burns also cause nerve death, so the person may not be able to feel anything in the area of the burn.
        """,
        choices: [
            Choice(text: "Next", destination:11),
        ],
        bgImages: "hand_third",
        memoji: "doc_idea",
        imgChoices: []
             ),
    StoryPage( // 11
        "chat",
        text: """
        After understanding each degree of burns,
        let's check the burn level of Moma’s hand!
        """,
        choices: [
            Choice(text: "Next", destination:12),
        ],
        bgImages: "hand_firstDegree",
        memoji: "doc_thinking",
        imgChoices: []
             ),
    StoryPage( // 12
        "question",
        text: "",
        choices: [
            Choice(text: "First Degree of Burns", destination:15),
            Choice(text: "Second Degree of Burns", destination:13),
            Choice(text: "Third Degree of Burns", destination:14),
        ],
        bgImages: "hand_firstDegree",
        memoji: "",
        imgChoices: ["ask2_A","ask2_B","ask2_C"]
             ),
    StoryPage( // 13 ask2_2nd false
        "chat",
        text: """
        Oops..
        Please recheck Moma’s hand. Does the burn blister and swell?
        """,
        choices: [
            Choice(text: "Try Again", destination:12),
        ],
        bgImages: "hand_firstDegree",
        memoji: "doc_false",
        imgChoices: []
             ),
    StoryPage( // 14 ask2_ third false
        "chat",
        text: """
        Oops..
        Please recheck Moma’s hand.
        Does the burn wound so deep that it turned the skin rough?
        """,
        choices: [
            Choice(text: "Try Again", destination:12),
        ],
        bgImages: "hand_firstDegree",
        memoji: "doc_false",
        imgChoices: []
             ),
    StoryPage( // 15 ask2_true
        "chat",
        text: """
        Correct!
        Now, what should we do first?
        """,
        choices: [
            Choice(text: "Next", destination:16),
        ],
        bgImages: "hand_firstDegree",
        memoji: "doc_true",
        imgChoices: []
             ),
    StoryPage( // 16 ask3
        "question",
        text: "",
        choices: [
            Choice(text: "Ice it using ice cubes", destination:17),
            Choice(text: "Run cool water through it", destination:18),
        ],
        bgImages: "hand_firstDegree",
        memoji: "",
        imgChoices: ["ask3_A","ask3_B"]
             ),
    StoryPage( // 17 ask3_false
        "chat",
        text: """
        Stop!🛑
        Using something too cold can cause more damage to the skin's tissues.
        """,
        choices: [
            Choice(text: "Try Again", destination:16),
        ],
        bgImages: "hand_firstDegree",
        memoji: "doc_false",
        imgChoices: []
             ),
    StoryPage( // 18 ask3_true
        "chat",
        text: """
        Good job! You have to keep flushing it with running water until the red color becomes more faded. After pouring water on the burn, let's apply something to cool the wound. What can we use?
        """,
        choices: [
            Choice(text: "Next", destination:19),
        ],
        bgImages: "hand_afterWater",
        memoji: "doc_true",
        imgChoices: []
             ),
    StoryPage( // 19 ask4
        "question",
        text: "",
        choices: [
            Choice(text: "Toothpaste", destination:20),
            Choice(text: "Petroleum Jelly", destination:21),
            Choice(text: "Butter", destination:20),
        ],
        bgImages: "hand_afterWater",
        memoji: "",
        imgChoices: ["ask4_A","ask4_B","ask4_C"]
             ),
    StoryPage( // 20 ask4_false
        "chat",
        text: """
        Ignore the myths about butter or toothpaste—they don't help,
        they can trap heat inside the skin, and they invite infection.
        """,
        choices: [
            Choice(text: "Try Again", destination:19),
        ],
        bgImages: "hand_afterWater",
        memoji: "doc_false",
        imgChoices: []
             ),
    StoryPage( // 21 ask4_true
        "chat",
        text: """
        Good Job! You can also use an aloe vera as a subtitute. Now let’s cover the burn so it’s don’t get infected. What can we use?
        """,
        choices: [
            Choice(text: "Next", destination:22),
        ],
        bgImages: "hand_afterPetroleumJelly",
        memoji: "doc_true",
        imgChoices: []
             ),
    StoryPage( // 22 ask5
        "question",
        text: "",
        choices: [
            Choice(text: "Nonstick Bandage", destination:24),
            Choice(text: "Stick Bandage", destination:23),
        ],
        bgImages: "hand_afterPetroleumJelly",
        memoji: "",
        imgChoices: ["ask5_A","ask5_B"]
             ),
    StoryPage( // 23 ask5_false
        "chat",
        text: """
        Oh no!
        If you use stick bandage, it will stick to the burn and might cause more harm when you try to take it off.
        """,
        choices: [
            Choice(text: "Try Again", destination:22),
        ],
        bgImages: "hand_afterPetroleumJelly",
        memoji: "doc_false",
        imgChoices: []
             ),
    StoryPage( // 24 ask5_true
        "chat",
        text: """
        Yay! You did well!
        If you think the burn may require emergency treatment,
        please call the emergency number as soon as possible☺️
        """,
        choices: [
            Choice(text: "Next", destination:25),
        ],
        bgImages: "hand_afterBandage",
        memoji: "doc_true",
        imgChoices: []
             ),
    StoryPage( // 25
        "chat",
        text: """
        Thank You for your help!
        Don’t forget to be careful when you are in the kitchen❤️
        """,
        choices: [
            Choice(text: "Back to Home", destination: 0)
        ],
        bgImages: "scene_1",
        memoji: "mom_love",
        imgChoices: []
             ),
    StoryPage( // 26 suddenly
        "chat",
        text: """
        ((Suddenly...))
        """,
        choices: [
            Choice(text: "Next", destination: 1)
        ],
        bgImages: "scene_2",
        memoji: "",
        imgChoices: []
             ),
    
    
])
