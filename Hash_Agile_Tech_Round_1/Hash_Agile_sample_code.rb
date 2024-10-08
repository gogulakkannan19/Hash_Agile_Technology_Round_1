def arr_len(arr)
    count = 0
    arr.each { count += 1 }
    count
  end
  
  def rev(arr, x, y)
    while x < y
      arr[x], arr[y] = arr[y], arr[x]
      x += 1
      y -= 1
    end
  end

def rotate_array(arr, k)
    n = arr_len(arr)  
    k = k % n  
    rev(arr, 0, n - 1)
    rev(arr, 0, k - 1)
    rev(arr, k, n - 1)
  end

  val = [
    [2,4,6,8,10,12,14,16,18,20],
    [5,10,15,20,25],
    [1,5,9,13,17,21,15,29,33],
    [0,3,4,6,8,12,16]
  ]

  k_val = [3, 2, 9, 0]  
  
  val.each_with_index do |i, j|
    k = k_val[j]
    puts "Original array: #{i}"
    rotate_array(i, k)
    puts "Rotated array by #{k} positions: #{i}"
    puts "-" * 40
  end
  