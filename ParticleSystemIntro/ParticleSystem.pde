public class ParticleSystem extends java.lang.Object {
  private ArrayList<Particle> ps;
  private int x;
  private int y;

  // constructors are overloaded meaning I can call them in multiple ways
  // default constructor
  public ParticleSystem() {
    // this() refers to this class's constructor
    // calling the parameterized constructor with default values
    this(width / 2, height / 2);
  }

  // parameterized constructor
  public ParticleSystem(int x, int y) {
    ps = new ArrayList<>();
    this.x = x;
    this.y = y;
  }

  public void run() {
    println(ps.size());
    if (ps.size() < 1000) {
      if (Math.random() < 0.5) {
        ps.add(new Particle(new PVector(x, y)));
      } else {
        ps.add(new SquareParticle(new PVector(x, y)));
      }
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
