public class Banking {
    public static void main(String[] args) {
        
        encap obj = new encap();

        obj.set("meenu");
       obj.get();
    }
    



}


class encap{

    private String name;

    public void set(String name){

        this.name = name;
        System.out.println(name);

    }

    public String get(){

        return name;

    }

}
