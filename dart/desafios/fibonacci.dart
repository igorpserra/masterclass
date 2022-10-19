void main(List<String> args) {
  print(fibonacci(6));
}

List<int> fib = [];

List<int> fibonacci(int reps) {
  if (reps == 0) return fib;
  if (fib.length < 1) {
    fib.add(0);
    reps--;
    fibonacci(reps);
    return fib;
  }
  if (fib.length == 1) {
    fib.add(1);
    reps--;
    fibonacci(reps);
    return fib;
  }

  fib.add(fib[fib.length - 2] + fib[fib.length - 1]);
  reps--;
  fibonacci(reps);
  return fib;
}
