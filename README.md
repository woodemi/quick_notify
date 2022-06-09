# DEPRECATED

This repo is deprecated; please use the new mono repo https://github.com/woodemi/quick.flutter

# quick_notify

A cross-platform (Android/iOS/Web/Windows/macOS/Linux) notification plugin for Flutter

## Usage

### Handle permisson

```dart
var hasPermission = await QuickNotify.hasPermission();
print('hasPermission $hasPermission');
```

```dart
var requestPermission = await QuickNotify.requestPermission();
print('requestPermission $requestPermission');
```

### Post notification

```dart
QuickNotify.notify(
  title: 'My title',
  content: 'My content',
);
```
