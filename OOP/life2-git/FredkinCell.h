// --------
// FredkinCell.h
// --------

#ifndef FredkinCell_h
#define FredkinCell_h

#include "AbstractCell.h"

class FredkinCell : public AbstractCell {
    private:
        unsigned int _age;

    public:
        FredkinCell (bool b = false) :
            AbstractCell(b), _age(0)
        {}

        // Return true if the cells are equal, false otherwise.
        // virtual bool equals (const AbstractCell&) const;

        // Set the cell data to the input.
        virtual std::istream& read (std::istream&);

        // Print the cell.
        virtual std::ostream& write (std::ostream&) const;
        
        // Returns a pointer to a copy of this AbstractCell on the heap.
        virtual FredkinCell* clone () const;
        
        // Cell data is altered to reflect cell state after one 'turn'.
        // Return true if the Cell is mutating, false otherwise.
        virtual bool evolve (const bool* const);
};

#endif // FredkinCell_h