const rls = require('readline-sync');

class monster {
    constructor(health, dps){
        this.health = health,
        this.dps = dps
    };
};

class hero {
    constructor(name, health, weapon){
        this.name = name,
        this.health = health,
        this.weapon = weapon
    };
};

const goblin = new monster(20, 10);
const phantom = new monster(5, 15);
const spider = new monster(15, 10);

const blake = new hero('yeet', 100, 'knife');
const {name} = blake;
console.log(name);


