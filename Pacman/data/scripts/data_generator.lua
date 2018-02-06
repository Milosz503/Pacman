serpent = require("serpent")

return {



openFile = function (fileName)

	file = io.open(fileName, "w")
	io.output(file)
end,

generate = function (var)

	io.write("return ")
	io.write("\n")
	io.write(serpent.line(var, {comment=false}))
	io.write("\n")

end,

closeFile = function ()
	io.close(file)
end

}