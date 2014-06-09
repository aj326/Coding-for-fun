// --------
// Life.h
// --------

#ifndef Life_h
#define Life_h

#include <vector>   // vector
#include <cassert>  // assert
#include <iostream> // istream, ostream
#include <sstream>  // ostringstream

#include "Cell.h"
#include "ConwayCell.h"
#include "FredkinCell.h"

template <typename T>
class Life {
    private:
        unsigned int _gen;
        unsigned int _pop;
    
        std::vector< std::vector<T> > _board;
        std::vector< std::vector<bool> > _liveness;

    public:
        // Construct a game of life given a board in ASCII.
        // TODO: minimize looping/resizing.
        explicit Life (std::istream& in) :
            _gen(0), _pop(0), _board(), _liveness()
        {
            bool a;
            unsigned int h;
            unsigned int w;
            in >> h;
            in >> w;
            _board.resize(h);
            _liveness.resize(h);
            for (unsigned int i = 0; i < h; ++i) {
                _board[i].resize(w);
                _liveness[i].resize(w);}
            for (unsigned int i = 0; i < h; ++i) {
                for (unsigned int j = 0; j < w; ++j) {
                    _board[i][j].read(in);
                    a = _board[i][j].alive();
                    _liveness[i][j] = a;
                    if (a)
                        ++_pop;}}}

        // UNUSED METHOD
        // Set a board position to a particular T.
        // void set (unsigned int h, unsigned int w, const T& c) {
            // if (h < _board.size() && w < _board[0].size()) {
                // if (c.alive() && !(_board[h][w].alive()))
                    // ++_pop;
                // else if (!(c.alive()) && _board[h][w].alive())
                    // --_pop;
                // _board[h][w] = c;
                // _liveness[h][w] = c.alive();}}

        // Print the generation, population, and board.
        void print (std::ostream& o = std::cout) const {
            std::ostringstream oss;
            oss << std::endl << "Generation = " << _gen << ", Population = " << _pop << "." << std::endl;
            unsigned int h = _board.size();
            unsigned int w;
            if (h > 0)
                w = _board[0].size();
            else
                w = 0;
            for (unsigned int i = 0; i < h; ++i) {
                for (unsigned int j = 0; j < w; ++j) {
                    _board[i][j].write(oss);}
                oss << std::endl;}
            o << oss.str();
            o.flush();}

        // Run through a single generation on the board.
        void turn () {
            std::vector< std::vector<bool> > staging(_liveness);
            bool n[] = {0, 0, 0, 0, 0, 0, 0, 0};
            bool mut;
            for (unsigned int i = 0; i < _board.size(); ++i) {
                for (unsigned int j = 0; j < _board[0].size(); ++j) {
                    // Check bounds for i and j
                    n[0] = ((i == 0 || j == 0) ? 0 : _liveness[i-1][j-1]);
                    n[1] = ((i == 0) ? 0 : _liveness[i-1][j]);
                    n[2] = ((i == 0 || j == _board[0].size() - 1) ? 0 : _liveness[i-1][j+1]);
                    n[3] = ((j == 0) ? 0 : _liveness[i][j-1]);
                    n[4] = ((j == _board[0].size() - 1) ? 0 : _liveness[i][j+1]);
                    n[5] = ((i == _board.size() - 1 || j == 0) ? 0 : _liveness[i+1][j-1]);
                    n[6] = ((i == _board.size() - 1) ? 0 : _liveness[i+1][j]);
                    n[7] = ((i == _board.size() - 1 || j == _board[0].size() - 1) ? 0 : _liveness[i+1][j+1]);
                    mut = _board[i][j].evolve(n);
                    if (mut) {
                        _board[i][j].mutate();}
                    staging[i][j] = _board[i][j].alive();
                    if (_liveness[i][j] && !(staging[i][j]))
                        --_pop;
                    else if (!(_liveness[i][j]) && staging[i][j])
                        ++_pop;}}
            _liveness = staging;
            ++_gen;}

        // Run some arbitrary number of turns
        void run (unsigned int turns) {
            while (turns > 0) {
                --turns;
                turn();}}
};

#endif // Life_h