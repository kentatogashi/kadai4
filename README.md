# GCD

## Example
```
[togashik@ubuntu-ss 03:52:03 kadai4]$ ./gcd.sh
[ERROR] The number of arguments are invalid
[togashik@ubuntu-ss 03:52:08 kadai4]$ ./gcd.sh 12 18
6
```

## Test result

```
Check arguments
[OK] : "arg number is zero" at line 27 , exit code is 1
[OK] : "arg number is one" at line 28 , exit code is 1
[OK] : "arg number is three" at line 29 , exit code is 1
[OK] : "arg is negative integer" at line 30 , exit code is 1
[OK] : "arg is zero" at line 31 , exit code is 1
[OK] : "arg is decimal" at line 32 , exit code is 1
GCD functionality
[OK] : "args: 1 2 expected: 1" at line 35 , exit code is 0
[OK] : "args: 12 18 expected: 6" at line 36 , exit code is 0
[OK] : "args: 100 100 expected: 100" at line 37 , exit code is 0
All passed.
```
