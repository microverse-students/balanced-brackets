require './challenge.rb'

RSpec.describe 'UnitTests' do
  
  it 'balanced_parenthesis_and_square_brackets' do
    # Failure message: 
    # Method called: balanced_brackets?('(hello)[world]')
    expect(balanced_brackets?('(hello)[world]')).to be true
  end
  
  it 'balanced_brackets' do
    # Failure message: 
    # Method called: balanced_brackets?('{}')
    expect(balanced_brackets?('{}')).to be true
  end
  
  it 'nested_balanced_brackets' do
    # Failure message: 
    # Method called: balanced_brackets?('[({}{}{})([])]')
    expect(balanced_brackets?('[({}{}{})([])]')).to be true
  end

  it 'unbalanced_with_no_closing' do
    # Failure message: 
    # Method called: balanced_brackets?('(hello')
    expect(balanced_brackets?('(hello')).to be false
  end

  it 'unbalanced_incorrect_nesting' do
    # Failure message: 
    # Method called: balanced_brackets?('([)]')
    expect(balanced_brackets?('([)]')).to be false
  end

  it 'unbalanced_closing_before_opening' do
    # Failure message: 
    # Method called: balanced_brackets?(')(')
    expect(balanced_brackets?(')(')).to be false
  end
  
end
