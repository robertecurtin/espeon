package.loaders[1] = function(module)
  return loadfile(module .. '.lc')
end

tmr.create():alarm(500, tmr.ALARM_SINGLE, function()
  xpcall(function()
    dofile('init.lc')
  end, print)
end)
