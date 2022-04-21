public class factorial {
    
    public static void main(String[] args) {
        System.out.println(" find the factorial of ");
        int n=8 ,fact=1;

        for (int i = 1; i <=n; i++)
        {
            fact = fact*i;
        }
        
        System.out.println("factorial of n is " +fact);
    }
}
