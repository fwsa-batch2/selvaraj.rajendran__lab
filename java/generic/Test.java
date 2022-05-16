package generic;

public  class Test<T> {

    private T t;

    public  void set(T t){
    
    this.t = t;     
    }
     
    public  T get(){
        return t;
    }
    
    public static void main(String[] args) {
        
        Test<String> name = new Test<>();
        Test<Integer> number = new Test<>();

       name.set("Ace");
       name.set("selva");
       number.set(123456789);

        System.out.print(name.get()+"- ");
        System.out.println(number.get());
    
    }


}

