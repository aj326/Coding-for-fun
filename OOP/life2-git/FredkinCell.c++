// --------
// FredkinCell.c++
// --------

// --------
// includes
// --------

#include "FredkinCell.h"

// --------
// methods
// --------

// bool FredkinCell::equals (const AbstractCell& that) const {
    // if (const FredkinCell* const p = dynamic_cast<const FredkinCell*>(&that))
        // return AbstractCell::equals(*p) && (_age == p->_age);
    // return false;}

std::istream& FredkinCell::read (std::istream& in) {
    char c;
    in >> c;
    if (c == '0' || c == '1' || c == '2' || c == '3' || c == '4' || \
        c == '5' || c == '6' || c == '7' || c == '8' || c == '9') {
        _alive = true;
        _age = c - '0';}
    else if (c == '+') {
        _alive = true;
        _age = 10;}
    else {
        _alive = false;
        _age = 0;}
    return in;}

std::ostream& FredkinCell::write (std::ostream& out) const {
    char c = '0' + _age;
    if (alive() && _age < 10)
        return out << c;
    else if (alive())
        return out << '+';
    return out << '-';}

FredkinCell* FredkinCell::clone () const {
    return new FredkinCell(*this);}

bool FredkinCell::evolve (const bool* const b) {
    unsigned int count = 0;
    bool bf = alive();
    if (b[1]) ++count;
    if (b[3]) ++count;
    if (b[4]) ++count;
    if (b[6]) ++count;
    if (count == 1 || count == 3)
        _alive = true;
    else
        _alive = false;
    if (bf && alive()) {
        ++_age;
        if (_age == 2)
            return true;}
    return false;}