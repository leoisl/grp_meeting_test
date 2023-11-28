import argparse


def add(a: int, b: int, c: int) -> int:
    return a + b + c


def main() -> None:
    parser = argparse.ArgumentParser("Add two numbers")
    parser.add_argument("a", type=int)
    parser.add_argument("b", type=int)
    parser.add_argument("c", type=int)
    args = parser.parse_args()
    print(add(args.a, args.b, args.c))


if __name__ == "__main__":
    main()
