public class DiceWar {
    public static void main(String[] args) {
        Player p1 = new Player(1, 12, 1, 4, 8, 6, true, false, "Darth Vader");
        Player p2 = new Jedi(2, 4, 2, 4, 12, 5, false, true, "Luke Skywalker");

        Player first, second, winner;
        int round = 1;

        if (p1.getSpeed() >= p2.getSpeed()) {
            first = p1;
            second = p2;
        } else {
            first = p2;
            second = p1;
        }
        System.out.println(first.getName() + " goes first!");

        while (first.isAlive() && second.isAlive()) {
            System.out.println("\nRound " + round);
            int firstAttack = first.attack();
            System.out.println(first.getName() + " attacks with a roll of " + firstAttack);

            int secondDamage = second.defend(firstAttack);
            System.out.println(second.getName() + " took " + secondDamage + " damage");

            if (second instanceof Jedi && ((Jedi) second).getParry()) {
                System.out.println("Force triggered");
                first.takeDamage(-secondDamage);
            }

            System.out.println(first);
            System.out.println(second);

            if (second.isAlive()) {
                int secondAttack = second.attack();
                System.out.println(second.getName() + " attacks with a roll of " + secondAttack);
    
                int firstDamage = first.defend(secondAttack);
                System.out.println(first.getName() + " took " + firstDamage + " damage"); 

                if (first instanceof Jedi && ((Jedi) first).getParry()) {
                    System.out.println("Force triggered");
                    second.takeDamage(-firstDamage);
                }

                System.out.println(first);
                System.out.println(second);

                if (!first.isAlive()) {
                    winner = second;
                    System.out.println("\nWINNER: " + winner.getName() + "!");
                }
            } else {
                winner = first;
                System.out.println("\nWINNER: " + winner.getName() + "!");
            }

            round++;
        }   
    }
}
