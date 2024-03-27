public class FrogSimulation {
    private int goalDistance;
    private int maxHops;

    public FrogSimulation(int dist, int numHops) {
        goalDistance = dist;
        maxHops = numHops;
    }

    private int hopDistance() {
        return (int) (Math.random() * 30 - 10);
    }

    public boolean simulate() {
        // TODO: part a
        return false;
    }

    public double runSimulations(int num) {
        // TODO: part b
        return 0;
    }
}