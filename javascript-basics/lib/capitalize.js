const capitalize = (word) => {
  const firstChar = word[0].toUpperCase();
  const remainingChar = word.substring(1).toLowerCase();
  // return `${firstChar}${remainingChar}`;
  return firstChar + remainingChar;
}

console.log(capitalize('tomas'));
console.log(capitalize('TOMAS'));
console.log(capitalize('i love javascript'));
