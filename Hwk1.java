import java.io.*;

public class Hwk1 {

    public static Integer checkVowel(char letter) {
        if (letter == 'a' || letter == 'e' || letter == 'i' || letter == 'i' || letter == 'o' || letter == 'u') {
            return 1;
        }
        return 0;
    }

    public static Integer checkVowels(char[] letters, int pos) {
        if (pos >= letters.length || letters[pos] == 's' || letters[pos] == ' ') {
            return 0;
        }
        return checkVowel(letters[pos]) + checkVowels(letters, pos + 1);
    }

    public static Integer checkConst(char letter) {
        if (checkVowel(letter) == 0) {
            return 1;
        }
        return 0;
    }

    public static Integer checkConstants(char[] letters, int pos) {
        if (pos >= letters.length || letters[pos] == 's' || letters[pos] == ' ') {
            return 0;
        }
        return checkConst(letters[pos]) + checkConstants(letters, pos + 1);
    }

    public static void countLetters(char[] phrase) {
        System.out.println("Number of vowels " + checkVowels(phrase, 0));
        System.out.println("Number of Constonants" + checkConstants(phrase, 0));
    }

    public static void main(String args[]) throws IOException {
        System.out.println("Enter a sequence of code");
        countLetters(new BufferedReader(new InputStreamReader(System.in)).readLine().toCharArray());

    }
}