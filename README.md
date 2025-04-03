<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
</head>
<body>

  <h1>Flutter GetX News App</h1>
  <p>This project is a Flutter-based news app built using <strong>GetX</strong> for state management and <strong>HTTP</strong> for fetching news data from an API. It demonstrates the use of <strong>OBX</strong>, <strong>RxList</strong>, and <strong>Controller</strong> to manage the app’s state and perform network requests. The app supports both <strong>Light</strong> and <strong>Dark</strong> themes, allowing users to toggle between them seamlessly.</p>

  <h2>Screenshots</h2>
  <p>Here are the screenshots of the app showcasing the <strong>Light</strong> and <strong>Dark</strong> themes:</p>

  <div>
    <img src="https://github.com/Bugrakaraahmetoglu/Flutter-GetX-NewsApp/blob/main/screenshots/dark_theme_homePage.png" alt="Dark Theme HomePage" width="45%" style="margin-right: 5%">
    <img src="https://github.com/Bugrakaraahmetoglu/Flutter-GetX-NewsApp/blob/main/screenshots/dark_theme_DetailPage.png" alt="Dark Theme DetailPage" width="45%">
  </div>

  <div>
    <img src="https://github.com/Bugrakaraahmetoglu/Flutter-GetX-NewsApp/blob/main/screenshots/light_theme_homePage.png" alt="Light Theme HomePage" width="45%" style="margin-right: 5%">
    <img src="https://github.com/Bugrakaraahmetoglu/Flutter-GetX-NewsApp/blob/main/screenshots/light_theme_DetailPage.png" alt="Light Theme DetailPage" width="45%">
  </div>

  <h2>Features</h2>
  <ul>
    <li><strong>GetX State Management</strong>: Efficiently manage the app’s state using GetX, allowing for reactive programming with <strong>RxList</strong>.</li>
    <li><strong>HTTP Requests</strong>: Fetch news articles using the <strong>HTTP</strong> package with <strong>GET</strong> requests.</li>
    <li><strong>Light & Dark Themes</strong>: The app supports both light and dark themes, automatically switching based on user preferences or system settings.</li>
    <li><strong>Data Transfer Between Pages</strong>: Data is passed seamlessly between pages using GetX controllers, ensuring smooth transitions and easy data handling.</li>
    <li><strong>Responsive UI</strong>: The UI adapts based on screen size, ensuring a smooth experience on both phones and tablets.</li>
  </ul>

  <h2>How It Works</h2>
  <h3>State Management with GetX</h3>
  <p><strong>GetX</strong> is used to manage the application’s state. We utilize <strong>Controller</strong> classes for handling business logic, and <strong>RxList</strong> is used for managing dynamic lists of articles fetched from the News API.</p>

  <h3>Fetching Data</h3>
  <p>The <strong>HTTP</strong> package is used to send <strong>GET</strong> requests to the News API and retrieve news data in a structured format. The data is then displayed on the homepage and detailed pages.</p>

  <h3>Themes</h3>
  <p>The app supports <strong>Light</strong> and <strong>Dark</strong> modes, which can be toggled based on the system theme or manually via a settings option. The UI adapts accordingly for a seamless user experience.</p>

  <h2>Dependencies</h2>
  <ul>
    <li><strong>GetX</strong>: For state management and reactive programming.</li>
    <li><strong>HTTP</strong>: For making network requests to fetch news data.</li>
    <li><strong>Flutter</strong>: The framework used to build the app.</li>
  </ul>

  <h2>Installation</h2>
  <p>To run the app locally, follow these steps:</p>
  <ol>
    <li>Clone the repository:
      <pre><code>git clone https://github.com/Bugrakaraahmetoglu/Flutter-GetX-NewsApp.git</code></pre>
    </li>
    <li>Install dependencies:
      <pre><code>flutter pub get</code></pre>
    </li>
    <li>Run the app:
      <pre><code>flutter run</code></pre>
    </li>
  </ol>

  <h2>Conclusion</h2>
  <p>This app demonstrates a simple yet efficient way to build a news app with Flutter using GetX for state management and HTTP for fetching data. The theme switching between <strong>Light</strong> and <strong>Dark</strong> modes ensures a flexible user experience, and the app showcases the power of GetX for handling complex state changes and data flows.</p>

</body>
</html>
