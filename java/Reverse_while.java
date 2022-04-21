public class Reverse_while {
    
    public static void main(String[] agrs) {

int num1 = 1234;
 int rem = 0;

 while(num1 > 0){
     rem = num1 % 10;
     int rev = 0 * 10 + rem;
     num1 = num1 / 10;
 }

 System.out.println(num1);
    }
}
