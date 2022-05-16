import java.util.Scanner;

public class OddOrEven {
     public static void main(String[] args) {
         Scanner input = new Scanner(System.in);
         System.out.println("Enter a number to find it is even or odd");


        int num1 = input.nextInt();

        if (num1 % 2 == 0 ){
            System.out.println(num1+ "  is even number");

        }
        else{
            System.out.println("it is odd number");

        }

        input.close();
        
   
    }
}
