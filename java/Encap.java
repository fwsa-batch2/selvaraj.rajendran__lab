
public class Encap {

  private  int a;

public int getA() {
    return a;
}

public  void setA(int a) {
    this.a = a;
}
 
public static void main(String[] args) {

Encap myobj = new Encap();
myobj.setA(5);
System.out.println(myobj.getA());
    
    
}
}
