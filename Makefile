build: main.o libcalculator.a
	g++ -o lab2 main.o -L. -lcalculator

libcalculator.a: calculator.o
	ar cr libcalculator.a calculator.o

main.o calculator.o:
	g++ -c *.cpp

clean:
	rm -f *.o *.a lab2