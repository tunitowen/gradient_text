# GradientText

A Flutter Widget for displaying gradient text, text with a gradient drawn through it.

![GradientTextScreenshot](https://github.com/tunitowen/gradient_text/raw/master/gradient_text_screenshot.png "GradientText Example Screenshot")

# Getting Started

Add the plugin (pub coming soon):

```yaml
dependencies:
  ...
  gradient_text: ^1.0.2
```

# Usage

Import it:

```dart
import 'package:gradient_text/gradient_text.dart';
```

Use it:

```dart
GradientText("this is my text",
    gradient: LinearGradient(
    colors: [Colors.deepPurple, Colors.deepOrange, Colors.pink]),
    style: TextStyle(fontSize: 42),
    textAlign: TextAlign.center);
```

Parameters:

**data** :: (required) :: The `String` to be used in the `Text` Widget

**gradient** :: (required) :: A gradient to be drawn through the text

**style** :: (optional) :: `TextStyle` to be used in the `Text` Widget. Color is ignored, as the text must be white to have the gradient drawn.

**textAlign** :: (optional) :: `TextAlign` to be used in the `Text` Widget. Default is left.

# Credit

The idea to use `ShaderMask` came from Reddit user boformer. Thanks boformer.