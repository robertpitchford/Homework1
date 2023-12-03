import SwiftUI

struct ContentView: View {
  @State private var redValue = 75.0
  @State private var greenValue = 150.0
  @State private var blueValue = 200.0

  @State private var cpRed = 75.0 / 255
  @State private var cpGreen = 150.0 / 255
  @State private var cpBlue = 200.0 / 255
  

  var body: some View {
    VStack {
      Text("Color Picker")
        .font(.title)
      RoundedRectangle(cornerRadius: 0)
        .fill(Color(red: cpRed, green: cpGreen, blue: cpBlue))
      Text("Red")
      HStack {
        Slider(value: $redValue, in: 0.0...255.0)
        Text("\(Int(redValue.rounded()))")
      }
      Text("Green")
      HStack {
        Slider(value: $greenValue, in: 0.0...255.0)
        Text("\(Int(greenValue.rounded()))")
      }
      Text("Blue")
      HStack {
        Slider(value: $blueValue, in: 0.0...255.0)
        Text("\(Int(blueValue.rounded()))")
      }
      Button("Set Color") {
        cpRed = redValue / 255
        cpGreen = greenValue / 255
        cpBlue = blueValue / 255
      }
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
