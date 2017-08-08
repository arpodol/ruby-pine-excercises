# Program logger that takes in block and tells what the result is along
# with the description given. The improved version indents nesting

$nesting_depth = 0

def log(block_description, &block)
  puts "#{'  ' * $nesting_depth}Beginning #{block_description}..."
  $nesting_depth += 1
  value_returned = block.call
  $nesting_depth -= 1
  puts "#{'  ' * $nesting_depth}...#{block_description} finished, returning"
  puts "#{'  ' * $nesting_depth}#{value_returned}"

end

log 'Outer block' do
  log 'some little block' do
    4+1
  end
  'I like thai food'
end