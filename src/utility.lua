function ramdomCoordinate(n)
	math.randomseed(os.time())
	return n + math.random(-3, 3)
end

function tap(x, y)
	x = ramdomCoordinate(x)
	y = ramdomCoordinate(y)
    touchDown(1, x, y);
    mSleep(100);
    touchUp(1, x, y);
end
