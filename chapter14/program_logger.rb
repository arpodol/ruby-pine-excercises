# Program logger that takes in block and tells what the result is along
# with the description given

def log(block_description, &block)
  puts "Beginning #{block_description}..."
  value_returned = block.call
  puts "...#{block_description} finished, returning"
  puts value_returned
end

log 'Outer block' do
  log 'some little block' do
    4+1
  end
  'I like thai food'
end