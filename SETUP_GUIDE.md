# GitHub Portfolio Setup Guide

This folder is ready to upload to GitHub. Use either the profile-README option or the standard portfolio-repository option below.

## Option 1: GitHub Profile README

Choose this option if you want the main portfolio to appear automatically on your GitHub profile.

1. Sign in to GitHub.
2. Create a new public repository.
3. Name the repository exactly the same as your GitHub username.
4. Upload the contents of this folder, keeping `README.md` in the repository root.
5. Commit the files.

GitHub will display the root `README.md` on your profile page.

## Option 2: Standard Portfolio Repository

Choose this option if you want a separate portfolio repository.

Recommended repository name:

```text
naqimuddin-aqil-portfolio
```

Recommended description:

```text
Portfolio of IT, networking, cybersecurity, IoT, and automation projects by Naqimuddin Aqil.
```

Suggested repository topics:

```text
portfolio networking cybersecurity cisco wireshark linux iot n8n student
```

## Upload Through the GitHub Website

1. Create a new public repository without adding a README or license.
2. Select **Add file**, then **Upload files**.
3. Drag all files and folders from this portfolio into the upload area.
4. Enter the commit message `Create professional portfolio`.
5. Select **Commit changes**.

## Upload Through Git

Run these commands from inside the portfolio folder after replacing `YOUR_GITHUB_USERNAME`:

```bash
git init
git add .
git commit -m "Create professional portfolio"
git branch -M main
git remote add origin https://github.com/YOUR_GITHUB_USERNAME/naqimuddin-aqil-portfolio.git
git push -u origin main
```

## Recommended Customization

Before publishing:

1. Confirm that your email and LinkedIn URL are correct.
2. Replace the resume in `assets/` whenever it changes.
3. Add sanitized screenshots to `assets/screenshots/`.
4. Add repository links to source code only when the code is safe to publish.
5. Add your GitHub username to the Contact section.
6. Update the Google Cybersecurity Certificate status after completion.

## Pin Your Best Repositories

After publishing, pin up to six repositories on your profile. Recommended priorities:

1. This portfolio repository
2. AI-Powered Social Media Content Scheduler
3. Oyster Mushroom Farm Monitoring System
4. A Cisco networking lab repository
5. A cybersecurity lab repository
6. PID Control System Simulator

## Privacy Checklist

Do not upload:

- API keys, tokens, passwords, or `.env` files
- Customer or employee information
- Device serial numbers or asset lists
- Internal VSTECS or MOE documents
- School contact details or deployment forms
- Proprietary software images or licensed installation media
- Screenshots that expose IP addresses, credentials, or private network details

Use sample data, blurred screenshots, redacted configuration files, and recreated diagrams where necessary.

