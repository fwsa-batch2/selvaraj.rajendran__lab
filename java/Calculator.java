import java.util.function.DoubleToLongFunction;

public class Calculator {
    
    public static void main (String [] args){

    //    Scanner scan = new Scanner(System.in);

    //    System.out.println("choose a operator");

    //    int operator = scan.nextInt();

    //    System.out.println("Enter two numbers to do calculation ");


    //    int x = scan.nextInt();
    //    int y = scan.nextInt();v b                                                                                                                                                                                                                                                                                                                                                                                               bvvbvbbbbbbbvbbb                                                                                                                                                                                                                                                                                                        

    int x = 4;
    int y = 3;

    System.out.println( x +"+"+y +"="+ add(x, y));
    System.out.println( x +"+"+y +"="+ sub(x, y));
    System.out.println( x +"+"+y +"="+ multiply(x, y));
    System.out.println( x +"+"+y +"="+ divide(x, y));
    exe(x,y);
    }


    public static int add(int x ,int y) {
        
        int sum = x + y;
        return sum;
        
    }

    public static int sub(int x ,int y) {
        
        int sum = x - y;
        return sum;
        
    }
    public static int multiply(int x ,int y) {
        
        int sum = x * y;
        return sum;
        
    }
    public static int divide(int x ,int y) {
        
        int sum = x / y;
        return sum;
        
    }
    public static double exe(int x, int y) {
        Double num1 = Math.sqrt((x*x)+(y*y));


        System.out.println("the hypotenuse is "+num1);

         return num1;
        
    }
}
