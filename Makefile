CPPFLAGS=-g -Wall 

BOOST_HOME=/home/yichen.lyh/boost_home

LIBS= -L /usr/include/

CPLUS_INCLUDE_PATH=${BOOST_HOME}/include
export CPLUS_INCLUDE_PATH

.PHONY : clean all

all: $(subst .cpp,.o,$(SOURCES))  lda


%.O: %.cpp
	$(CXX) $(CPPFLAGS) ${LIBS} $^ $@
lda: lda.cpp 
	$(CXX) $(CPPFLAGS) $^  ${LIBS} -o $@

clean:
	rm -rf  *.o  lda
