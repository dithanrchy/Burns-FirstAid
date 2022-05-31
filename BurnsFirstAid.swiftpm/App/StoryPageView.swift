import SwiftUI

struct StoryPageView: View {
    
    let story: Story
    let pageIndex: Int
    
    
    var body: some View {
        if story[pageIndex].scenes == "chat" {
            VStack {
                ZStack {
                    Image(story[pageIndex].bgImages)
                        .resizable()
                        .ignoresSafeArea()
                    GeometryReader { geometry in
                        
                        if story[pageIndex].memoji.isEmpty {
                            Rectangle()
                                .fill(.white)
                                .frame(width: 1000, height: 300)
                                .cornerRadius(50)
                                .padding(20)
                                .overlay{
                                    Text(story[pageIndex].text)
                                        .font(.title2)
                                        .padding()
                                        .padding(.bottom,50)
                                }
                                .position(x: geometry.size.width - 610, y: geometry.size.height - 170)
                                ForEach(story[pageIndex].choices, id: \Choice.text) { choice in
                                    NavigationLink(destination: StoryPageView(story: story, pageIndex: choice.destination)) {
                                        if choice.text == "Next" {
                                            Text(choice.text)
                                                .frame(width: 150, height: 70)
                                                .font(.title)
                                                .foregroundColor(.white)
                                                .background(.mint)
                                                .cornerRadius(8)
                                                .position(x: geometry.size.width - 300, y: geometry.size.height * 0.9)
                                        }else{
                                            Text(choice.text)
                                                .frame(width: 180, height: 70)
                                                .font(.title)
                                                .foregroundColor(.white)
                                                .background(.mint)
                                                .cornerRadius(8)
                                                .position(x: geometry.size.width - 400, y: geometry.size.height * 0.9)
                                        }
                                    }
                                }
                        }else{
                        Image(story[pageIndex].memoji)
                            .resizable()
                            .frame(width: 600, height: 600)
                            .position(x: geometry.size.width - 950, y: geometry.size.height - 270)
                        Rectangle()
                            .fill(.white)
                            .frame(width: 700, height: 300)
                            .cornerRadius(50)
                            .padding(20)
                            .overlay{
                                Text(story[pageIndex].text)
                                    .font(.title2)
                                    .padding(EdgeInsets(top: 10, leading: 40, bottom: 50, trailing: 40))
                            }
                            .position(x: geometry.size.width - 400, y: geometry.size.height - 170)
                            ForEach(story[pageIndex].choices, id: \Choice.text) { choice in
                                NavigationLink(destination: StoryPageView(story: story, pageIndex: choice.destination)) {
                                    if choice.text == "Next" {
                                        Text(choice.text)
                                            .frame(width: 150, height: 70)
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .background(.mint)
                                            .cornerRadius(8)
                                            .position(x: geometry.size.width - 190, y: geometry.size.height * 0.9)
                                        //                                        .position(x: 1200, y: 890)
                                    }else{
                                        Text(choice.text)
                                            .frame(width: 180, height: 70)
                                            .font(.title)
                                            .foregroundColor(.white)
                                            .background(.mint)
                                            .cornerRadius(8)
                                            .position(x: geometry.size.width - 400, y: geometry.size.height * 0.9)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
        }else if story[pageIndex].scenes == "question" {
            VStack {
                //            ScrollView {
                ZStack {
                    Image(story[pageIndex].bgImages)
                        .resizable()
                        .ignoresSafeArea()
                    Rectangle()
                        .fill(.white)
                        .frame(width: 1150, height: 750)
                        .cornerRadius(50)
                        .padding(20)
                    HStack {
                        ForEach(story[pageIndex].imgChoices.indices, id: \.self) { index in
                            VStack {
                                Image(story[pageIndex].imgChoices[index])
                                    .resizable()
                                    .frame(width: 330, height: 540)
                                    .cornerRadius(10)
                                    .padding()
                                NavigationLink(destination: StoryPageView(story: story, pageIndex: story[pageIndex].choices[index].destination)) {
                                    Text(story[pageIndex].choices[index].text)
                                        .frame(width: 330, height: 70)
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .background(.mint)
                                        .cornerRadius(8)
                                        .lineLimit(3)
                                        .padding()
                                }
                            }
                        }
                        
                    }
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
        }
        
    }
}

struct NonlinearStory_Previews: PreviewProvider {
    static var previews: some View {
        StoryPageView(story: story, pageIndex: 0)
    }
}
