#CXX = g++
CXX = clang++ 
#Homebrew version (OK)
#INCLUDES= -I./ -I/usr/local/Cellar/cppunit/1.14.0/include/cppunit
#MacPort version (OK)
INCLUDES= -I./ -I/opt/local/include/cppunit
CXXFLAGS = -g $(INCLUDES) -std=c++11
SRCM= CBasicMath.cpp
OBJM = $(SRCM:.cpp=.o)
LINKFLAGS= -lcppunit

testbasicmath: TestBasicMath.cpp $(OBJM)
	$(CXX) $(CXXFLAGS) -o $@ TestBasicMath.cpp $(OBJM) $(LINKFLAGS) $(LINKFLAGSLOG4) $(LIBLOG)

# Default compile
.cpp.o:
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	$(RM) *.o