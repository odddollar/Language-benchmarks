import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

public class primes {

    public static void main(String[] args) {


        long time1 = Instant.now().getEpochSecond();
        List<Integer> primes = new ArrayList<Integer>();
        for (int i = 0; i < 15000; i++) {
            List<Integer> factors = new ArrayList<Integer>();

            for (int j = 1; j <= i; j++) {
                if (i % j == 0) {
                  factors.add(j);
                }
            }

            if (factors.size() == 2) {
                primes.add(i);
            }
        }
        System.out.println(primes);
        long time2 = Instant.now().getEpochSecond();
        long performance = time2 - time1;
        System.out.println("Time taken: " + performance + " s");
    }
}
