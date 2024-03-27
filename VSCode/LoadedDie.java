import java.util.*;

public class LoadedDie extends Die {
    private int[] rolls;

    public LoadedDie(int sides) {
        super(sides);

        rolls = new int[(sides * (sides + 1)) / 2];

        int index = 0;
        for (int i = 1; i <= sides; i++) {
            for (int j = 1; j <= i; j++) {
                rolls[index] = i;
                index++;
            }
        }
        System.out.println(Arrays.toString(rolls));
    }

    public int roll() {
        int index = (int) (Math.random() * rolls.length);
        return rolls[index];
    }
}
