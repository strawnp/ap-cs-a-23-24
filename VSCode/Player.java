public class Player {
    private int numAttackDie;
    private int numAttackDieSides;
    private int numDefenseDie;
    private int numDefenseDieSides;
    private int hp;
    private int speed;
    private Die attackDie;
    private Die defenseDie;
    private String name;

    public Player(int numAttackDie, int numAttackDieSides, int numDefenseDie, int numDefenseDieSides, int hp, int speed,
            boolean attackLoaded, boolean defenseLoaded, String name) {
        this.numAttackDie = numAttackDie;
        this.numAttackDieSides = numAttackDieSides;
        this.numDefenseDie = numDefenseDie;
        this.numDefenseDieSides = numDefenseDieSides;
        this.hp = hp;
        this.speed = speed;
        this.name = name;
        if (!attackLoaded) {
            this.attackDie = new Die(numAttackDieSides);
        } else {
            this.attackDie = new LoadedDie(numAttackDieSides);
        }
        if (!defenseLoaded) {
            this.defenseDie = new Die(numDefenseDieSides);
        } else {
            this.defenseDie = new LoadedDie(numDefenseDieSides);
        }
    }

    public int getSpeed() {
        return this.speed;
    }

    public int getHP() {
        return this.hp;
    }

    public String getName() {
        return this.name;
    }

    public void takeDamage(int damageIn) {
        this.hp -= damageIn;
    }

    public int attack() {
        int total = 0;
        for (int i = 0; i < this.numAttackDie; i++) {
            total += this.attackDie.roll();
        }
        return total;
    }
    
    public int defend(int attackValue) {
        int total = 0;
        for (int i = 0; i < this.numDefenseDie; i++) {
            total += this.defenseDie.roll();
        }
        int damage = attackValue - total;
        this.hp -= damage > 0 ? damage : 0;

        return damage;
    }

    public boolean isAlive() {
        return this.hp > 0;
    }

    public String toString() {
        return this.name + " - " + this.hp + " HP";
    }
}
