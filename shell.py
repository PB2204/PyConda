import PyConda

while True:
    text = input('PyConda > ')
    
    if text.strip() == "": 
        continue
    
    if text.lower() in ["exit", "quit"]:
        break  # Exit the loop and gracefully quit the program
    
    try:
	if ".pc" not in text:
		print("The provided file isn't a valid PyConda file.")
        result, error = PyConda.run('<stdin>', text)

        if error:
            print(error.as_string())
        elif result:
            if len(result.elements) == 1:
                print(repr(result.elements[0]))
            else:
                print(repr(result))
    except FileNotFoundError:
        print("File not found. Please enter a valid command.")
    except ValueError:
        print("Invalid command. Please enter a valid command.")
