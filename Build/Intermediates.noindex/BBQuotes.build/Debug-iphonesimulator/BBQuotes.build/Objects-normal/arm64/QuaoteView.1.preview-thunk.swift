import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/ribragimov/Downloads/BBQuotes/BBQuotes/QuaoteView.swift", line: 1)
//
//  QuaoteView.swift
//  BBQuotes
//
//  Created by Ramill Ibragimov on 7/8/25.
//

import SwiftUI

struct QuaoteView: View {
    let vm = ViewModel()
    let show: String

    @State var showCharacterInfo: Bool = false

    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image(show.removeCaseAndSpaces())
                    .resizable()
                    .frame(width: geo.size.width * __designTimeFloat("#14566_0", fallback: 2.7), height: geo.size.height * __designTimeFloat("#14566_1", fallback: 1.2))

                VStack {
                    VStack {
                        Spacer(minLength: __designTimeInteger("#14566_2", fallback: 60))

                        switch vm.status {
                        case .notStarted:
                            EmptyView()

                        case .fetchig:
                            ProgressView()

                        case .success:
                            Text("\"\(vm.quote.quote)\"")
                                .minimumScaleFactor(__designTimeFloat("#14566_3", fallback: 0.5))
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.white)
                                .padding()
                                .background(.black.opacity(__designTimeFloat("#14566_4", fallback: 0.5)))
                                .clipShape(.rect(cornerRadius: __designTimeInteger("#14566_5", fallback: 25)))
                                .padding(.horizontal)

                            ZStack(alignment: .bottom) {
                                AsyncImage(url: vm.character.images[__designTimeInteger("#14566_6", fallback: 0)]) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: geo.size.width / __designTimeFloat("#14566_7", fallback: 1.1), height: geo.size.height / __designTimeFloat("#14566_8", fallback: 1.8))

                                Text(vm.quote.character)
                                    .foregroundStyle(.white)
                                    .padding(__designTimeInteger("#14566_9", fallback: 10))
                                    .frame(maxWidth: .infinity)
                                    .background(.ultraThinMaterial)
                            }
                            .frame(width: geo.size.width / __designTimeFloat("#14566_10", fallback: 1.1), height: geo.size.height / __designTimeFloat("#14566_11", fallback: 1.8))
                            .clipShape(.rect(cornerRadius: __designTimeInteger("#14566_12", fallback: 50)))
                            .onTapGesture {
                                showCharacterInfo.toggle()
                            }

                        case .failed(let error):
                            Text(error.localizedDescription)
                        }

                        Spacer()
                    }

                    Button {
                        Task {
                            await vm.getQuoteData(for: show)
                        }
                    } label: {
                        Text(__designTimeString("#14566_13", fallback: "Get Random Quote"))
                            .font(.title)
                            .foregroundStyle(.white)
                            .padding()
                            .background(Color("\(show.removeSpaces())Button"))
                            .clipShape(.rect(cornerRadius: __designTimeInteger("#14566_14", fallback: 7)))
                            .shadow(color: Color("\(show.removeSpaces())Shadow"), radius: __designTimeInteger("#14566_15", fallback: 2))
                    }
                    Spacer(minLength: __designTimeInteger("#14566_16", fallback: 95))
                }
                .frame(width: geo.size.width, height: geo.size.height)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        .ignoresSafeArea()
        .toolbarBackgroundVisibility(.visible, for: .tabBar)
        .sheet(isPresented: $showCharacterInfo) {
            CharacterView(character: vm.character, show: show)
        }
    }
}

#Preview {
    QuaoteView(show: Constants.bbName)
        .preferredColorScheme(.dark)
}

#Preview {
    QuaoteView(show: Constants.bcsName)
        .preferredColorScheme(.dark)
}

#Preview {
    QuaoteView(show: Constants.ecName)
        .preferredColorScheme(.dark)
}
