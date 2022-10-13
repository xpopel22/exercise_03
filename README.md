## Recursive and iterative algorithms
### Task 1 - Selection sort

The following algorithm, called SelectionSort, is a naive but simple iterative 
method to solve the Sorting problem. First, SelectionSort finds the
smallest element in *a*, and moves it to the first position by swapping it with
whatever happens to be in the first position (i.e., *a1*). Next, SelectionSort
finds the second smallest element in *a*, and moves it to the second position,
again by swapping with *a2*. At the *i*th iteration, SelectionSort finds the *i*th
smallest element in *a*, and moves it to the *i*th position.

Implement functions `IndexOfMin`, `SelectionSort` and `RecursiveSelectionSort`.

`IndexOfMin(array, first, last)` works with array and returns the index of
the smallest element between positions `first` and `last` by examining each
element from `array(first)` to `array(last)`.
```
IndexOfMin(array, first, last)
  index ← first
  for k ← first + 1 to last
    if array(k) < array(index)
      index ← k
  return index
```

Iterative version of SelectionSort
```
SelectionSort(a, n)
  for i ← 1 to n − 1
    j ← IndexOfMin(a, i, n)
    Swap elements a(i) and a(j)
  return a
```

Recursive version of SelectionSort
```
RecursiveSelectionSort(a, first, last)
  if first < last
    index ← IndexOfMin(a, first, last)
    Swap a(first) with a(index)
    a ← RecursiveSelectionSort(a, first + 1, last)
  return a
```

For each implemented function estimate the number of operations e.g. time complexity as a function of the size of 
the input. For `SelectionSort` and `RecursiveSelectionSort` estimate the upper bounds and decide which algorithm is
more efficient.

### Task 2 - The change problem
Convert some amount of money into the fewest number of coins.

* Input: an amount of money `M` to be returned
* Output: the smallest number of coins whose values add to `M`
* Coins (CZK): 50, 20, 10, 5, 2 and 1 CZK.

```
CZKChange(M)
  Give the integer part of M/50 50 CZK coins to customer.
  Let remainder be the remaining amount due the customer.

  Give the integer part of remainder/20 20 CZK coins to customer.
  Let remainder be the remaining amount due the customer.

  Give the integer part of remainder/10 10 CZK coins to customer.
  Let remainder be the remaining amount due the customer.

  Give the integer part of remainder/5 5 CZK coins to customer.
  Let remainder be the remaining amount due the customer.

  Give remainder in 1 CZK coins to customer.

```
Write pseudocode according to previous detailed description of the algorithm. Implement the algorithm in R.

### Task 3 - The change problem - better solution
Convert some amount of money `M` into given denominations, using the smallest possible number of coins.

* Input: An amount of money `M`, and an array of `d` denominations `c = (c1, c2, ... , cd)`,
in decreasing order of value `(c1 > c2 > ··· > cd)`.
* Output: A list of `d` integers `i1, i2, ... , id` such that `c1*i1 + c2*i2 + ··· + cd*id = M`, 
and `i1 + i2 + ··· + id` is as small as possible.

Write pseudocode for universal algorithm for different currencies. Implement the algorithm in R.


### Task 4 - The most chocolate path
Find the best path through rooms to collect as many chocolate bars as possible.

* Inputs:
  * matrix `M` with integer values (numbers of chocolate bars),
  * index `r` of current row,
  * index `c` of current column.
* Output: Maximum number of chocolate bars, that can be collected.


Recursive version of the most chocolate path
```
Chocolate(M, r, c)
  if r = number of rows in M
    return M(r, c)
  else
    choco_count ← M(r, c)
    choco_r ← Chocolate(M, r + 1, c)
    choco_c ← Chocolate(M, r + 1, c + 1)
    return max[choco_r, choco_c] + choco_count
```

Implement recursive algorithm for the most chocolate path.

Implement iterative algorithm for the most chocolate path.


### Task 5 - The towers of Hanoi
Output a list of moves that solves the towers of Hanoi. 

* Input: 
  * An integer `n` - number of disks,
  * An integer `from_peg` - index of starting peg,
  * An integer `to_peg` - index of a peg, where all disks should be to moved to.
* Output: A sequence of moves that will solve the `n`-disk towers of Hanoi puzzle.
```
Hanoi(n, from_peg, to_peg)
if n = 1
  output „Move disk from from_peg to to_peg“
  return
empty_peg ← 6 – from_peg – to_peg
Hanoi(n – 1, from_peg, empty_peg)
output „Move disk from from_peg to to_peg“
Hanoi(n – 1, empty_peg, to_peg)
```

Implement recursive algorithm for the tower of Hanoi and solve the problem for 5 disks.



<details>
<summary>Download files from GitHub</summary>
<details>
<summary>Git settings</summary>

> * Configure the Git editor
> ```bash
> git config --global core.editor notepad
> ```
> * Configure your name and email address
> ```bash
> git config --global user.name "Zuzana Nova"
> git config --global user.email z.nova@vut.cz
> ```
> * Check current settings
> ```bash
> git config --global --list
> ```
>
</details>

* Create a fork on your GitHub account. 
  On the GitHub page of this repository find a <kbd>Fork</kbd> button in the upper right corner.
  
* Cloned forked repository from your GitHub page to a folder in your computer:
```bash
git clone <fork repository address>
```
* In a local repository, set new remote for project repository:
```bash
git remote add upstream https://github.com/mpa-prg/exercise_03.git
```

### Send files to GitHub
Create a new commit and send new changes to your remote repository.
* Add file to a new commit.
```bash
git add <file_name>
```
* Create commit, enter commit message, save the file and close it.
```bash
git commit
```
* Send new commit to your GitHub repository.
```bash
git push origin master
```
</details>