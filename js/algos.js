=begin
 Longest Word
Set a temporary longest variable to the first word in the array
 Using .length on each string, compare each string to the temporary longest
 if the next word is longer, set the next word as temporary longest
repeat until all words have been checked
 return the temporary longest
=end

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
