# 🛍️ Shop App Task

A simple Flutter project designed as a shopping app task.  
It allows managing products locally using **SQLite** and state management through **BLoC** architecture.

---

## 📱 Overview

**Shop App Task** is a practical Flutter project built to demonstrate:
- Managing products (add / edit / delete / view)
- Local data storage using **Sqflite**
- Clean architecture with **BLoC pattern**
- Responsive and modern UI design
- Well-organized folder structure for scalability and maintainability

---

## 🧱 Project Structure

lib/
├── main.dart # Entry point of the app
├── core/ # Constants, helpers, and utility functions
├── presentation/ # UI screens and widgets
├── data/ # Models and local database operations
├── logic/ # State management (BLoC / Cubit files)
│ ├── screens/
│ └── widgets/
└── assets/

🧠 Features

✅ State management using BLoC

✅ Local data storage with Sqflite

✅ CRUD operations on products

✅ Clean and responsive UI

✅ Custom icons and fonts

🧩 Dependencies
- flutter_svg (^2.2.1) --->	Renders SVG files in Flutter widgets.
- path (^1.9.0) --->	Provides utilities for working with file and directory paths.
- sqflite (^2.3.0) --->	SQLite database plugin for local data persistence.
- flutter_bloc  ---> (^9.1.1)	State management library implementing the BLoC pattern.


---

## ⚙️ Getting Started

### 1️⃣ Clone the repository
```bash
git clone https://github.com/mhaz10/shop_task.git
```
2️⃣ Navigate to the project directory
```bash
cd shop_task
```
3️⃣ Install dependencies
```bash
flutter pub get
```
4️⃣ Run the application
```bash
flutter run
```
