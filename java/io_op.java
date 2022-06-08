import java.rmi.server.SocketSecurityException;

public class io_op {

    public static void main(String[] args) {
        
        String namer = "";
        String name = "madam maha";
        System.out.println(name);

           
    int length = name.length();
    System.out.println(length);

     for (int i = 0;i < length;i++){

       Character str = name.charAt(i);

     namer = str + namer;
     }

System.out.println(namer);
    }
    
    
}
