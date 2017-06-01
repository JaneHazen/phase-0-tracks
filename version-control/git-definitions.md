# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a system that picks up changes over time. By using this, developers can track their changes so that they can have multiple people working on different problems at the same time or reverse changes that were not effective. It is also a "safe" way to try out new code.

* What is a branch and why would you use one?

Branches are separate work lines where code can be modified without affecting the master block. If the changes are effective, they may be merged into the master work line later. This is a good way to test out new code without affecting the entire product.

* What is a commit? What makes a good commit message?

Commits are a saved space, like when you stop a game and can come back to a specific spot again. It means that you have committed the modified code to the full product. Therefore, it is important to always leave a message highlighting which section of the code you have modified and list the changes. If you want to change a commit message before it has been published you can use the following commands: git commit —amend -m “message”

* What is a merge conflict?

If you are attempting to merge branches which are in conflict with each other, the computer will put up “conflict markers” at the point of disagreement in changes. Then it is up to you to decide how to resolve the issue. Merge conflicts could be resolved by squishing the two lines of conflicting codes on top of one another so they are no longer functioning in the same place or by getting rid of another line, but they will definitely need you to make a decision to resolve. 