// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].
// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").className = "done";

// Release 1:
document.getElementById("release-1").style.display = "none";

// Release 2:
document.getElementById("release-1").style.display = "none";

// Release 3:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";

// Release 4:
document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5:
var change = document.getElementsByClassName("release-4");
for (var i = 0; i < change.length; i++) {
    change[i].style.fontSize = "2em";
}

//Release 6:
var template = document.getElementById('hidden');
document.body.appendChild(template.content.cloneNode(true));


// Reflection
// What did you learn about the DOM?
//  I had some familiarity with the DOM from previous projects, but the DOM stands for Document Object Model and works like a giant tree with nodes for each HTML element. The thing that I actually learned during this challenge and that was the hardest to wrap my head around was that getElementsByTagName and getElementsByClassName return what is basically an array. By saving it as a variable, we can treat it like any other array object -- calling individual elements from it by index, even iterating over it.
// What are some useful methods to use to manipulate the DOM?
//  Once you've used the document methods like getElementById or getElementsByClassName to actually access the element, you can use .style access the style property for the element and make updates to the CSS. You can also use .innerHTML to update the entire HTML content of the element.