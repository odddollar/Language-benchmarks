import java.time.Instant;

public class fibonnaci {

    public static long fib(int n) {
        if (n <= 1) {
            return n;
        } else {
            return fib(n - 1 ) + fib (n - 2);
        }
    }

    public static void main(String[] args) {


        long time1 = Instant.now().getEpochSecond();

        for (int i = 1; i <= 50; i++) {
            System.out.println(i + " " + fib(i));
        }

        long time2 = Instant.now().getEpochSecond();
        long performance = time2 - time1;
        System.out.println("Time taken: " + performance + " s");
    }
}
