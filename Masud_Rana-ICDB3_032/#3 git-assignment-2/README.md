<!--
*** Md. Masud Rana
*** Mail: MasudRana799dev@gmail.com
*** The design of this template took my 1 day  - learning markdown concept and make this file.
*** Happy Learning, Happy Coding.
[![Made with love by Masud Rana][madewith-shield]][linkedin-url]
[![status][status-shield]][linkedin-url]
[![Laravel][laravel-shield]][laravel-url]
[![PHP][php-shield]][php-url]
[![lumen][lumen-shield]][lumen-url]
[![Vue js][vue-shield]][vue-url]
[![NPM][npm-shield]][npm-url]
[![Node Js][nodejs-shield]][nodejs-url]
[![javascript][javascript-shield]][javascript-url]
[![bootstrap][bootstrap-shield]][bootstrap-url]
<a href="https://en.wikipedia.org/wiki/Bangladesh"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/800px-Flag_of_Bangladesh.svg.png" alt="Logo" width="40" height="20"> </a>
[![My LinkedIn Profile][linkedin-shield]][linkedin-url]
[![Gmail][gmail-shield]][gmail-url]
-->

# Git assignment - 2

> **Note:** Instructions in assignment_instruction.txt

[![Made with love by Your Name][madewith-shield]][linkedin-url]
[![status][status-shield]][linkedin-url]

<a href="https://en.wikipedia.org/wiki/Bangladesh"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/800px-Flag_of_Bangladesh.svg.png" alt="Logo" width="40" height="20"> </a>
[![My LinkedIn Profile][linkedin-shield]][linkedin-url]
[![Gmail][gmail-shield]][gmail-url]

---

## About This File

This document provides a comprehensive guide to managing Git repositories, covering topics such as branch creation, feature development, pull requests, and final submissions. The examples include practical Git commands to streamline development workflow.

---

## Table of Contents

