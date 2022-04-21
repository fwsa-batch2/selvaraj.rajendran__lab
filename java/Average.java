public class Average {
 
    public static void main(String[] args) {
        //numbers
        int[] nums = {1, 2, 3, 4, 5, 6};
        float sum = 0;
         
        //compute sum
        for(int num:nums)
            sum += num;
         
        //compute average
        float average = (sum / nums.length); 
         
        System.out.println("Average : "+average);
    }
}