import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/ribragimov/Downloads/BBQuotes/BBQuotes/CharacterView.swift", line: 1)
//
//  CharacterView.swift
//  BBQuotes
//
//  Created by Ramill Ibragimov on 7/8/25.
//

import SwiftUI

struct CharacterView: View {
    let character: Char
    let show: String

    var body: some View {
        GeometryReader { geo in
            ScrollViewReader { proxy in
                ZStack(alignment: .top) {
                    Image(show.removeCaseAndSpaces())
                        .resizable()
                        .scaledToFit()

                    ScrollView {
                        TabView {
                            ForEach(character.images, id: \.self) {characterImageUrl in
                                AsyncImage(url: characterImageUrl) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                } placeholder: {
                                    ProgressView()
                                }
                            }
                        }
                        .tabViewStyle(.page)
                        .frame(width: geo.size.width / __designTimeFloat("#34905_0", fallback: 1.2), height: geo.size.height / __designTimeFloat("#34905_1", fallback: 1.7))
                        .clipShape(.rect(cornerRadius: __designTimeInteger("#34905_2", fallback: 25)))
                        .padding(.top, __designTimeInteger("#34905_3", fallback: 60))

                        VStack(alignment: .leading) {
                            Text(character.name)
                                .font(.largeTitle)

                            Text("Portrayed by: \(character.portrayedBy)")
                                .font(.subheadline)

                            Divider()

                            Text("\(character.name) Character Info")
                                .font(.title2)

                            Text("Born: \(character.birthday)")

                            Divider()

                            Text(__designTimeString("#34905_4", fallback: "Occupations:"))

                            ForEach(character.occupations, id: \.self) { occupation in
                                Text("•\(occupation)")
                                    .font(.subheadline)
                            }

                            Divider()

                            Text(__designTimeString("#34905_5", fallback: "Nicknames:"))

                            if character.aliases.count > __designTimeInteger("#34905_6", fallback: 0) {
                                ForEach(character.aliases, id: \.self) { alias in
                                    Text("•\(alias)")
                                        .font(.subheadline)
                                }
                            } else {
                                Text(__designTimeString("#34905_7", fallback: "None"))
                                    .font(.subheadline)
                            }

                            Divider()

                            DisclosureGroup(__designTimeString("#34905_8", fallback: "Status (spoiler alert!):")) {
                                VStack(alignment: .leading) {
                                    Text(character.status)
                                        .font(.title2)

                                    if let death = character.death {
                                        AsyncImage(url: death.image) { image in
                                            image
                                                .resizable()
                                                .scaledToFit()
                                                .clipShape(.rect(cornerRadius: __designTimeInteger("#34905_9", fallback: 15)))
                                                .onAppear {
                                                    withAnimation {
                                                        proxy.scrollTo(__designTimeInteger("#34905_10", fallback: 1), anchor: .bottom)
                                                    }
                                                }
                                        } placeholder: {
                                            ProgressView()
                                        }

                                        Text("How: \(death.details)")
                                            .padding(.bottom, __designTimeInteger("#34905_11", fallback: 7))

                                        Text("Last words: \"\(death.lastWords)\"")
                                    }
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .tint(.primary)
                        }
                        .frame(width: geo.size.width / __designTimeFloat("#34905_12", fallback: 1.25), alignment: .leading)
                        .padding(.bottom, __designTimeInteger("#34905_13", fallback: 50))
                        .id(__designTimeInteger("#34905_14", fallback: 1))
                    }
                    .scrollIndicators(.hidden)
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CharacterView(character: ViewModel().character, show: Constants.bbName)
}
