function ramdomSleep(n)
	math.randomseed(os.time())
	mSleep(n + math.random(-500, 500))
end

function ramdomCoordinate(n)
	math.randomseed(os.time())
	return n + math.random(-3, 3)
end

function tap(x, y)
	x = ramdomCoordinate(x)
	y = ramdomCoordinate(y)
	touchDown(1, x, y)
	mSleep(50)
	touchUp(1, x, y)
end

function tapByFinger(finger, x, y)
	x = ramdomCoordinate(x)
	y = ramdomCoordinate(y)
	touchDown(finger, x, y)
	mSleep(50)
	touchUp(finger, x, y)
end

function drag(x1, y1, x2, y2)
	x1 = ramdomCoordinate(x1)
	y1 = ramdomCoordinate(y1)
	x2 = ramdomCoordinate(x2)
	y2 = ramdomCoordinate(y2)
	touchDown(1, x1, y1)
	mSleep(100)
	touchMove(1, x2, y2)
	mSleep(100)
	touchUp(1, x2, y2)
end
