// --------
// ConwayCell.h
// --------

#ifndef ConwayCell_h
#define ConwayCell_h

#include "AbstractCell.h"

class ConwayCell : public AbstractCell {    
    public:
        ConwayCell (bool b = false) :
            AbstractCell(b),
        {}
       
        // Return true if the cells are equal, false otherwise.
        // virtual bool equals (const AbstractCell&) const;

        // Set the cell data to the input.
        virtual std::istream& read (std::istream&);

        // Print the cell.
        virtual std::ostream& write (std::ostream&) const;
       
        // Returns a pointer to a copy of this AbstractCell on the heap.
        virtual ConwayCell* clone () const;
        
        // Cell data is altered to reflect cell state after one 'turn'.
        // Return true if the Cell is mutating, false otherwise.
        virtual bool evolve (const bool* const);
};

#endif // ConwayCell_h