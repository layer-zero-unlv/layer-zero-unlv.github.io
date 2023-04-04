---
layout: post
title:  "GWC x Layer Zero: Intro to JavaScript!"
date:   2023-03-09
excerpt: "Adding dynamic elements to our blog with JavaScript!"
image: "/images/gwc-javascript-sp23/cover.png"
---
# GwC x LayerZero Workshop

# Intro to JavaScript

Starting from where we left off last time, we will be adding some new features to our blog!

<div class="image main">
    <img src="/images/gwc-javascript-sp23/Screen Shot 2023-03-06 at 12.25.28 PM.png">
</div>

We’ll be adding a gallery to practice basic JavaScript and syntax, then we’ll implement form validations. Lastly, we’ll dynamically generate a list of blog posts.

Let’s get started!

## Gallery

```jsx
<div id="gallery-container" class="row">
  <button id="left-gallery-btn" class="no-border-btn">
    <span class="material-symbols-outlined">chevron_left</span>
  </button>
  <img src="https://cdn.glitch.global/27d49e26-bb3f-4769-be6a-4b325efc5164/isabelle%20in%20dress.jpg?v=1676262155808"/>
  <button id="right-gallery-btn" class="no-border-btn">
    <span class="material-symbols-outlined">chevron_right</span>
  </button>
</div>
```

In our `index.html`, we have this bit of code that displays a left arrow, and image, and then a right arrow. 

Pay attention to the identifier of the buttons, `left-gallery-btn` and `right-gallery-btn`. We have previously been using these identifiers to help us change how it looks with CSS, but we can also use these identifiers to dictate what the buttons will do using JavaScript.

Create a new file `script.js` inside the `js` folder. 

<aside>
💡 Naming a file with a `.js` file extension will automatically allow JavaScript code in a webpage.

</aside>

Before we start coding, let’s go over some basic JavaScript syntax.

### JavaScript Basics & Syntax

**Variables** can be declared using the following keywords:

| Keyword | Description | Usage |
| --- | --- | --- |
| let | Allows for reassignment and are only available inside the block where they’re defined. | var x = 5;
var y = 6;
var z = x + y; |
| var | Allows for reassignment and are available throughout the function in which they’re declared. | let x = 5;
let y = 6;
let z = x + y; |
| const | Variables cannot be redeclared | const x = 5; |

<aside>
💡 If you want a general rule: always declare variables with `const`.

If you think the value of the variable can change, use `let`.

</aside>

******************Functions****************** ins JavaScript can be declared in 2 ways:

| Type | Description | Usage |
| --- | --- | --- |
| Function Syntax | Similar to other languages | hello = function() {
     return "Hello World!";
} |
| Arrow Function Syntax | Allow us to write shorter function syntax | hello = () => {
     return "Hello World!";
} |

### DOM Review

Another important concept to remember is the ********DOM********, or the Document Object Model.

When an HTML document is loaded into a web browser, it becomes a **document object**. The **document object** is the root node of the HTML document and is a property of the **window object**.

The **document object** is accessed with: `window.document` or just `document`. 

From there, we can manipulate different HTML elements using different document object properties and methods.

An extensive list of properties can be found here: 

