# PyConda - A Python-Based Programming Language

PyConda is a simple, Python-based programming language designed for ease of use and extensibility. With PyConda, you can write and execute code in a straightforward and intuitive manner. This README provides an overview of the project, example code, example output, rules of execution, and how to run external files.

## Table of Contents
- [Introduction](#introduction)
- [Example Code](#example-code)
- [Example Output](#example-output)
- [Rules of Execution](#rules-of-execution)
- [Running External Files](#running-external-files)
- [Developer Details](#developer-details)

## Introduction

PyConda is an interpreted programming language that combines the simplicity of Python with custom features. It allows you to define functions, control flow, and perform operations easily. This README introduces the project and provides instructions on how to use it.

## Example Code

```pyconda
# This is a very useful piece of software

FUN oopify(prefix) -> prefix + "oop"

FUN join(elements, separator)
	VAR result = ""
	VAR len = LEN(elements)

	FOR i = 0 TO len THEN
		VAR result = result + elements/i
		IF i != len - 1 THEN VAR result = result + separator
	END

	RETURN result
END

FUN map(elements, func)
	VAR new_elements = []

	FOR i = 0 TO LEN(elements) THEN
		APPEND(new_elements, func(elements/i))
	END

	RETURN new_elements
END

PRINT("Greetings universe!")

FOR i = 0 TO 5 THEN
	PRINT(join(map(["l", "sp"], oopify), ", "))
END
```

## Example Output

When you run the example code provided above, you can expect the following output:

```
Greetings universe!
loop, soop
loop, soop
loop, soop
loop, soop
loop, soop
```

This output demonstrates the use of functions, loops, and print statements in PyConda.

## Rules of Execution

- PyConda is line-based and uses indentation to define blocks of code, similar to Python.
- You can define functions using the `FUN` keyword.
- Control flow statements include `FOR`, `IF`, and `WHILE`.
- Variables are declared using the `VAR` keyword.
- Lists are enclosed in square brackets `[]`, and you can access elements using square brackets (e.g., `my_list[0]`).
- External code can be executed using the `RUN` function.
- PyConda shell can be exited using the `quit` or `exit` command.

## Running External Files

To execute external PyConda code files, follow these steps:

1. Open a terminal or command prompt.

2. Navigate to the directory containing your PyConda files, including `shell.py` and the PyConda code files (e.g., "example.pc").

3. Run the PyConda shell by executing the following command:
   ```shell
   python shell.py
   ```

4. You'll enter an interactive PyConda shell. To execute an external file, use the `RUN` command, like this:
   ```shell
   PyConda > RUN("example.pc")
   ```

5. The code in the external file will be executed, and the results will be displayed.

## Developer Details

- **Project Author:** [Pabitra Banerjee](https://pabitrabanerjee.me)
- **GitHub:** [PB2204](https://github.com/PB2204)
- **Contact:** [Mail Address](mailto:rockstarpabitra2204@gmail.com)


Feel free to explore PyConda and create your own programs with it. If you encounter any issues, have questions, or want to contribute to the project, please reach out to the developer. Happy coding!
