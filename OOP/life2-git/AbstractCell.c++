// --------
// AbstractCell.c++
// --------

// --------
// includes
// --------

#include "AbstractCell.h"

// --------
// methods
// --------

AbstractCell& AbstractCell::operator = (const AbstractCell& that) {
    _alive = that._alive;
    return *this;}

// bool AbstractCell::equals (const AbstractCell& that) const {
    // return (_alive == that._alive);}
    
bool AbstractCell::alive () const {
    return _alive;}