public class DieRunner {
    public static void main(String[] args) {
        Die d1 = new Die(6);
        int sum = 0;
        for (int i = 0; i < 10000; i++) {
            sum += d1.roll();
        }
        System.out.println((float) sum / 10000);

        Die d2 = new LoadedDie(6);
        sum = 0;
        for (int i = 0; i < 10000; i++) {
            sum += d2.roll();
        }
        System.out.println((float) sum / 10000);
    }
}
