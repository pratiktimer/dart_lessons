abstract class Character {
  int health;
  int attackStrength;
  int defense;

  Character(this.health, this.attackStrength, this.defense);

  void attack(Character enemy) {
    int damageDealt = calculateDamage();
    enemy.takeDamage(damageDealt);
  }

  void takeDamage(int damage) {
    int actualDamage = calculateActualDamage(damage);
    health -= actualDamage;
  }

  int calculateActualDamage(int damage) {
    int actualDamage = damage - defense;
    if (actualDamage < 0) {
      actualDamage = 0;
    }
    return actualDamage;
  }

  int calculateDamage();
}

class Warrior extends Character {
  Warrior(int health, int attackStrength, int defense)
      : super(health, attackStrength, defense);

  @override
  int calculateDamage() {
    return attackStrength + 10;
  }
}

class Wizard extends Character {
  Wizard(int health, int attackStrength, int defense)
      : super(health, attackStrength, defense);

  @override
  int calculateDamage() {
    return attackStrength + 20;
  }
}

class Archer extends Character {
  Archer(int health, int attackStrength, int defense)
      : super(health, attackStrength, defense);

  @override
  int calculateDamage() {
    return attackStrength + 15;
  }
}
