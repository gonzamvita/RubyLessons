arr = [[0,1,2,3,4,{secret: {unlock: [0,1]}}]]

puts arr[0][5][:secret][:unlock][1]
