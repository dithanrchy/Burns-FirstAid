import SwiftUI
import AVFoundation

var audioPlayer : AVAudioPlayer?

struct StoryView: View {
    init(){
        UINavigationBar.setAnimationsEnabled(false)
    }
    
    var body: some View {
        NavigationView {
            StoryPageView(story: story, pageIndex: 0)
        }
        .onAppear{
            print("asdasd")
            backgroundAudio()
        }
        .navigationViewStyle(.stack)
    }
}

func backgroundAudio(){
    guard let path = Bundle.main.path(forResource: "bgSound", ofType: "wav")
    else {
        return
    }
    let url = URL(fileURLWithPath: path)
    do {
        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try AVAudioSession.sharedInstance().setActive(true)
        if audioPlayer != nil {
            audioPlayer?.stop()
        }
        audioPlayer = try AVAudioPlayer(contentsOf: url)
        audioPlayer?.numberOfLoops = -1
        audioPlayer?.volume =  0.15
        audioPlayer?.play()
    } catch let error {
        print(error.localizedDescription)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
