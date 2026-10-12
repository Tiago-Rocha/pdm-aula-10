# pdm-aula-10 · Mini-project: Trilhos (trails)

Repository for lesson 10 of PDM (Mobile Device Programming), CTeSP DAW, ESTA, University of the Azores, 2026/27.

This is the first graded assignment, and it is individual. You start from this repository: Tempo Açores with its three tabs, and the walking trails of the Azores already in `lib/data.dart`.

**The tasks are in the lesson 10 slides:** https://tiago-rocha.github.io/pdm-aulas/aulas/aula-10.html (English: https://tiago-rocha.github.io/pdm-aulas/en/aulas/aula-10.html).

## Getting started

Do not clone this repository. Create your own private copy from it:

1. Signed in to GitHub, open this page, click the green **Use this template** button and choose **Create a new repository**.
2. **Owner**: you. **Repository name**: `pdm-miniprojeto`. Set the visibility to **Private**. Leave "Include all branches" off. **Create repository**.
3. In your new repository, open **Settings**, then **Collaborators**, click **Add people**, type `Tiago-Rocha` and click **Add**. Without this, the teacher cannot see your work.
4. Still in **your** repository, click the green **Code** button, open the **HTTPS** tab and copy the URL. It is yours, with your username (`https://github.com/<your-username>/pdm-miniprojeto.git`), and it only exists after step 1.
5. In a terminal, go to your work folder (`C:\dev`, never inside OneDrive) and clone it, pasting the URL you copied:

   ```bash
   cd C:\dev
   git clone https://github.com/<your-username>/pdm-miniprojeto.git
   cd pdm-miniprojeto
   flutter pub get
   ```

   If the browser opens and asks for access to GitHub, allow it. If the terminal asks for a password, it wants a GitHub token, not your account password.
6. Open the `pdm-miniprojeto` folder in VS Code (**File**, **Open Folder**). Pick a device (Android or Chrome) and press F5.
7. **First commit, done in class all together:** open this `README.md` and write on the first line, with your name and student number:

   ```markdown
   **Student:** Maria Silva Medeiros · 2024123
   ```

   Then **Commit** with the message `Student name in the README` and **Sync Changes** (see below). Open your repository on GitHub: your name shows at the top. This is how the teacher knows whose repository it is.

## Saving your work: one commit per task

Every time you finish a task, even if it is not perfect:

1. **Source Control** view (`Ctrl+Shift+G`).
2. Write a message that says what changed, for example `Trilhos tab with its routes`.
3. **Commit**, then **Sync Changes**. Sync sends it to GitHub.
4. Refresh your repository page on GitHub and check that the commit is there.

## Submission and grading

**Today, in lesson 10:** you create the repository from the template, invite the teacher as a collaborator, make the first commit with your name and start the tasks.

**Deadline: Wednesday, 14 October, at 16:00** (start of lesson 12). What counts is the last commit on GitHub at that time. Whatever is only on your laptop does not count: always **Sync**.

There is nothing to upload: **the submission is your repository on GitHub**. The teacher finds it through the collaborator invitation. No invitation and no name at the top of the README, no submission.

The mini-project is worth **2 points** (10 % of the final grade), **0.5 for each of the four tasks** in the slides. If the app does not compile, the grade is 0.

You may ask the teacher and look up anything you like, including AI. But the teacher may ask you, in class, to explain your code. Code you cannot explain does not count.
