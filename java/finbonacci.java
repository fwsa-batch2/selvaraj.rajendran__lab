public class finbonacci {
     public static void main(String[] args) {
         int num1 = 1,num2 = 2,num3,loopcount = 10;
         

         for (int i = num2;i< loopcount; i++){
          num3 = num1 + num2;
          System.out.println( num1+"+"+num2+"="+num3);
          num1 = num2;
          num2 = num3;


         }
        





        
    }
}
