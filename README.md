# Bash Script: Word Modification Script
This bash script reads a file line by line, modifies each word by moving its last character to the beginning (if the word has more than one character), and then saves the modified lines back to the original file.

## Usage

- Make sure you have bash installed on your system.
```
./wordChange.sh filename
```
- Replace filename with the path to the file you want to process.

## Example
- If a text file contains the following lines:
```
hello world
how are you
```
- Running the script wordChange.sh input.txt will modify each word as described and overwrite input.txt with the modified content.

- After running the script, input.txt will be modified to:

```
ohell elohw
woh rae uoy
```
