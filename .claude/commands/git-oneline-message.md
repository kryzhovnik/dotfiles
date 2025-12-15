---
model: claude-haiku-4-5-20251001
---

$ARGUMENTS

Analyze the current git status and staged/unstaged changes, then generate a short, descriptive one-line commit message.

Steps:
1. Check `git status` to see what files have changed
2. Look at `git diff` for unstaged changes and `git diff --cached` for staged changes
3. Analyze the nature of the changes (fix, feature, refactor, docs, test, etc.)
4. If the user provided context above, factor it into the message
5. Generate a concise, imperative-mood message that captures the essence of all changes

Keep the message:
- Imperative mood ("Add", "Fix", "Update", "Refactor", not "Added", "Fixed")
- Specific to what changed
- Under 72 characters

Examples of good messages:
- Fix null pointer in user authentication
- Add pagination to search results
- Refactor database connection pooling

Output ONLY the raw commit message text - no quotes, no markdown, no explanation.
