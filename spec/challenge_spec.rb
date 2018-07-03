require './src/challenge.rb'

describe 'test' do
  it 'returns a given string' do
    expect(test('Hello World')).to eq 'Hello World'
  end
end

describe 'factorial' do
  it 'takes an integer n and returns the value of n!' do
    expect(factorial(1)).to eq 1
  end

  it 'takes an integer n and returns the value of n! (5*4*3*2*1)' do
    expect(factorial(5)).to eq 120
  end

  it 'takes an integer n and returns the value of n!' do
    expect(factorial(9)).to eq 362880
  end

  it 'takes an integer n and returns the value of n!' do
    expect(factorial(15)).to eq 1307674368000
  end
end

describe 'remove_chars' do
  it 'removes the first and last character of a string' do
    expect(remove_chars('country')).to eq 'ountr'
  end

  it 'removes the first and last character of a string' do
    expect(remove_chars('eloquent')).to eq 'loquen'
  end
end

describe 'prefill' do
  it 'returns an array of n elements that all have the same value v, using recursion' do
    expect(prefill(3, 1)).to eq [1, 1, 1]
  end

  it 'returns an array of n elements that all have the same value v, using recursion' do
    expect(prefill(2, 'abc')).to eq %w[abc abc]
  end

  it 'returns an array of n elements that all have the same value v, using recursion' do
    expect(prefill('1', 1)).to eq [1]
  end

  it 'returns an array of n elements that all have the same value v, using recursion' do
    expect(prefill(3, prefill(2, '2d'))).to eq [%w[2d 2d], %w[2d 2d], %w[2d 2d]]
  end
end

describe 'wave' do
  it 'returns a wave of a given string' do
    expect(wave('hello')).to eq %w[Hello hEllo heLlo helLo hellO]
  end

  it 'returns a wave of a given string' do
    expect(wave('codewars')).to eq %w[
      Codewars
      cOdewars
      coDewars
      codEwars
      codeWars
      codewArs
      codewaRs
      codewarS
    ]
  end

  it 'returns a wave of a given string' do
    expect(wave('two words')).to eq [
      'Two words',
      'tWo words',
      'twO words',
      'two Words',
      'two wOrds',
      'two woRds',
      'two worDs',
      'two wordS'
    ]
  end
end

describe 'square_digits' do
  it 'returns any given integer in square' do
    expect(square_digits(9119)).to eq 811_181
  end

  it 'returns any given integer in square' do
    expect(square_digits(23_456)).to eq 49_162_536
  end
end

describe 'nearest_to_cero' do
  it 'Given a list of integers find the closest to zero If there is a tie, choose the positive value.' do
    expect(nearest_to_cero([8, 30, 1358, 2])).to eq 2
  end

  it 'Given a list of integers find the closest to zero If there is a tie, choose the positive value.' do
    expect(nearest_to_cero([-2, 2, 5, 9])).to eq 2
  end

  it 'Given a list of integers find the closest to zero If there is a tie, choose the positive value.' do
    expect(nearest_to_cero([-2, 5, 9])).to eq -2
  end
end

describe 'find_even_index' do
  it 'finds an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N' do
    expect(find_even_index([1, 100, 50, -51, 1, 1])).to eq 1
  end

  it 'it returns -1 if it does not finds an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N' do
    expect(find_even_index([1, 2, 3, 4, 5, 6])).to eq -1
  end

  it 'finds an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N' do
    expect(find_even_index([20, 10, 30, 10, 10, 15, 35])).to eq 3
  end
end

describe 'is_sorted_and_how' do
  it 'returns if an array is sorted and how' do
    expect(is_sorted_and_how([1, 2, 3])).to eq 'yes, ascending'
  end

  it 'returns if an array is sorted and how' do
    expect(is_sorted_and_how([15, 7, 3, -8])).to eq 'yes, descending'
  end

  it 'returns if an array is sorted and how' do
    expect(is_sorted_and_how([4, 2, 30])).to eq 'no'
  end
end

describe 'rot13' do
  it 'resolve a rot13 string' do
    expect(rot13('abc')).to eq 'nop'
  end

  it 'resolve a rot13 string' do
    expect(rot13('abc dez')).to eq 'nop qrm'
  end
end

describe 'pig_it' do
  it "Move the first letter of each word to the end of it, then add 'ay' to the end of the word" do
    expect(pig_it('Pig latin is cool')).to eq 'igPay atinlay siay oolcay'
  end

  it "Move the first letter of each word to the end of it, then add 'ay' to the end of the word" do
    expect(pig_it('This is my string')).to eq 'hisTay siay ymay tringsay'
  end
end
