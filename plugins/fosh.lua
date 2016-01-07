do

function run(msg, matches)
  return "Fuck you " .. matches[1]
end

return {
    patterns = {
    "^[Ff]osh bede be (.*)$"
  }, 
  run = run 
}

end
