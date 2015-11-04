require 'test_helper'

describe 'MyNumber' do
  describe 'When valid individual number given' do
    it 'should return true' do
      numbers = %w(895980423139 430792811528 107611545184 964041141335 044580705690)
      numbers.each { |n| MyNumber.individual_number?(n).must_equal true }
    end
  end

  describe 'When invalid individual number givien' do
    it 'should return false' do
      numbers = %w(795177121487 918971198689 862303813613 075327773529 264266296053 1)
      numbers.each { |n| MyNumber.individual_number?(n).must_equal false }
    end
  end

  describe 'When valid corporate number given' do
    it 'should return true' do
      numbers = %w(2010001163289 1010601008968 1012701000739 1011203001683)
      numbers.each { |n| MyNumber.corporate_number?(n).must_equal true }
    end
  end

  describe 'When invalid corporate number given' do
    it 'should return true' do
      numbers = %w(2010001163281 1010601008961 1012701000731 1011203001681 1)
      numbers.each { |n| MyNumber.corporate_number?(n).must_equal false }
    end
  end
end
