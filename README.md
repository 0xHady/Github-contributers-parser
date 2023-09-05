# GitHub Contributors Parser

GitHub-contributors-parser is a bash script to extract the names and emails of the contributors of specified GitHub repositories.

**Note**: This script was a practice on a bash scripting course I took.

## Usage

1. Clone the repository.
2. Put the links of GitHub repositories you want to extract the data from in `github_links_here.txt`.
3. Make sure that both `emailCollector.sh` and `fetchLogs.sh` are executable. On Linux, you can use the `chmod` command.
4. Run `emailCollector.sh`.
5. Let the magic happen.
6. The output (if it exists) will be in a new file in the same directory called `developersInfo.txt`.

**Note**: The links in the `github_links_here.txt` are examples. Feel free to remove them and put your own.
