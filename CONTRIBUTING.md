# Contributing
This guide describes opportunities for contribution to this project, as well as contribution policies.

## Ways to Help
There are both technical and non-technical opportunities to help the `swift_ui` package.

### Add to the UX Spec
`swift_ui` is a clone of Apple UX. Apple doesn't publish a specification for its UX. Therefore, the quality of `swift_ui` is limited by the quality of observation of Apple's Swift UI implementation. Before `swift_ui` implements a new widget, this project needs to log a clear visual specification of the expected result.

It would be a big help if you were to capture a clear specification for a given Swift UI widget, screen, or flow. See the existing specification to learn more.

### Implement Something
Once a widget, screen, or flow is spec'd out, based on visible Apple behavior, that specification needs to be implemented in this package.

### Test Something
Implementations are expected to include tests, but it's easy to miss things along the way. If a user-visible feature is un-tested, then it would be helpful to add appropriate tests to lock down that feature.

### Post to Social Media
If you think that some of the widgets in this toolkit are neat, or you buid something interesting with these widgets, post a screenshot or video to social media to spread the word.

### Publish Videos
Consider publishing videos to YouTube, Rumble, or Twitter, demonstrating your contributions to, or use of the `swift_ui` package.

## Repository Practices
Please follow these rules when interacting with this project's repository.

### Filing Issues
There's no extra time to figure out what an issue means. All issue tickets should be clear, concise, and actionable. Any issue that fails to meet this bar will be closed, so that contributors use their time effectively.

A ticket to implement a new widget, screen, or flow, must include a complete specification for the desired layout, rendering, and user interactions. See [Add to the UX Spec] above.

A ticket to fix a bug must include a minimal reproduction of the bug, a description of expected behavior, and a description of actual behavior.

### Submitting Pull Requests (PRs)
Code review is a difficult and tedious task. All contributing developers are expected to make it as easy as possible to review their code, and also submit code that's clearly documented so that it may be extended or fixed in the future.

Each PR should include:
 * A meaningful title.
 * A description of the problem being solved.
 * A description of how the problem was solved.
 * An image or video of what was implemented.

## Coding Practices
The following coding practices should be followed unless there are significant and exceptional reasons to violate these policies.

### Style
 * Run `dartfmt` formatting with a line length of 120 characters.
 * Name a direct Swift UI analog with a `SwiftUi` prefix, e.g., "Form" as "SwiftUiForm", "Section" as "SwiftUiSection".
 * Include Dart Docs for all non-trivial public classes, methods, properties, and functions.
 * Include Dart Docs for tricky private classes, methods, properties, and functions.
 * Include Code comments for any tricky segment of code.
 * Use file and directory packaging that matches existing project practices.
