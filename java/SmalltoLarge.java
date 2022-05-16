public class SmalltoLarge {
    
    public static void main(String[] args) {
        
        int numbers[] = new int[]{300,3,4,5,6,8,9,20};

        int smallest = numbers[0];
        int largetst = numbers[0];

           for (int i = 1; i < numbers.length; i++) {
           if (numbers[i] > largetst)
             largetst = numbers[i];
            else if (numbers[i] < smallest)
             smallest = numbers[i];
  }

  System.out.println("largest    =" +largetst+"  smallest   ="+smallest);

    }
}
