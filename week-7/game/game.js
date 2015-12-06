 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: You are a dog who is pulling off a spaghetti heist. You must escape with as much pasta as possible before the pasta police can arrest you.
// Overall mission: To gather up spaghetti as quickly as possible while avoiding the police.
// Goals: Get spaghetti.
// Characters: Player, Pasta Police,
// Objects: Spaghetti plate,
// Functions: Player move, police move, pickup pasta, display level to screen

// Pseudocode
//  Create a container for all the squares of a game level.
//  Fill the container with blank squares.
//  Create a player object and place it on a blank square.
//  Create a cop object and place it on a blank square.
//  Create a spaghetti object and place it on a blank square.
//  Iterate through the container for the level, displaying each value to the screen.
//  Move the player by adding or subtracting from the x or y value.
//  Then move the cop by checking the distance from the player and moving to close the gap.
//  If the player moves onto the spaghetti square, the player eats the spaghetti.
//  If the cop moves adjacent to the player, the player is arrested.

// Initial Code


// This function generates an empty level tabular array and then populates it with the player, a plate of spaghetti, and the cop.
function createLevel(){
  var levelWidth = 8;
  var levelHeight = 8;
  var level = [];
  for (var row = 0; row < levelHeight; row ++){
    var temp_row = [];
    for (var square = 0; square < levelWidth; square++) {
      temp_row.push(0);
    }
    level.push(temp_row);
  }
  level[player.yPos][player.xPos] = "@";
  level[cop1.yPos][cop1.xPos] = "C";
  level[spaghetti1.yPos][spaghetti1.xPos] = "S";
  return level;
}

var player = {
  xPos: 7,
  yPos: 7,
};

function Spaghetti(xPos, yPos, pasta){
  this.xPos = xPos;
  this.yPos = yPos;
  this.pasta = pasta;
}

function Cop(xPos, yPos, speed){
  this.xPos = xPos;
  this.yPos = yPos;
  this.speed = speed;
}

// Displays Level to Console
// Moves through the level array and concatenates a string to display to console.
function displayLevel(level){
  toDisplay = "";
  for (row= 0; row < level.length; row++){
    for (square = 0; square < level[row].length; square++){
      switch(level[row][square]) {
        case 0:
          toDisplay += ".";
          break;
        case "@":
          toDisplay += "@";
          break;
        case "C":
          toDisplay += "C";
          break;
        case "S":
          toDisplay += "S";
          break;
      }
    }
    toDisplay += "\n";
  }
  console.log(toDisplay);
}

// Cop Movement
// If the cop is further away on the x-axis the cop moves closer on that axis, otherwise moves closer on the y-axis.
function copMove(cop){
  if (Math.abs(cop.xPos - player.xPos) <= Math.abs(cop.yPos - player.yPos)){
      level[cop.yPos][cop.xPos] = 0;
      if (cop.xPos > player.xPos){
        cop.xPos -= 1;
      }
      else {
        cop.xPos += 1;
      }
      level[cop.yPos][cop.xPos] = "C";
      catchDog(cop);
  }
    else{
        level[cop.yPos][cop.xPos] = 0;
        if (cop.yPos > player.yPos){
          cop.yPos -= 1;
        }
        else {
          cop.yPos += 1;
        }
        level[cop.yPos][cop.xPos] = "C";
        catchDog(cop);
    }
}

// If the cop is ever adjacent to the player, the cop arrests the player and the game ends.
function catchDog(cop){
    console.log(Math.abs(player.xPos - cop.xPos));
    console.log(Math.abs(player.xPos - cop.xPos));
  if (Math.abs(player.xPos - cop.xPos) == 1 && Math.abs(player.yPos - cop.yPos) == 1){
    console.log("Ya Busted!");
  }
}

function eatSpaghetti(spaghetti){
  if (player.yPos == spaghetti.yPos && player.xPos == spaghetti.xPos){
    console.log("Yum, yum! I love that spaghetti!");
  }
}

// Player Movement Functions
function moveUp() {
  if (player.yPos - 1 >= 0){
    level[player.yPos][player.xPos] = 0;
    player.yPos -= 1;
    level[player.yPos][player.xPos] = "@";
  }
  eatSpaghetti(spaghetti1);
}

function moveDown() {
  if (player.yPos + 1 < level.length){
    level[player.yPos][player.xPos] = 0;
    player.yPos += 1;
    level[player.yPos][player.xPos] = "@";
  }
  eatSpaghetti(spaghetti1);
}

function moveRight() {
  if (player.xPos + 1 < level[0].length){
    level[player.yPos][player.xPos] = 0;
    player.xPos += 1;
    level[player.yPos][player.xPos] = "@";
  }
  eatSpaghetti(spaghetti1);
}

function moveLeft() {
  if (player.xPos - 1 >= 0){
    level[player.yPos][player.xPos] = 0;
    player.xPos -= 1;
    level[player.yPos][player.xPos] = "@";
  }
  eatSpaghetti(spaghetti1);
}

// console.log(displayLevel(level));
var cop1 = new Cop(4,4,1);
var spaghetti1 = new Spaghetti(1,1,1);
level = createLevel();
displayLevel(level);
moveUp();
copMove(cop1);
displayLevel(level);
moveLeft();
copMove(cop1);
displayLevel(level);
moveUp();
copMove(cop1);
displayLevel(level);
moveUp();
copMove(cop1);
displayLevel(level);
moveUp();
copMove(cop1);
displayLevel(level);
moveLeft();
copMove(cop1);
displayLevel(level);

// displayLevel(level);
// moveRight();
// displayLevel(level);
// copMove(cop1);
// displayLevel(level);


// Refactored Code






// Reflection
//What was the most difficult part of this challenge?
// What did you learn about creating objects and functions that interact with one another?
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// How can you access and manipulate properties of objects?
//
//
//
//
//
//