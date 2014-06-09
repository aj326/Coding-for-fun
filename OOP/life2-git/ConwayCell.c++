// --------
// ConwayCell.c++
// --------

// --------
// includes
// --------

#include "ConwayCell.h"

// --------
// methods
// --------

// bool ConwayCell::equals (const AbstractCell& that) const {
    // if (const ConwayCell* const p = dynamic_cast<const ConwayCell*>(&that))
        // return AbstractCell::equals(*p);
    // return false;}

std::istream& ConwayCell::read (std::istream& in) {
    char c;
    in >> c;
    if (c == '*')
        _alive = true;
    else
        _alive = false;
    return in;}

std::ostream& ConwayCell::write (std::ostream& out) const {
    if (alive())
        return out << '*';
    return out << '.';}

ConwayCell* ConwayCell::clone () const {
    return new ConwayCell(*this);}

bool ConwayCell::evolve (const bool* const b) {
    unsigned int count = 0;
    for (unsigned int i = 0; i < 8; ++i)
        if (b[i])
            ++count;
    if (count == 3)
        _alive = true;
    else if (count < 2 || count > 3)
        _alive = false;
    return false;}