import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/ribragimov/Downloads/BBQuotes/BBQuotes/FetchView.swift", line: 1)
//
//  FetchView.swift
//  BBQuotes
//
//  Created by Ramill Ibragimov on 7/8/25.
//

import SwiftUI

struct FetchView: View {
    let vm = ViewModel()
    let show: String

    @State var showCharacterInfo: Bool = false

    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image(show.removeCaseAndSpaces())
                    .resizable()
                    .frame(width: geo.size.width * __designTimeFloat("#67451_0", fallback: 2.7), height: geo.size.height * __designTimeFloat("#67451_1", fallback: 1.2))

                VStack {
                    VStack {
                        Spacer(minLength: __designTimeInteger("#67451_2", fallback: 60))

                        switch vm.status {
                        case .notStarted:
                            EmptyView()

                        case .fetchig:
                            ProgressView()

                        case .successQuote:
                            Text("\"\(vm.quote.quote)\"")
                                .minimumScaleFactor(__designTimeFloat("#67451_3", fallback: 0.5))
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.white)
                                .padding()
                                .background(.black.opacity(__designTimeFloat("#67451_4", fallback: 0.5)))
                                .clipShape(.rect(cornerRadius: __designTimeInteger("#67451_5", fallback: 25)))
                                .padding(.horizontal)

                            ZStack(alignment: .bottom) {
                                AsyncImage(url: vm.character.images[__designTimeInteger("#67451_6", fallback: 0)]) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: geo.size.width / __designTimeFloat("#67451_7", fallback: 1.1), height: geo.size.height / __designTimeFloat("#67451_8", fallback: 1.8))

                                Text(vm.quote.character)
                                    .foregroundStyle(.white)
                                    .padding(__designTimeInteger("#67451_9", fallback: 10))
                                    .frame(maxWidth: .infinity)
                                    .background(.ultraThinMaterial)
                            }
                            .frame(width: geo.size.width / __designTimeFloat("#67451_10", fallback: 1.1), height: geo.size.height / __designTimeFloat("#67451_11", fallback: 1.8))
                            .clipShape(.rect(cornerRadius: __designTimeInteger("#67451_12", fallback: 50)))
                            .onTapGesture {
                                showCharacterInfo.toggle()
                            }

                        case .successEpisode:
                            EpisodeView(episode: vm.episode)

                        case .failed(let error):
                            Text(error.localizedDescription)
                        }

                        Spacer(minLength: __designTimeInteger("#67451_13", fallback: 20))
                    }

                    HStack {
                        Button {
                            Task {
                                await vm.getQuoteData(for: show)
                            }
                        } label: {
                            Text(__designTimeString("#67451_14", fallback: "Get Random Quote"))
                                .font(.title3)
                                .foregroundStyle(.white)
                                .padding()
                                .background(Color("\(show.removeSpaces())Button"))
                                .clipShape(.rect(cornerRadius: __designTimeInteger("#67451_15", fallback: 7)))
                                .shadow(color: Color("\(show.removeSpaces())Shadow"), radius: __designTimeInteger("#67451_16", fallback: 2))
                        }

                        Spacer()

                        Button {
                            Task {
                                await vm.getEpisode(for: show)
                            }
                        } label: {
                            Text(__designTimeString("#67451_17", fallback: "Get Random Episode"))
                                .font(.title3)
                                .foregroundStyle(.white)
                                .padding()
                                .background(Color("\(show.removeSpaces())Button"))
                                .clipShape(.rect(cornerRadius: __designTimeInteger("#67451_18", fallback: 7)))
                                .shadow(color: Color("\(show.removeSpaces())Shadow"), radius: __designTimeInteger("#67451_19", fallback: 2))
                        }
                    }
                    .padding(.horizontal, __designTimeInteger("#67451_20", fallback: 30))

                    Spacer(minLength: __designTimeInteger("#67451_21", fallback: 95))
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
    FetchView(show: Constants.bbName)
        .preferredColorScheme(.dark)
}

#Preview {
    FetchView(show: Constants.bcsName)
        .preferredColorScheme(.dark)
}

#Preview {
    FetchView(show: Constants.ecName)
        .preferredColorScheme(.dark)
}
