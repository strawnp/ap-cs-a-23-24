public class Player {
    private int numAttackDie;
    private int numAttackDieSides;
    private int numDefenseDie;
    private int numDefenseDieSides;
    private int hp;
    private int speed;
    private Die attackDie;
    private Die defenseDie;
    
    public Player(int numAttackDie, int numAttackDieSides, int numDefenseDie, int numDefenseDieSides, int hp, int speed,
            Die attackDie, Die defenseDie) {
        this.numAttackDie = numAttackDie;
        this.numAttackDieSides = numAttackDieSides;
        this.numDefenseDie = numDefenseDie;
        this.numDefenseDieSides = numDefenseDieSides;
        this.hp = hp;
        this.speed = speed;
        this.attackDie = attackDie;
        this.defenseDie = defenseDie;
    }

    
}
