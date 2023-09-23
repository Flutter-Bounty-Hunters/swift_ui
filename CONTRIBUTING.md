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

### Document Something
If anything contributions make it into this package without useful documentation, consider adding or improving that documentation.

### Post to Social Media
If you think that some of the widgets in this toolkit are neat, or you build something interesting with these widgets, post a screenshot or video to social media to spread the word.

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
 * Use the same artifact names as Swift UI, when possible, e.g., an `HStack` widget, `VStack` widget, `Table` widget, etc.
   * If a Swift UI name has a significant naming conflict, choose the least bad alternative, e.g., `ListView` instead of `List` because `List` is a core Dart data type.
 * Include Dart Docs for all non-trivial public classes, methods, properties, and functions.
   * When possible, consider using descriptions similar to those in the Swift UI documentation.
 * Include Dart Docs for tricky private classes, methods, properties, and functions.
 * Include Code comments for any tricky segment of code.
 * Use file and directory packaging that matches existing project practices.

### API Paradigm
It's well known among Flutter and Swift UI developers that each toolkit uses a fundamentally different composition paradigm.

Flutter explicitly composes a widget tree from the outside in. Swift UI implicitly composes a view tree, using modifier methods, from the inside out.

The goal of the `swift_ui` package is to replicate the user experience (UX) of Swift UI, **NOT** the inside-out composition paradigm. Flutter's existing widget composition paradigm should be sufficient to reasonably accomplish all Swift UI cloning goals.

Contributions that attempt to switch from Flutter's standard widget composition paradigm, to an extension method builder paradigm, will be rejected.

### New Concepts and Re-used Concepts
Sometimes it makes sense to duplicate an existing Flutter concept in `swift_ui`, and other times it doesn't.

As a guiding principle, any Swift UI view should be cloned by a widget in `swift_ui`, even if Flutter already has a similar widget. For example, Swift UI has a `VStack` which is conceptually similar to Flutter's `Column`. Despite the similarity, `swift_ui` should introduce a `SwiftUiVStack` widget.

Some Swift UI types will be very similar to Flutter types, but slightly different. For example, Swift UI defines `VerticalAlignment` which is very similar to Flutter's `CrossAxisAlignment`. However, `VerticalAlignment` includes a `firstTextBaseline` and `lastTextBaseline`, while Flutter only offers a single `baseline`. As such, `swift_ui` should create `SwiftUiVerticalAlignment` to match Swift UI.

In cases where a Swift UI type introduces nothing of value beyond an existing Flutter type, use the existing Flutter type instead of creating a new type. For example, a `CGFloat` should be represented by a Dart `double`, a Swift UI `EdgeInsets` should be represented by a Flutter `EdgeInsets`, etc.

### Don't Reference Material Design
The goal of this package is to prove Flutter's ability to render Apple-style user interfaces, when needed. Ideally, this goal will ease the transition for Apple developers over to Flutter.

Apple developers are notoriously tribal. If they see any reference to Material Design anywhere in the code, it might trigger them to run away, because they think that using Material Design means they're embracing Google and Android.

Though it may take some extra work to pull it off, `swift_ui` should avoid importing any files from Material. If Material artifacts are required, consider copying them from Flutter into this package.