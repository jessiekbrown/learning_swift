var englishText = "this is a secret message"

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

// Add your code below 🤫

var letterToMorse = [
  "a" : ".-",
  "b" : "-...",
  "c" : "-.-.",
  "d" : "-..",
  "e" : ".",
  "f" : "..-.",
  "g" : "--.",
  "h" : "....",
  "i" : "..",
  "j" : ".---",
  "k" : "-.-",
  "l" : ".-..",
  "m" : "--",
  "n" : "-.",
  "o" : "---",
  "p" : ".--.",
  "q" : "--.-",
  "r" : ".-.",
  "s" : "...",
  "t" : "-",
  "u" : "..-",
  "v" : "...-",
  "w" : ".--",
  "x" : "-..-",
  "y" : "-.--",
  "z" : "--.."
]

var morseToLetter: [String: String] = [:]

for (letter, value) in letterToMorse{
  morseToLetter[value] = letter
}

var myLetter = morseToLetter["--"] 
var converted = ""

if myLetter != nil{
  converted = myLetter!
}else{
  converted = ""
}

var currChar    = "";
var prevChar    = "";
var tripleSpace = false;
var currLetter  = "";
var message     = "";
var testMe : String?;

for charAsChar in secretMessage {
  currChar = String(charAsChar)
  if currChar == " "{
    if prevChar != " "{
      testMe = morseToLetter[currLetter]
      if testMe != nil {
        message += testMe!
      }
      testMe      = "";
      currLetter  = "";
      tripleSpace = false;
    }else if prevChar == " " && tripleSpace == false{
      message += " "
      tripleSpace = true
    }
  }
  else {
    currLetter += currChar;
  }
  prevChar = currChar
}

message += String(morseToLetter[currLetter]!)
//print(message)

var asMorseCode: String = "";
var addMe:String        = "";

for charAsChar in englishText{
  currChar = String(charAsChar)
  if currChar == " "{
    asMorseCode += "   "
  }else{
    addMe = letterToMorse[currChar]!
    asMorseCode += addMe + " "
  }
}

print(asMorseCode)


