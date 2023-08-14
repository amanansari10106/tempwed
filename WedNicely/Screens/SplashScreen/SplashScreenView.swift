//
//  SplashScreenView.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 15/07/23.
//

import SwiftUI
import Lottie
struct SplashScreenView: View {
    @State private var isActive=false
    
    var body: some View {
        if(isActive){
            if(getAccessToken().isEmpty){
                GetStartedScreen()
            }else{
               UserOnBoardingScreen()
            }
        }
        else{
            
            VStack{
                LottieView(filename: "splash_screen")
                Spacer()
                Image("india_flag").resizable().frame(width: 100,height: 80).padding(10)
                Text("Proudly Made with Love 💖 in India")
                
                Image("splash_lower_bg").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .clipped()
                
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    self.isActive = true
                }
            }
            
        }
      
    }
    
    struct SplashScreenView_Previews: PreviewProvider {
        static var previews: some View {
            SplashScreenView()
        }
    }
    
   
}
struct LottieView: UIViewRepresentable {
    var filename: String
    var loopMode: LottieLoopMode = .playOnce

    func makeUIView(context: Context) -> UIView {
        let animationView = LottieAnimationView(name: filename)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()

        let view = UIView()
        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}
