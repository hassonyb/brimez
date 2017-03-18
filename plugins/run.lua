do 
function run(msg, matches) 
  if matches[1] == "تشغيل" and is_sudo(msg) then 
    return os.execute("./launch.sh"):read('*all') 
  elseif matches[1] == "تحديث" and is_sudo(msg) then 
     return io.popen("git pull"):read('*all') 
  elseif  matches[1] == "تصحيح" and is_sudo(msg) then 
    return io.popen("redis-server"):read('*all') 
  end 
end 
return { 
  patterns = { 
    "^(تشغيل)$", 
    "^(تحديث)$", 
    "^(تصحيح)$" ,
  }, 
  run = run 
} 
end