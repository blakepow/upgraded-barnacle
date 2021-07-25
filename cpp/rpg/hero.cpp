
#include <iostream>
#include "hero.h"


Hero::Hero(string name, int health, int dps) {
    if(name == "Blake"){
        cout << "Welcome " << name << endl;

        string answer;
        cout << "Answer this riddle correctly... or die " << endl;
        cout << "A box without hinges, key, or lid, Yet golden treasure inside is hid." << endl;
        cout << "What is it? ";
        cin >> answer;
        cout << "You answered " << answer << "?" << endl;

        answer == "egg" ? cout << "You answered correctly" : cout << "You are wrong... now you must die...";

    }
}
