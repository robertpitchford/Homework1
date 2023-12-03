a) What does the command ‘git status’ output? _shows the current working branch, and shows the state of uncommitted files_ 

b) In SwiftUI, anything that gets drawn on the screen is a _View_.

c) print(“Hello world”) is an example of a _function_ call.

viewModel.getData() is an example of a _method_ call.

d) Name some Views you have seen so far in SwiftUI. _ContentView, VStack, Button, Slider_,

e) How do you create a new local repository using git? (Feel free to answer with how you use git, i.e. terminal or another app) 
_git init_

f) How do you preview your app in multiple orientations? _You can enter the orientation in code, use the device settings in the Preview Window, or using the Variants button, also in the Preview Window_

g) An app is made up of _many_ classes and structs that contain _methods_  and _data_.

h) Name two components of a SwiftUI Button. _The label and the closure containing the button's action_

i) In git, what is the difference between a local repository and a remote repository? 
_a local repo exists on a single machine, but a remote repo lives on some shared computer or cloud resource. Files can be pushed from the local repo to the remote, and pulled form the remote repo to the local. Multiple team members collaborate via the remote repo_

j) Give an example of camel case. _camelCase_

k) What is a branch in git, and how do you create one? (Feel free to answer with how you use git, i.e. terminal or another app) 
_a branch is a label pointing to a specific commit. When changes are committed the label for the current branch moves to point to this new commit. Branches can be used to track different work, like feature branches, independently from each other. A branch can be created on the command line using `git branch <new branch name>`_

l) What are some common mistakes that can lead to errors while programming? 
_typos, unmatched braces or parentheses, logic errors_

m) VStack, HStack, and ZStack are _container_ views used for _containing other Views and arranging them vertically, horizontally or on top of each other, respectively_.

n) How do you list the branches on your local repository? (Feel free to answer with how you use git, i.e. terminal or another app) 
_git branch_

o) What happens when @State variable changes in SwiftUI? 
_any Views that reference that state variable are redrawn_

p) What is the Single Responsibility Principle? 
_Splitting up code into smaller pieces that do one job_

q) What will the print statement below produce?

var name = “Ozma”

print(“Hello, \(name)!”)

_Hello, Ozma!_

r) What commands can you use in git to download data from a remote repository? What commands can you use in git to send data to a remote repository? (Feel free to answer with how you use git, i.e. terminal or another app) 
_git fetch, git pull; git push_

s) Why is a programming To-Do list important, and what is a minimum viable product?
_A ToDo list breaks the project down into multiple small, achievable steps and helps you reason about the required functionality. Making it a ToDo list means you can check off items as you complete them and you won't forget anything._
_A minimum viable product contains the basic functionality of the app with minimal styling. It is a early deliverable that can be used to work out technical issues and get early feedback on the product_

t) What is a simple way of describing Binding in SwiftUI?
_a Binding is a two-way link between a model property or View state and a value within a View. Chnages in one affect the other automatically_

u) What command do you use in git to move changes from one branch to another? (Feel free to answer with how you use git, i.e. terminal or another app) 
_git merge_

v) What is the type of the variable defined below?

var a = 87

_an Int_

w) What is the difference between var and let?

_var defines a mutable variable and let is used to define an immutable constant_


# Above & Beyond

In ContentView, lines 1 and 2 show the definition of _State Properties_.
In ContentView, line 3 shows the definition of a      _private Property_.
In ContentView, line 4 shows the definition of a     _computed Property_.
In ContentView, line 5 shows an   _instance_ of Game calling the _method_ points.
In ContentView, line 6 is the definition of the _Method_  doSomethingWithCounter().
In Game, lines a, b, and c show the definition of   _public properties_.
In Game, line d is the definition of the   _method_ points(sliderValue: Int).
Lines 3, a, b, and c are the   _instance Properties_ and lines 6 and d are the   _methods_ of the structs.
