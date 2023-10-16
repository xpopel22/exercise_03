## Computational complexity
### Task

The following algorithm, called Selection sort, is a naive but simple iterative 
method to solve the sorting problem. First, Selection sort finds the
smallest element in the list of integers, and moves it to the first position by swapping it with
whatever happens to be in the first position. Next, Selection sort
finds the second smallest element in the list, and moves it to the second position,
again by swapping with value in the second position. At the *i*<sup>th</sup> iteration, Selection sort finds the *i*<sup>th</sup>
smallest element in the list, and moves it to the *i*<sup>th</sup> position.

According to the pseudocodes, implement the functions `IndexOfMin()`, `SelectionSort()`, and `RecursiveSelectionSort()`.


Function `IndexOfMin()` finds the index of minimal value in the list. It has three inputs: 
* list of integers,
* index of the first,
* index of the last position.

Function returns the index of the smallest element of the list between first and last index.

```
IndexOfMin(array, first, last)
  index ← first
  for k ← first + 1 to last
    if array[k] < array[index]
      index ← k
  return index
```

Function `SelectionSort()` iteratively sorts a list of integers. It has two inputs: 
* list of integers,
* number of integers in the list. 

Function returns sorted list of integers.
```
SelectionSort(array, n)
  for i ← 1 to n − 1
    j ← IndexOfMin(array, i, n)
    Swap elements array[i] and array[j]
  return array
```

Function `RecursiveSelectionSort()` recursively sorts a list of integers. It has three inputs:
* list of integers,
* index of the first,
* index of the last position. 

Function returns sorted list of integers.
This function performs exactly the same operations as `SelectionSort()` with use of recursion.
```
RecursiveSelectionSort(array, first, last)
  if first < last
    index ← IndexOfMin(array, first, last)
    Swap array[first] with array[index]
    array ← RecursiveSelectionSort(array, first + 1, last)
  return array
```

For each implemented function, estimate the number of operations i.e., computational complexity, depending on the input size. 

For `SelectionSort()` and `RecursiveSelectionSort()` determine the upper bounds and decide which algorithm is
more efficient.


#### Download files from GitHub
<details>
<summary>Basic Git settings</summary>

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
  
* Clone forked repository from your GitHub page to your computer:
```bash
git clone <fork repository address>
```
* In a local repository, set new remote for a project repository:
```bash
git remote add upstream https://github.com/mpa-prg/exercise_03.git
```

#### Send files to GitHub
Create a new commit and send new changes to your remote repository.
* Add file to a new commit.
```bash
git add <file_name>
```
* Create a new commit, enter commit message, save the file and close it.
```bash
git commit
```
* Send a new commit to your GitHub repository.
```bash
git push origin main
```
