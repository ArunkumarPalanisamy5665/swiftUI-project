//
//  ContentView.swift
//  Ecommerce SwiftUIPractice
//
//  Created by DreamsTechnologies on 22/11/26.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var selectedCategory = "All"
    
    let categories = [
        "All",
        "🍔 Burger",
        "🍕 Pizza",
        "🍹 Drinks",
        "🍟 Fries"
    ]
    
    @State private var products: [ProductModel] = [
        ProductModel(
            name: "Classic Burger",
            price: 150,
            calories: 250,
            image: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&q=80",
            isFavourite: false,
            rating: 4.9
        ),
        ProductModel(
            name: "Chicken Burger",
            price: 200,
            calories: 350,
            image: "https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&q=80",
            isFavourite: true,
            rating: 4.7
        ),
        ProductModel(
            name: "Cheese Pizza",
            price: 280,
            calories: 420,
            image: "https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&q=80",
            isFavourite: false,
            rating: 4.8
        ),
        ProductModel(
            name: "French Fries",
            price: 120,
            calories: 190,
            image: "https://images.unsplash.com/photo-1576107232684-1279f3908594?w=500&q=80",
            isFavourite: true,
            rating: 4.6
        )
    ]
    
    @State private var searchText = ""
    
    private let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing: 16) {
                
                
                HStack(spacing: 16) {
                    
                    
                    AsyncImage(url: URL(string: "https://picsum.photos/200")) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                            
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFill()
                            
                        case .failure:
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .foregroundStyle(.gray)
                            
                        @unknown default:
                            EmptyView()
                        }
                    }
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    
                    
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text("Alexander")
                            .font(.headline)
                        
                        Text("123, main street, New York")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    
                    ZStack {
                        
                        Circle()
                            .fill(.white)
                        
                        Circle()
                            .strokeBorder(
                                LinearGradient(
                                    colors: [
                                        .white,
                                        .gray.opacity(0.4)
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                ),
                                lineWidth: 2
                            )
                        
                        Image(systemName: "bell")
                            .font(.system(size: 24))
                            .foregroundStyle(.black)
                        
                        Capsule()
                            .fill(.red)
                            .frame(width: 2, height: 6)
                            .offset(y: -4,)
                    }
                    .frame(width: 55, height: 55)
                    
                    
                    
                    
                    
                }
                
                HStack(spacing: 12) {
                    
                    // Search Bar
                    HStack(spacing: 10) {
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.gray)
                            .font(.system(size: 18))
                        
                        TextField("Search here...", text: $searchText)
                            .textInputAutocapitalization(.never)
                            .foregroundStyle(.black)
                            .tint(.black)
                    }
                    .padding(14)
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .shadow(
                                color: .black.opacity(0.12),
                                radius: 8,
                                x: 0,
                                y: 5
                            )
                    }
                    // Filter Icon
                    Image(systemName: "slider.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundStyle(.black)
                        .frame(width: 52, height: 52)
                        .background(.white)
                        .clipShape(Circle())
                        .shadow(
                            color: .black.opacity(0.15),
                            radius: 8,
                            x: 0,
                            y: 5
                        )
                }.padding(.vertical, 20)
                
                ZStack(alignment: .trailing) {
                    
                    // Outer Yellow Card
                    HStack(alignment: .center, spacing: 10) {
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("Get 50% OFF Today!")
                                .font(.headline)
                                .foregroundStyle(.white.opacity(0.9))
                            
                            Text("HOT DEAL OF THE MONTH")
                                .font(.title)
                                .foregroundStyle(.white)
                            
                            Text("Shop Now")
                                .foregroundStyle(.black)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 12)
                                .background(
                                    Color.white
                                )
                                .clipShape(RoundedRectangle(cornerRadius:25))
                                .overlay(
                                    RoundedRectangle(cornerRadius:25)
                                        .strokeBorder(Color.blue, lineWidth: 1)
                                        .allowsHitTesting(false)
                                )
                                .contentShape(Capsule())
                        }
                        
                        Spacer()
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity, minHeight: 140)
                    .background(.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    // Inner Image - Right Side
                    Image("frenchfry")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .offset(x:20, y: -25)
                }
                .padding(.top, 2)
                
                HStack(spacing: 16) {
                    
                    
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text("Mobile App Developer")
                            .font(.headline)
                        
                        Text("Flutter | Android | SwiftUI")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        
                        Text("Tamil Nadu, India")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    
                    ZStack {
                        
                        Circle()
                            .fill(.white)
                        
                        Circle()
                            .strokeBorder(
                                LinearGradient(
                                    colors: [
                                        .white,
                                        .gray.opacity(0.4)
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                ),
                                lineWidth: 2
                            )
                        
                        Image(systemName: "bell")
                            .font(.system(size: 24))
                            .foregroundStyle(.black)
                        
                        Capsule()
                            .fill(.red)
                            .frame(width: 2, height: 6)
                            .offset(y: -4,)
                    }
                    .frame(width: 55, height: 55)
                    
                    
                    
                    
                    
                }
                
                HStack(spacing: 16) {
                    Text("Categories")
                        .font(.title).bold().fixedSize()
                        .foregroundStyle(.black)
                    Spacer()
                    
                    Text("See all")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                
                ScrollViewReader { proxy in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(categories, id: \.self) { item in
                                Text(item)
                                    .foregroundStyle(.black)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 12)
                                    .background(
                                        selectedCategory == item
                                        ? Color.yellow
                                        : Color.white
                                    )
                                    .clipShape(RoundedRectangle(cornerRadius:15))
                                    .overlay(
                                        RoundedRectangle(cornerRadius:15)
                                            .strokeBorder(Color.yellow, lineWidth: 1)
                                            .allowsHitTesting(false)
                                    )
                                    .contentShape(Capsule())
                                    .id(item)
                                    .onTapGesture {
                                        selectedCategory = item
                                        
                                        withAnimation {
                                             proxy.scrollTo(item, anchor: .center)
                                        }
                                    }
                            }
                        }
                    
                        .padding(.top, 5)
                    }
                }
                
                HStack(spacing: 16) {
                    Text("Popular Dishes")
                        .font(.title).bold().fixedSize()
                        .foregroundStyle(.black)
                    Spacer()
                    
                    Text("See all")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
            
            }
            
            
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach($products) { $product in
                    VStack(alignment: .leading, spacing: 10) {
                        
                        // Header: Name + Heart Button
                        HStack(alignment: .center) {
                            Text(product.name)
                                .font(.system(size: 15, weight: .bold))
                                .foregroundStyle(.black)
                                .lineLimit(1)
                            
                            Spacer()
                            
                            Button {
                                withAnimation(.spring(response: 0.3, dampingFraction: 0.6)) {
                                    product.isFavourite.toggle()
                                }
                            } label: {
                                ZStack {
                                    Circle()
                                        .fill(.white.opacity(0.9))
                                        .frame(width: 32, height: 32)
                                        .shadow(color: .black.opacity(0.08), radius: 3, x: 0, y: 1)
                                    
                                    Image(systemName: product.isFavourite ? "heart.fill" : "heart")
                                        .font(.system(size: 15, weight: .semibold))
                                        .foregroundStyle(product.isFavourite ? .red : .gray)
                                }
                            }
                            .buttonStyle(.plain)
                        }
                        
                        // Food Image + Star Rating Overlay
                        ZStack(alignment: .bottomLeading) {
                            AsyncImage(url: URL(string: product.image)) { phase in
                                switch phase {
                                case .empty:
                                    Rectangle()
                                        .fill(Color.white.opacity(0.3))
                                        .overlay(ProgressView())
                                case .success(let image):
                                    image
                                        .resizable()
                                        .scaledToFill()
                                case .failure:
                                    Rectangle()
                                        .fill(Color.white.opacity(0.3))
                                        .overlay(
                                            Image(systemName: "fork.knife")
                                                .font(.system(size: 24))
                                                .foregroundStyle(.gray)
                                        )
                                @unknown default:
                                    EmptyView()
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 115)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            
                            // Rating pill
                            HStack(spacing: 3) {
                                Image(systemName: "star.fill")
                                    .font(.system(size: 9))
                                    .foregroundStyle(.orange)
                                Text(String(format: "%.1f", product.rating))
                                    .font(.system(size: 10, weight: .bold))
                                    .foregroundStyle(.black)
                            }
                            .padding(.horizontal, 7)
                            .padding(.vertical, 4)
                            .background(.white.opacity(0.92))
                            .clipShape(Capsule())
                            .shadow(color: .black.opacity(0.08), radius: 2, x: 0, y: 1)
                            .padding(6)
                        }
                        
                        // Footer: Calories + Price + Add (+) Button
                        HStack(alignment: .center) {
                            // Calories pill
                            HStack(spacing: 3) {
                                Image(systemName: "flame.fill")
                                    .font(.system(size: 11))
                                    .foregroundStyle(.red)
                                Text("\(product.calories) kcal")
                                    .font(.system(size: 10, weight: .bold))
                                    .foregroundStyle(.black.opacity(0.85))
                            }
                            .padding(.horizontal, 7)
                            .padding(.vertical, 5)
                            .background(.white)
                            .clipShape(Capsule())
                            
                            Spacer()
                            
                            // Price
                            Text("$\(Int(product.price))")
                                .font(.system(size: 14, weight: .heavy))
                                .foregroundStyle(.black)
                            
                            // Add button
                            Button {
                                // Add to cart
                            } label: {
                                Image(systemName: "plus")
                                    .font(.system(size: 11, weight: .bold))
                                    .foregroundStyle(.white)
                                    .frame(width: 26, height: 26)
                                    .background(Color.black)
                                    .clipShape(Circle())
                                    .shadow(color: .black.opacity(0.18), radius: 3, x: 0, y: 2)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(12)
                    .frame(maxWidth: .infinity)
                    .background(
                        LinearGradient(
                            colors: [
                                Color(red: 1.0, green: 0.84, blue: 0.22),
                                Color(red: 0.98, green: 0.76, blue: 0.12)
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
                    .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 4)
                }
            }
            
            
        }.padding(.horizontal, 16)
    }
            
}

#Preview {
    ContentView()
}



