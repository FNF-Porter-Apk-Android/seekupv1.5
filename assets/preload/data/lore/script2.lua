function onCreate()
    setPropertyFromClass("openfl.Lib", "application.window.title",'LLLLOOOOOORRREEEEE!!!!')
end

function onUpdate()
    if getProperty("health") < 0 then
        setPropertyFromClass("openfl.Lib", "application.window.title",'DARKNESS')
    end
end
