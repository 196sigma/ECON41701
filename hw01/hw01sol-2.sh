g++ -o rabbits-and-coyotes rabbits-and-coyotes.cpp
./rabbits-and-coyotes 1 1 1 1 0.7 0.1 10000 0.001 > population.txt
R CMD BATCH rabbits-and-coyotes.R rabbits-and-coyotes.Rout


