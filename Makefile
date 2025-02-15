#Name: Noah Melton
#Date: Feb 15, 2025
#Brief: This is the makefile for the Makefile assignment in CSCI325

CXX = g++

CXXFLAGS = -Wall -Wextra -g

all: program

program: main.o Supervisor.o Employee.o Officer.o
	$(CXX) $(CXXFLAGS) -o program main.o Supervisor.o Employee.o Officer.o

main.o: main.cpp Employee.h Supervisor.h Officer.h
	$(CXX) $(CXXFLAGS) -c main.cpp

Supervisor.o: Supervisor.cpp Supervisor.h Employee.h
	$(CXX) $(CXXFLAGS) -c Supervisor.cpp

Employee.o: Employee.cpp Employee.h
	$(CXX) $(CXXFLAGS) -c Employee.cpp

Officer.o: Officer.cpp Officer.h Employee.h
	$(CXX) $(CXXFLAGS) -c Officer.cpp


clean:
	rm -f *.o *~ program
