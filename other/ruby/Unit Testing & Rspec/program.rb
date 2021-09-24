RSpec.describe 'StringChanger' do
    it 'reverse the strings' do
        string_changer = StringChanger.new()
        reversed_string = string_changer.reverse_and_save('example string')
        expect(reversed_string).to eq('gnirts elpmaxe')
    end
    it 'save the file' do
        File.stub(:write)
        string_changer = StringChanger.new()
        string_changer.reverse_and_save('example string')

        expect(File).
            to have_received(:write).
            with('example_file', 'gnirts elpmaxe').
            once   
    end
end

# class StringChanger
#     def reverse_and_save(string)
#         string.reverse().tap() do |string_reverse|
#             File.write('example_file', string_reverse)
#     end
# end

class StringChanger
    def reverse_and_save(string_to_reverse)
      string_to_reverse.reverse.tap do |reversed_string|
        File.write('example_file', reversed_string)
      end
    end
  end