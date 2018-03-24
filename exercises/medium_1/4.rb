# passing parameters (pt 2)

def organize(array)
  yield(array)
end

birds = %w(raven finch hawk eagle)

organize(birds) do |_, _, *raptors|
  puts raptors
end