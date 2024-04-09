public class Jedi extends Player {
    private boolean parry = false;

    public Jedi(int numAttackDie, int numAttackDieSides, int numDefenseDie, int numDefenseDieSides, int hp, int speed,
            boolean attackLoaded, boolean defenseLoaded, String name) {
        super(numAttackDie, numAttackDieSides, numDefenseDie, numDefenseDieSides, hp, speed, attackLoaded, defenseLoaded, name);
        
    }

    public boolean getParry() {
        return this.parry;
    }

    public int defend(int attackValue) {
        int damage = super.defend(attackValue);

        if (damage < -2) {
            System.out.println("Force parry!");
            parry = true;
        } else {
            parry = false;
        }

        return damage;
    }
    
}
