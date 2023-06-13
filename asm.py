from sys import argv


path = argv[1] if len(argv) > 1 else "programms/euro.bf"

def asm_bf(programm):
    instructions = "><+-.,[]"
    code = ["0" for n in range(2**16)]
    i = 0
    for c in programm:
        if c in instructions:
            code[i] = hex(instructions.index(c))[2:]
            i += 1
    return code, i

with open(path, "r") as f:
    p, l = asm_bf(f.read())

# save in hex folder
import re
name = re.search('/([^/.]+)\.bf', path).group(1)
with open(f"hex/{name}.hex", "w+") as f:
    f.write("v3.0 hex words plain\n")
    f.write(" ".join(p))

print(f"length: {l}")
print("done")