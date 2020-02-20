Spec.describe 'Map' do
  describe '.initialize' do
    context 'when called by passing integer' do
      # zero is not positive
      it 'should success when passing positive integer' do
        Map.new(5)
      end
    end
  end
end
