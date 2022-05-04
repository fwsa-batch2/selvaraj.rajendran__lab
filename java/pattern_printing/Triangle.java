package pattern_printing;

public class Triangle {

    public static void main(String[] args) {
        
        for(int i = 0;i <5;i++)     // i=0(j=1),i=1(j=12)....i=4)
        {
         
            for(int j = i; j < 5;j++){
                System.out.print("*");
            }
            System.out.println("");
        }

       
    }
    
}


