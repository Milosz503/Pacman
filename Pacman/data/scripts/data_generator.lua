serpent = require("serpent")

generator = {



openFile = function (fileName)

	file = io.open(fileName, "w")
	io.output(file)
end,

generate = function (tableName, var)

	io.write(tableName .. " = ")
	io.write("\n")
	print(var.width)
	io.write(serpent.line(var, {comment=false}))
	io.write("\n")

end,

closeFile = function ()
	io.close(file)
end

}