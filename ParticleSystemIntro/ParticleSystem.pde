public class ParticleSystem {
  private ArrayList<Particle> ps;

  public ParticleSystem() {
    ps = new ArrayList<>();
  }

  public void run() {
    if (ps.size() < 1000) {
      ps.add(new Particle(new PVector(width / 2, height / 3)));
    }

    for (int i = ps.size() - 1; i >= 0; i--) {
      ps.get(i).run();
    }

    for (int i = 0; i < ps.size(); i++) {
      if (ps.get(i).isDead()) {
        ps.remove(i);
        i--;
      }
    }
  }
}
