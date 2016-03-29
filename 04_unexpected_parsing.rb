def get_status(is_busy)
  if is_busy
    status = "busy"
  else
    status = "available"
  end
  return status
end

puts get_status(true)