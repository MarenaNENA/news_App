# 📰 News App

A Flutter application that displays the latest news from an online API using **Dio**, with category-based browsing and an integrated **WebView** for reading full articles.

---

## 🚀 Features
- 🌍 Fetches real-time news from an API  
- 🗂️ Browse news by categories (Business, Sports, Health, Technology...)  
- 📰 View full articles directly in the app using WebView  
- ⚡ Uses FutureBuilder for async data fetching  
- 💎 Clean and modern UI built with reusable custom widgets  

---

## 🛠️ Technologies Used
- **Flutter** 🩵  
- **Dart**  
- **Dio** for HTTP requests  
- **WebView** for article display  

---

## ⚙️ Installation
```bash
# Clone the repository
git clone https://github.com/MarenaNENA/news_App.git

# Go into the project folder
cd news_App

# Install dependencies
flutter pub get

# Run the app
flutter run

---

## ⚙️Folder Structure
lib/
 ┣ models/
 ┃ ┗ artical_model.dart
 ┣ services/
 ┃ ┗ news_api.dart
 ┣ views/
 ┃ ┣ news_view.dart
 ┃ ┗ news_list.dart
 ┣ categories/
 ┃ ┗ artical_card.dart
 ┗ main.dart

