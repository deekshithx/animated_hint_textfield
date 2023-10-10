<h1 align="center">Animated Hint TextField</h1>

<p align="center">A Flutter package designed to animate the label/hint text of a textfield, providing suggestive guidance to the user regarding what to input. Try out our <a href="https://animated-hint.technexi.com/">example app</a>.</p><br>

# Installing

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  animated_hint_textfield: ^1.0.0
```

### 2. Install it

You can install packages from the command line:

with `pub`:

```
$ pub get
```

with `Flutter`:

```
$ flutter pub get
```

### 3. Import it

Now in your `Dart` code, you can use:

```dart
import 'package:animated_hint_textfield/animated_hint_textfield.dart';
```




<br><br>
# Animations

Currently this package supports 3 animations, more animations will be added in the future.

## Slide

<img src="https://github.com/deekshithx/animated-hint-textfield/blob/master/showcase/slide.gif?raw=true" align = "right" height = "300px">

```dart
AnimatedTextField(
  decoration: InputDecoration(
    prefixIcon: Icon(Icons.search),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2,
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2,
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    contentPadding: EdgeInsets.all(12),
  ),
  animationType: Animationtype.slide,
  hintTexts: [
    'Search for "Bengaluru"',
    'Search for "Mumbai"',
    'Search for "Chennai"',
  ],
);
```



## Fade

<img src="https://github.com/deekshithx/animated-hint-textfield/blob/master/showcase/fade.gif?raw=true" align = "right" height = "300px">

```dart
AnimatedTextField(
  decoration: InputDecoration(
    prefixIcon: Icon(Icons.search),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2,
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2,
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    contentPadding: EdgeInsets.all(12),
  ),
  animationType: Animationtype.fade,
  hintTexts: [
    'Search for "Bengaluru"',
    'Search for "Mumbai"',
    'Search for "Chennai"',
  ],
);
```

## Typer

<img src="https://github.com/deekshithx/animated-hint-textfield/blob/master/showcase/typer.gif?raw=true" align = "right" height = "300px">

```dart
AnimatedTextField(
  animationType: Animationtype.typer,
  hintTextStyle: const TextStyle(
    color: Colors.deepPurple,
    overflow: TextOverflow.ellipsis,
  ),
  hintTexts: const [
    'How is the weather today?',
    'Will it rain today?',
    'What is the temperature',
  ],
  decoration: InputDecoration(
    suffixIcon: const Icon(Icons.search),
    filled: true,
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red, width: 2),
      borderRadius: BorderRadius.circular(25),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black, width: 2),
      borderRadius: BorderRadius.circular(25),
    ),
    contentPadding: const EdgeInsets.all(12),
  ),
);
```
