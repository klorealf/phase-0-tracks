/*begin
 Longest Word
Set a temporary longest variable to the first word in the array
 Using .length on each string, compare each string to the temporary longest
 if the next word is longer, set the next word as temporary longest
repeat until all words have been checked
 return the temporary longest
*/

function findLongest(ary){
	var length = 0;
	
	for (var i = 0; i < ary.length; i++){
		if (ary[i].length > length){
			var length = ary[i].length;
			var longestWord = ary[i];
		}
	}
	return longestWord;
}

console.log(findLongest(["small string", "longest craziest string", "medium string", "string"]));

/*
declare a function with two parameters
each of
 them should be objects
within the function iterate through one of the object params keys to see if it shares any key-value pairs with the second
If it does, return true.
If it doesn't share any keys with the second object return false.
*/
function matches(obj1, obj2){

	for(var key in obj1){
		if(obj1[key] == obj2[key]){
			return true;
		}
	}
	return false;
}



