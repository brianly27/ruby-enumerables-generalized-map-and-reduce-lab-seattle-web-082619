<<<<<<< HEAD

=======
# Your Code Here
>>>>>>> 92bda05e09d8071af99f042fbda3b225129196d0
#describe 'my own map' do
#  it "returns an array with all values made negative" do
#    expect(map([1, 2, 3, -9]){|n| n * -1}).to eq([-1, -2, -3, 9])
#  end
def map(array)
<<<<<<< HEAD
  arr = []
  counter = 0

  while counter < array.length do
  arr << yield(array[counter])
  counter +=1
  end

 arr
=======

array.map { |e| yield(e)}
>>>>>>> 92bda05e09d8071af99f042fbda3b225129196d0
end


#  it "returns an array with the original values" do
#    dune = ["paul", "gurney", "vladimir", "jessica", "chani"]
#    expect(map(dune){|n| n}).to eq(dune)
#  end

#  it "returns an array with the original values multiplied by 2" do
#    expect(map([1, 2, 3, -9]){|n| n * 2}).to eq([2, 4, 6, -18])
#  end

#  it "returns an array with the original values squared" do
#    expect(map([1, 2, 3, -9]){|n| n * n}).to eq([1, 4, 9, 81])
#  end
#end

<<<<<<< HEAD


def reduce(array, start = nil)
  if start
    counter = 0
  else
    counter = 1 #use first element as the starting value
    start = array[0]
  end

  accum = start

  while counter < array.length do
    accum = yield(accum, array[counter])
    counter += 1
  end
  accum
end

# def reduce(array, start = 0)
#   array.reduce(start) do |memo, e|
#     binding.pry
#     yield(memo, e)
#   end
# end


=======
>>>>>>> 92bda05e09d8071af99f042fbda3b225129196d0
#describe 'my own reduce' do
#  it "returns a running total when not given a starting point" do
#    source_array = [1,2,3]
#    expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
#  end

<<<<<<< HEAD
=======
def reduce(array, start = 0)

  array.reduce(start) {|m, e| yield(m, e)}
end
>>>>>>> 92bda05e09d8071af99f042fbda3b225129196d0
#  it "returns a running total when given a starting point" do
#    source_array = [1,2,3]
#    starting_point = 100
#    expect(reduce(source_array, starting_point){|memo, n| memo + n}).to eq(106)
#  end

#  it "returns true when all values are truthy" do
#    source_array = [1, 2, true, "razmatazz"]
#    expect(reduce(source_array){|memo, n| memo && n}).to be_truthy
#  end

#  it "returns false when any value is false" do
#    source_array = [1, 2, true, "razmatazz", false]
#    expect(reduce(source_array){|memo, n| memo && n}).to be_falsy
#  end

#  it "returns true when a truthy value is present" do
#    source_array = [ false, nil, nil, nil, true]
#    expect(reduce(source_array){|memo, n| memo || n}).to eq(true)
#  end

#  it "returns false when no truthy value is present" do
#    source_array = [ false, nil, nil, nil]
  #  expect(reduce(source_array){|memo, n| memo && n}).to eq(false)
