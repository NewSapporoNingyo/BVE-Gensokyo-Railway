import sys
import re
import os

def process_file(file_path, offset):
    #说明：用于在map文件中批量调整里程参数
    base, ext = os.path.splitext(file_path)
    output_file_path = f"{base}_modified{ext}"

    pattern = re.compile(r'^(\d+)(\+\$dist1;)\s*$')

    with open(file_path, 'r', encoding='utf-8') as infile:
        lines = infile.readlines()

    new_lines = []
    for line in lines:
        match = pattern.match(line)
        if match:
            number = int(match.group(1)) - offset
            modified_line = f"{number}{match.group(2)}\n"
            new_lines.append(modified_line)
        else:
            new_lines.append(line)

    with open(output_file_path, 'w', encoding='utf-8') as outfile:
        outfile.writelines(new_lines)

    print(f"Finish and saved to: {output_file_path}")

if __name__ == "__main__":   
    if len(sys.argv) < 2 or len(sys.argv) > 3:
        print("Usage: python changemapdist.py <map file path> [offset, default=0]")
        sys.exit(1)

    input_file = sys.argv[1]
    offset = int(sys.argv[2]) if len(sys.argv) == 3 else 0

    if not os.path.isfile(input_file):
        print(f"error: file '{input_file}' does not exist")
        sys.exit(1)

    process_file(input_file, offset)


