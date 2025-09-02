# Trust This App (macOS Quick Action)

A Finder Quick Action that makes it easy to run downloaded apps blocked by
Gatekeeper. It removes the `com.apple.quarantine` attribute and applies an
ad-hoc codesign so the app can launch normally.

<p align="center">
  <img width="372" height="362" alt="Damaged app warning" src="https://github.com/user-attachments/assets/d7792a7b-53b7-4cfb-b5ac-7d042f231c46" />
</p>

When you try to launch an app downloaded from the internet, macOS shows a
"damaged" warning instead of the truth, that the app is simply not notarized
and has been quarantined. This Quick Action exists to work around that problem.

Tested on macOS Sequoia. Very likely to break in future macOS releases.

The workflow is based on a simple shell script that can be found in
`document.wflow` file.

## Installation

Clone the repo and copy the workflow into your `~/Library/Services` folder:

```bash
git clone https://github.com/localhots/trust-this-app.git
cp -R trust-this-app/"Trust This App.workflow" ~/Library/Services/
```

Finder will pick it up immediately and if not, run `killall Finder`.

To uninstall simply delete the workflow directory.

## Usage

Right-click an .app bundle in Finder. Select Quick Actions, Trust This App.

> [!WARNING]
> Only suitable for personal use.
> 
> Keep in mind that this bypasses built-in operating system protections
> against malicious apps.
> 
> Use at your own risk.