[Document - Web APIs | MDN](https://developer.mozilla.org/en-US/docs/Web/API/Document)

Now that we have some basics, let’s create a gallery.

1. Create an array of strings that hold different image sources. These will be the different profile pictures.
    
    ```jsx
    const imageSources = 
    	['<img source 1'>, 
    	 '<img source 2'>, 
    	 '<img source 3'>
    	 ];
    ```
    
2. Create a `const` variable for the HTML elements with the id `left-gallery-btn` and `right-gallery-btn` using a `querySelector`. 
    
    <aside>
    💡 With a **querySelector** statement, you can select an element based on a CSS selector. This means you can select elements by ID, class, or any other type of selector
    
    </aside>
    
    ```jsx
    const leftGalleryBtn = document.querySelector('#left-gallery-btn');
    const rightGalleryBtn = document.querySelector('#right-gallery-btn');
    ```
    
3. We want to manipulate the `src` attribute of the image so let’s create another `const` variable for the `img` container inside the `profile` div.
    
    ```jsx
    const imageElement = document.querySelector("#profile img");
    ```
    
4. We want to fire a function each time the right button is clicked. Add a `click` event listener to right`GalleryBtn`. Console log a statement.
    
    ```jsx
    rightGalleryBtn.addEventListener('click', () => {
    	console.log("right gallery button clicked!");
    });
    ```
    
5. When we click the right button, we want to replace the profile image with another image. 
    1. Create function that can cycle through the array of image sources when the button is clicked.
    2. Replace the `src` attribute in the `<img>` by using another method `setAttribute()`, where the first parameter is the name of the attribute you’d like to set and the second parameter is the value.
        
        ```jsx
        let currImageSourceIdx = 0;
        rightGalleryBtn.addEventListener('click', () => {
          currImageSourceIdx++;
          if(currImageSourceIdx >= imageSources.length){
            currImageSourceIdx = 0;
          }
          imageElement.setAttribute('src', imageSources[currImageSourceIdx]);
        });
        ```
        
    
    5. Repeat (4) and (5) for the `leftGalleryBtn`
    

You should have a working gallery now!

## Contact Form

The HTML code can be found at `contact.html`.

<div class="image main">
    <img src="/images/gwc-javascript-sp23/Screen Shot 2023-03-06 at 1.19.06 PM.png">
</div>

 We’ll be implementing simple form validation to this page using JavaScript.

1. Create a new file `contact.js` inside the `js` folder.
2. Create a `const` variable for the following:
    
    `#submit-contact-btn` (variable name*: submitBtn*)
    
    `input[name="name-input"]` (variable name: *nameInput*)
    
    `textarea[name="message"]` (variable name: *messageInput*)
    
3. Add a `click` event listener to the `submitBtn`.
    
    You may have noticed that clicking the submit button after entering some text in the textboxes reloads the page. By default, the form is automatically being submitted when we click submit. In order to add form validation **before** the form is submitted, we will need to use the method `Event.preventDefault()`. 
    
    ```jsx
    submitBtn.addEventListener('click', (e) => {
      e.preventDefault();
    });
    ```
    
4. After we type a name and message into the text input fields, we can retrieve that inputted data through the method:
    
    `document.getElementById('textbox_id').value`. 
    
    Since we already declared a variable for the nameInput and messageInput, we can get the value of those boxes with:
    
    ```jsx
    let nameValue = nameInput.value;
    let messageValue = messageInput.value;
    ```
    

Now that we’ve set it all up, let’s add the actual validation.

Follow the following validation rules:

1. If the name is empty, fire an alert that says “Name cannot be blank!”.
2. If the message is empty, fire an alert that says “Message cannot be blank!”.

```jsx
if(nameValue == ""){
  alert('Name cannot be blank!');
  return;
}
```

Try the adding the message validation yourself!

## Dynamic Blog Posts

Instead of hardcoding in every single blog post, it would be more convenient for the code to update itself! For this reason, we’ll be implementing a dynamic list of blog posts.

1. Let’s create a list of blog posts that have descriptions. We will display these blog posts on the homepage.
    
    ```jsx
    const blogPostsList = [
      {
        'title': 'Girls Who Code Blog Post',
        'date': '2023-02-07',
      },
      {
        'title': 'Layer Zero Blog Post',
        'date': '2023-02-21',
      },
    	...
    ]
    ```
    
2. Create a `const` variable that acts as a container for the div `id="blog-posts"`.
    
    ```jsx
    const blogPostsContainer = document.getElementById('blog-posts-list');
    ```
    
    <aside>
    💡 Note: There are different ways to get an element by CSS selector, such as **`getElementById()`** and `**getElementsByClassName()`.** The flexibility and consistency of **`querySelector()`** make it easy to remember, but generally, you should opt for the selector that most clearly gets the job done.
    
    </aside>
    
3. Iterate through the list of blog posts. For each blog post in the list, use the method `createElement()` to create new list items to display our blog posts and add it to our `blogPostsContainer`.
    
    ```jsx
    for(let index in blogPostsList){
      let currentPost = blogPostsList[index];
      
      let newPost = document.createElement('li');
    	blogPostsContainer.appendChild(newPost);
    }
    ```
    
4. Nothing appears! It’s because we only created list items with no text inside. Change the text of inside `<li>` using `innerHTML`.
    
    ```jsx
    
    for(let index in blogPostsList){
      let currentPost = blogPostsList[index];
      
      let newPost = document.createElement('li');
    	newPost.innerHTML = currentPost['date'] + ': ' + currentPost['title'];
    	blogPostsContainer.appendChild(newPost);
    }
    ```
    

And there you have it!

<div class="image main">
    <img src="/images/gwc-javascript-sp23/Screen Shot 2023-03-06 at 1.57.11 PM.png">
</div>
