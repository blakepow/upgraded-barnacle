
#ifndef RPG_MONSTER_H
#define RPG_MONSTER_H

using namespace std;

#include <string>

class Monster {
    public:
        string name;
        int health{};
        int dps{};
        Monster(const string& name, int health, int dps);
};

#endif //RPG_MONSTER_H
