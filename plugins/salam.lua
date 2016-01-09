do

function run(msg, matches)
  return "سلام" .. matches[1]
end

return {
    patterns = {
    "^سلام بده به (.*)$"
  }, 
  run = run 
}

end
