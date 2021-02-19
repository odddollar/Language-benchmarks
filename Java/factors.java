import java.time.Instant;

public class factors {
    public static void main(String[] args) {
        int num = 2000000000;
        long time1 = Instant.now().getEpochSecond();

        for (int i = 1; i <= num; i++) {
            if (num % i == 0 ) {
                System.out.println(i + " is a factor of " + num);
            }
        }

        long time2 = Instant.now().getEpochSecond();
        long performance = time2 - time1;
        System.out.println("Time taken: " + performance + " s");
    }
}
