# Linux File-Permissions Lab

## Objective

Review file and directory permissions, identify authorization risks, and apply least-privilege permissions using Linux commands.

## Commands Practiced

```bash
pwd
ls -la
ls -l
chmod u+rwx,g+rx,o-rwx project_file
chmod 750 project_directory
chown researcher2:research_team project_file
```

## Permission Interpretation

Example:

```text
-rwxr-x--- 1 researcher2 research_team 2048 Aug 9 10:00 project_file
```

- Owner permissions: `rwx`
- Group permissions: `r-x`
- Other permissions: `---`

## Security Principles

- Grant only the permissions required for the task.
- Review hidden files using `ls -la`.
- Confirm ownership before changing access.
- Avoid world-writable permissions such as `777`.
- Verify the final result with `ls -l` or `ls -la`.

## Validation

```bash
ls -l project_file
stat project_file
```

## Skills Demonstrated

- Linux command-line use
- File and directory authorization
- User and group ownership
- Least privilege
- Verification and documentation

