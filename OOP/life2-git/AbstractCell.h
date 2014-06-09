// --------
// AbstractCell.h
// --------

#ifndef AbstractCell_h
#define AbstractCell_h

#include <iostream> // istream, ostream

class AbstractCell {
    protected:
        bool _alive;  // Make private?

        AbstractCell& operator = (const AbstractCell&);
        
    public:
        AbstractCell (bool b = false) : _alive (b) {}
    
        virtual ~AbstractCell () {}
        
        // UNUSED
        // Return true if the cells are equal, false otherwise.
        // virtual bool equals (const AbstractCell&) const = 0;

        // Set the cell data to the input.
        virtual std::istream& read (std::istream&) = 0;

        // Print the cell.
        virtual std::ostream& write (std::ostream&) const = 0;
        
        virtual void mutate () {}
        
        // Returns true if the cell is alive, and false otherwise.
        virtual bool alive () const;

        // Returns a pointer to a copy of this AbstractCell on the heap.
        virtual AbstractCell* clone () const = 0;
        
        // Cell data is altered to reflect cell state after one 'turn'.
        // Return true if the Cell is mutating, false otherwise.
        virtual bool evolve (const bool* const) = 0;
};

#endif // AbstractCell_h