# 🎨 Storytold Craft Suite for Linux

> **Universal Linux Desktop Integration, AppImage Launchers, and High-DPI Assets for the [Storytold](https://github.com/storytold) Pure-Rust Creative Suite.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform: Linux](https://img.shields.io/badge/Platform-Linux%20%7C%20Wayland%20%7C%20X11-success.svg)]()
[![Pure Rust](https://img.shields.io/badge/Built%20With-Pure%20Rust-orange.svg)]()

The **Storytold Craft Suite** is an ambitious, clean-room reimplementation of professional creative and productivity desktop software written entirely in **pure Rust**.

This repository provides **first-class Linux desktop integration**: official XDG `.desktop` entries, 1024×1024 high-DPI brand icons, smart CLI wrappers, and automatic AppImage bootstrapping for all 13 apps.

---

## 📦 The Craft Suite Matrix

| Application | Role & Pure-Rust Engine | Proprietary Equivalent | CLI Command |
| :--- | :--- | :--- | :--- |
| **PhotoCraft** | Raster image editor, layered PSD, retouching | **Adobe Photoshop** | `photocraft` |
| **VectorCraft**| Vector illustration, bezier paths, SVG/AI | **Adobe Illustrator** | `vectorcraft` |
| **FilmCraft** | Multi-track timeline video editor & grading | **Adobe Premiere Pro** | `filmcraft` |
| **SoundCraft** | Digital Audio Workstation (DAW), mixing | **Avid Pro Tools** | `soundcraft` |
| **LightCraft** | Non-destructive RAW photo grading & catalog | **Adobe Lightroom** | `lightcraft` |
| **CADCraft** | 2D/3D parametric modeling & drafting (DWG) | **Autodesk AutoCAD** | `cadcraft` |
| **WordCraft** | High-performance document typography & DOCX | **Microsoft Word** | `wordcraft` |
| **GridCraft** | High-speed spreadsheet processor & formulas | **Microsoft Excel** | `gridcraft` |
| **DeckCraft** | Modern slide presentation & animation studio | **Microsoft PowerPoint** | `deckcraft` |
| **PdfCraft** | PDF document studio, annotation, forms & OCR | **Adobe Acrobat** | `pdfcraft` |
| **DesignCraft**| Editorial layout & desktop publishing (Figma) | **Adobe InDesign** | `designcraft` |
| **EffectCraft**| Motion graphics, node compositing & VFX | **Adobe After Effects** | `effectcraft` |
| **ArtCraft Hub**| Central launcher, installer & suite manager | **Creative Cloud** | `artcraft-launcher` |

---

## 🚀 Quick Install

Install the entire suite and desktop integration with one command:

```bash
git clone https://github.com/apravint/storytold-craft-linux.git ~/.storytold-craft-linux
~/.storytold-craft-linux/install.sh
```

---

## ⚡ Smart Runner Architecture

The [`craft-app-runner`](bin/craft-app-runner) script dynamically evaluates your system:
1. Checks for local pre-compiled Rust binaries in `/usr/local/bin` or `~/.local/bin`.
2. Seamlessly bootstraps the native **ArtCraft Launcher AppImage**.
3. Integrates with desktop notification daemons (`notify-send`) and Wayland window managers.

---

## 📄 License

Desktop integration scripts, assets, and packaging are released under the [MIT License](LICENSE).  
The underlying Craft Suite applications are developed open-source by [Storytold](https://github.com/storytold).
