
a) Describe the two size classes in iOS.
    verticalSizeClass and horizontalSizeClass
    
b) What is Continuous Learning, and why is it important in mobile development?
  Continuous learning is the process of keeping up to date with new technologies and best practices. Mobile development is a young discipline and new things are being invented all the time. It is important to practice Continuour Learning otherwise you may get left behind.
  
c) How can you find out what modifiers a View has?
  You can use the Object Library, autocomplete, or the Apple documentation
  
d) What is a breakpoint?
  A breakpoint is an instruction to pause execution in the debugger
  
e) How can you access environment values in your App?
  Using the @Environment property wrapper
  
f) How can you determine, in code, if the App is in Dark or Light Mode?
  Using the .colorScheme Environment property
  
g) Why are magic numbers an issue, and how should you avoid them?
  Magic numbers cannot infer intent and become a problem during maintenance if a value needs to be changed - is the "1" over here the same as the "1" over there?
  Named constant should be used instead of magic numbers

h) How can you view your App in Light and Dark Modes simultaneously?
  You can provide two previews, or you can use the Color Scheme Variants layout option
  
i) Below is an image of the Canvas from Xcode. The Canvas is in selectable mode. Can you explain why the red background does not cover the entire button area?
  The blue border can indicate that padding has been added *after* the color was applied. To fill the blue area with red the color should be applied after the padding

j) Modifier padding(10) adds padding to the view's top, bottom, left, and right sides. How could a padding of 10 be added to only the left and right sides of the view? The answer for this question should be a short section of code.
  MyView()
    .padding(.horizontal, 10)
  
k) Provide two reasons why you would want to extract views.
  To keep the code short and easy to read; to generate reusable views
  
l) How can you determine, in code, if the device is in Portrait or Landscape mode?
  You can check the size classes and see which is compact and which is regular
  
m) What is a literal value?
  A value like, 1, "literal", or [] that can be assigned directly to a variable
  
o) What are the safe areas?
  Borders defined by Apple around the edges of the screen indicating where the notch and other system elements are located
  
p) This line of code was in the lesson on animation. Can you state in English what the line means?
.frame(width: wideShapes ? 200 : 100)
  This sets the frame of a View dependenct upon the value of the wideShapes variable. If it is true then the width is 200, otherwise it os 100
  
q) Describe the two transitions you were introduced to in this week’s lesson.
  I don't recall any transitions - is this the animations when showing the Points view and the Leaderboard view?

r) In Bullseye, the Game struct is what type of object?
  The Game struct is a Model object
  
s) What are SFSymbols?
  A library of symbols provided by Apple for use in iOS applications
  
t) What is the difference between “step into” and “step over " in the debugger?”
  Step Into will enter into a function call an allow you to step through the function; step over will execute the function and then continue the debug session at the point where the function returns
  
u) Name some items you would place in the Asset Catalog (Assets.)
  Colors, images, and icons
  
v) How do you change the Display Name of your app?
  Edit the Display Name in the General settings of the project
