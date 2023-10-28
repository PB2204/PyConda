import PyConda

while True:
    text = input('PyConda > ')

    if text.strip() == "":
        continue

    if text.upper() in ["EXIT", "QUIT"]:
        break

    try:
        if ".pc" not in text:
            result = eval(text)
            print(result)

        else:
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