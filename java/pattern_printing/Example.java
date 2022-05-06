
import java.io.ObjectInputStream.GetField;

public class Example {
    public static void main(String[] args) {
        
        Student obj = new Student();

        System.out.print(obj);
    }
    
}

class Student{
     int age;
    public String name;
    Student(){
        int abc = 2;

        System.out.println(abc);

    }

    Student(String name, int age){

        this.name = name;
        this.age = age;

    }
}

class College{
    public String name;
    
    

}

