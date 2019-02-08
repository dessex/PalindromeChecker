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
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String s ="";
  for (int i=0;i<sWord.length();i++){
    if(Character.isLetter(sWord.charAt(i))==true){
      s=s+sWord.substring(i,i+1);
    }
  }
  return s;
}

public boolean palindrome(String word)
{
  String bob = "";
  int last = word.length()-1;
  for(int i=last;i>=0;i--){
    bob=bob+word.substring(i,i+1);
  }
  word = noSpaces(word);
  word = noCapitals(word);
  bob = noSpaces(bob);
  bob = noCapitals(bob);
  if (word.equals(bob)){
    return true;
  }
  return false;
}
