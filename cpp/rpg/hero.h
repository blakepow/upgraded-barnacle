
#ifndef RPG_HERO_H
#define RPG_HERO_H

#include <string>
using namespace std;

class Hero {
    public:
        string name;
        int health{};
        int dps{};
        Hero(string name, int health, int dps);
};


#endif //RPG_HERO_H
