IndexOfMin <- function(array, first, last) {
  index <- first
  for (k in (first+1):last) {
    if (array[k] < array[index]){
      index <- k
    }
  }
  return(index)
}

SelectionSort <- function(array, n){
  for (i in 1:(n-1)){
    j <- IndexOfMin(array, i, n)
    tmp <- array[j]
    array[j] <- array[i]
    array[i] <- tmp
  }
  return(array)
}

RecursiveSelectionSort <- function(array, first, last){
  if (first<last){
    index <- IndexOfMin(array, first, last)
    tmp <- array[first]
    array[first] <- array[index]
    array[index] <- tmp
    array <- RecursiveSelectionSort(array, (first+1), last)
  }
  
  return(array)
}

array <- c(5,2,3,4,5,6,8,1,2,3,4,5,0)
len <- length(array)
print(IndexOfMin(array, 1, len))
print(SelectionSort(array, len))
array <- c(5,2,3,4,5,6,8,1,2,3,4,5,0)
print(RecursiveSelectionSort(array,1, len))