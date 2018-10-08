# MagicNumbers

A small exercise to find out primes roots numbers from a list of intervals.

## Pre-requisites
 - Docker
or
 - Elixir >= 1.7

## Setup
### Using Docker

Build the image:
```bash
$ docker build -t magic_numbers .
```

Run the container
```bash
$ docker run -it magic_numbers
```

### Running local
```bash
$ iex -S mix
```

## How to use
Inside the Elixir Interactive Console, you can use the method:
```elixir
MagicNumbers.count_primes_roots_from list_of_intervals
# Example
MagicNumbers.count_primes_roots_from [[1,9],[25,25]]
```

Use double `Ctrl + C` to close.

## Running the tests

### Using Docker
If you haven't done it yet, build the image:
```bash
$ docker build -t magic_numbers .
```

Run the bash on container
```bash
$ docker run -it magic_numbers bash
```

Run the test
```bash
$ mix test
```

### Running local
Run the test
```bash
$ mix test
```

## About
[Guilherme Cruz](http://gcruz.com.br) :)