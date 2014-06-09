// --------
// Cell.h
// --------

#ifndef Cell_h
#define Cell_h

#include "Handle.h"
#include "AbstractCell.h"
#include "ConwayCell.h"
#include "FredkinCell.h"

struct Cell : Handle<AbstractCell> {
    Cell (AbstractCell* p = new FredkinCell()) :
        Handle<AbstractCell> (p)
    {}
    
    // Cell performs any mutations (since objects cannot mutate).
    void mutate () {
        Cell c = new ConwayCell(true);
        swap(c);}

    // --------
    // AbstractCell API replication
    // --------
    
    // bool equals (const AbstractCell& that) const {
        // return get()->equals(that);}

    std::istream& read (std::istream& in) {
        return get()->read(in);}

    std::ostream& write (std::ostream& out) const {
        return get()->write(out);}
    
    bool alive () const {
        return get()->alive();}

    bool evolve (const bool* const b) {
        return get()->evolve(b);}
};

#endif // Cell_h