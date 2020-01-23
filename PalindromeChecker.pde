public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  word = noCapitals(word);
  word = noSpaces(word);
  word = onlyLetters(word);
  for(int i = 0;i<word.length();i++){
    if(word.charAt(i)!=word.charAt(word.length()-1-i)) return false;
  }
  return true;
}
//I implemented palindrome without using reverse on codingbat
public String reverse(String str)
{
  String ret = "";
  for(int i = str.length()-1;i>=0;i--){
    ret+=str.charAt(i);
  }
  return ret;
}
public String noCapitals(String sWord){
  String ret = "";
  for(int i = 0;i<sWord.length();i++){
    ret+=Character.toString(sWord.charAt(i)).toLowerCase();
  }
  return ret;
}
public String noSpaces(String sWord){
  String ret = "";
  for(int i = 0;i<sWord.length();i++){
    if(sWord.charAt(i)!=' ') ret+=sWord.charAt(i);
  }
  return ret;
}
public String onlyLetters(String sString){
  String ret = "";
  for(int i = 0;i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i))) ret+=sString.charAt(i);
  }
  return ret;
}