1. [Initialize the Git Repository](#initialize-the-git-repository)
2. [Feature-1 Branch](#feature-1-branch)
3. [Feature-2 Branch](#feature-2-branch)
4. [Create and Merge Pull Requests](#create-and-merge-pull-requests)
5. [Cleanup](#cleanup)
6. [Final Submission](#final-submission)

## **Initialize the Git Repository**

### Create a directory and initialize it as a Git repository:

```bash
  mkdir devops_git_assignment2
  cd devops_git_assignment2
  git init
```

### Add a README.md file:

```bash
    echo "# DevOps Git Assignment 2" > README.md
```

### Stage and commit the file:

```bash
  git add README.md
  git commit -m "Initial commit with README.md"
```

### Connect the repository to a remote and push:

```bash
  git remote add origin https://github.com/Masud99Rana/devops_git_assignment2.git
  git branch -M main
  git push -u origin main
```

## Feature-1 Branch

### Create and switch to the feature-1 branch:

```bash
  git checkout -b feature-1
```

### Make changes and commit them:

```bash
    echo "Feature-1 changes" > feature-1.txt
    git add feature-1.txt
    git commit -m "Add feature-1.txt with initial content"
```

### Push the branch to the remote:

```bash
    git push -u origin feature-1
```

## Feature-2 Branch

### Switch back to the main branch:

```bash
  git checkout main
```

### Create and switch to the feature-2 branch:

```bash
    git checkout -b feature-2
```

### Make changes and commit them:

```bash
  echo "Feature-2 changes" > feature-2.txt
  git add feature-2.txt
  git commit -m "Add feature-2.txt with initial content"
```

### Push the branch to the remote:

```bash
  git push -u origin feature-2
```

## Create and Merge Pull Requests

##### Create pull requests on GitHub to merge feature-1 and feature-2 into main.

##### Update each branch with the latest changes from main before merging ( Rebase Feature Branches ):

### Rebase feature-1 with the latest changes from main:

```bash
    git checkout feature-1
    git fetch origin
    git rebase origin/main
    git push origin feature-1 --force
```

### Rebase feature-2 with the latest changes from main:

```bash
    git checkout feature-2
    git fetch origin
    git rebase origin/main
    git push origin feature-2 --force
```

## Cleanup

### Delete the merged feature-1 branch locally and remotely:

```bash
  git checkout main
  git branch -d feature-1
  git push origin --delete feature-1
```

### Delete the merged feature-2 branch locally and remotely:

```bash
  git checkout main
  git branch -d feature-2
  git push origin --delete feature-2
```

## Review the Commit History:

### Check the commit history to ensure it is clean and linear:

```bash
  git pull origin
  git log --oneline --graph --decorate
```

## Final Submission

### Commit and push the final version:

```bash
  git add README.md assignment_instruction.txt
  git commit -m "Add commands used to README.md and assignement instruction"
  git push origin main
```

<!-- CONTACT -->

## Contact

### Md. Masud Rana

[![My LinkedIn Profile][linkedin-shield]][linkedin-url]
[![Gmail][gmail-shield]][gmail-url]

## Heartiest Thanks

- Thank you so much! :sparkling_heart:
- Special thanks for reviewing this README and providing feedback!

<!-- MARKDOWN LINKS & IMAGES -->
<!--  https://github.com/tchapi/markdown-cheatsheet -->
<!-- https://www.webfx.com/tools/emoji-cheat-sheet/ -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[masud-version]: https://img.shields.io/badge/Masud-v7.8.*-blue?style=flat-square
[status-shield]: https://img.shields.io/badge/Status-finished-success?style=flat-square
[laravel-shield]: https://img.shields.io/badge/laravel-v5.8-555.svg?style=flat-square&logo=laravel&labelColor=FF2D20&logoColor=fff
[laravel-url]: https://laravel.com
[vue-shield]: https://img.shields.io/badge/vue.js-v2.8-black.svg?style=flat-square&logo=vue.js&color=#4FC08D
[vue-url]: https://vuejs.org/
[php-shield]: https://img.shields.io/badge/php-v2.8-555.svg?style=flat-square&logo=php&labelColor=777BB4&logoColor=fff
[php-url]: https://php.net
[javascript-shield]: https://img.shields.io/badge/-JavaScript-555.svg?style=flat-square&logo=javascript&labelColor=F7DF1E&logoColor=fff
[javascript-url]: https://developer.mozilla.org/en-US/docs/Web/JavaScript
[lumen-shield]: https://img.shields.io/badge/Lemen-v1.7-555.svg?style=flat-square&logo=lumen&labelColor=E74430&logoColor=fff
[lumen-url]: https://lumen.laravel.com/
[npm-shield]: https://img.shields.io/badge/npm-v2.8-CB3837.svg?style=flat-square&logo=npm
[npm-url]: https://nodejs.org/en/
[nodejs-shield]: https://img.shields.io/badge/Node.Js-v1.7-555.svg?style=flat-square&logo=node.js&labelColor=339933&logoColor=fff
[nodejs-url]: https://nodejs.org/en/
[bootstrap-shield]: https://img.shields.io/badge/Bootstrap-v1.7-success.svg?style=flat-square&logo=bootstrap&labelColor=563D7C&logoColor=fff
[bootstrap-url]: https://getbootstrap.com/
[madewith-shield]: https://img.shields.io/badge/R-Made%20With%20Love-success?style=flat-square&labelColor=00cec9&logo=monzo&logoColor=fff&color=00b894
[linkedin-shield]: https://img.shields.io/badge/-MasudRana99mr-black.svg?style=flat-square&logo=linkedin&color=555
[linkedin-url]: https://www.linkedin.com/in/masudrana99mr
[gmail-shield]: https://img.shields.io/badge/-MasudRana799dev@gmail.com-555.svg?style=flat-square&logo=gmail&labelColor=D14836&logoColor=fff
[gmail-url]: mailto::MasudRana799dev@gmail.com

<!-- My Note -->
<!--
*** <img src="images/logo.png" alt="Logo" width="80" height="80">
***
*** [screenshot]: images/screenshot.png
*** [![Product Name Screen Shot][screenshot]](https://example.com)
***
***
***
***
