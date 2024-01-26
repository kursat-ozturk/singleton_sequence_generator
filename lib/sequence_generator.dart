abstract class Singleton {
  Singleton._privateConstructor();
  // Abstract class for creating a singleton class
}

class SequenceGenerator extends Singleton {
  // Private constructor
  SequenceGenerator._privateConstructor() : super._privateConstructor();
  // Private constructor that is only accessible within the class and its subclasses

  // Singleton instance
  static final SequenceGenerator _instance =
      SequenceGenerator._privateConstructor();
  // Static instance of the SequenceGenerator class, initialized with the private constructor

  // Factory constructor
  factory SequenceGenerator() {
    return _instance;
    // Factory constructor that returns the singleton instance of SequenceGenerator
  }

  int _counter = 0;
  // Counter variable to keep track of the sequence numbers

  int getNextNumber() {
    _counter++;
    return _counter;
    // Method to get the next number in the sequence by incrementing the counter
  }

  int getCurrentNumber() {
    return _counter;
    // method to get the last generated number without triggering a new number
  }
}
