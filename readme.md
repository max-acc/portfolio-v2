# Personal Portfolio Website

This repository contains the source code for my personal portfolio website, which dynamically loads project information and supports multi-language content (English and German). The website showcases various projects with detailed descriptions, technologies used, and links to live demos and GitHub repositories.

## Features

- **Multi-language Support**: The website supports English (`en`) and German (`de`). Users can switch between the two languages using a toggle button in the header.
- **Dynamic Content**: Both the language-specific content and project details are fetched from a MySQL database and displayed dynamically.
- **Project Pop-ups**: Each project is shown in a pop-up window with detailed information, including a description, technologies used, and external links to the project’s GitHub repository and live demo.
- **Responsive Design**: The site is fully responsive, providing a seamless user experience across desktop, tablet, and mobile devices.
- **Technology Badges**: Projects are tagged with the relevant technologies used (e.g., PHP, JavaScript, Python, Machine Learning).

## Technologies Used

- **Front-end**: HTML, CSS, JavaScript
- **Back-end**: PHP
- **Database**: MySQL
- **Languages Supported**: English, German

## Installation

### Prerequisites

Before getting started, ensure you have the following installed:

- [PHP](https://www.php.net/)
- [MySQL](https://www.mysql.com/)
- A web server like [Apache](https://httpd.apache.org/) or a local server environment like [XAMPP](https://www.apachefriends.org/index.html)

### Steps

1. **Clone the repository**:  
   ```bash  
   git clone https://github.com/yourusername/portfolio-website.git  
   ```

2. **Navigate to the project directory**:  
   ```bash  
   cd portfolio-website  
   ```

3. **Database Setup**:
   - Import the provided SQL files into your MySQL database. The SQL files define two tables: `language-db` and `project-db`.

   Example SQL file setup:  
   ```sql  
   CREATE TABLE `language-db` (  
     `id` INT AUTO_INCREMENT PRIMARY KEY,  
     `descriptor` VARCHAR(255),  
     `en` TEXT,  
     `de` TEXT  
   );  

   CREATE TABLE `project-db` (  
     `id` INT AUTO_INCREMENT PRIMARY KEY,  
     `descriptor` VARCHAR(255),  
     `name` VARCHAR(255),  
     `technology` TEXT,  
     `description` TEXT,  
     `link-img` TEXT,  
     `link-webpage` TEXT,  
     `link-github` TEXT  
   );  
   ```

4. **Update the database configuration**:  
   Edit the database connection settings in `config/config.php`:  
   ```php  
   $link = new mysqli("localhost", "your_username", "your_password", "your_database_name");  
   ```

5. **Start a local PHP server**:  
   ```bash  
   php -S localhost:8000  
   ```

6. **Open your browser** and navigate to `http://localhost:8000` to view the website.

## Usage

- **Homepage**: Upon visiting the homepage, users are greeted with a welcome message, profile image, and links to GitHub and LinkedIn profiles. The content is displayed based on the selected language (English or German), which is dynamically loaded from the database.

- **Project Pop-ups**: Projects are showcased with images and brief descriptions. Clicking on a project opens a pop-up with detailed information, including:
  - A longer project description
  - Technologies used (displayed as badges)
  - Links to the live demo and the GitHub repository

- **Language Toggle**: The language can be switched between English and German by clicking on the flag icon located in the header. The language preference is stored in the session, and the content is reloaded accordingly.

### Example of Dynamic Content Loading

```php  
<p><?php echo $languageBody[array_search('prelanding-left-hey', array_column($languageBody, 'descriptor'))][$lang]; ?></p>  
```

This code fetches the relevant translation for the descriptor `prelanding-left-hey` based on the selected language (`$lang`), displaying the correct language content dynamically.

## Database Structure

The portfolio website uses two MySQL tables to store content and project information.

### 1. `language-db`

This table stores the language-specific content for the website. Each entry contains a unique `descriptor`, and the corresponding text for both English (`en`) and German (`de`).

#### Example Table Schema:

```sql  
CREATE TABLE `language-db` (  
  `id` INT AUTO_INCREMENT PRIMARY KEY,  
  `descriptor` VARCHAR(255),  
  `en` TEXT,  
  `de` TEXT  
);  
```

### 2. `project-db`

This table holds information about the projects displayed on the website. It includes the project name, technologies used, descriptions, images, and links to the live demo and GitHub repository.

#### Example Table Schema:

```sql  
CREATE TABLE `project-db` (  
  `id` INT AUTO_INCREMENT PRIMARY KEY,  
  `descriptor` VARCHAR(255),  
  `name` VARCHAR(255),  
  `technology` TEXT,  
  `description` TEXT,  
  `link-img` TEXT,  
  `link-webpage` TEXT,  
  `link-github` TEXT  
);  
```

- **`name`**: The name of the project.
- **`technology`**: A semicolon-separated list of technologies used in the project.
- **`description`**: A detailed project description.
- **`link-img`**: URL to the project's image.
- **`link-webpage`**: Link to the live demo or website of the project.
- **`link-github`**: Link to the GitHub repository of the project.

## Project Structure

The project is organized into several directories and files, as shown below:

portfolio-website/
│
├── config/
│   └── config.php          # Database configuration file
├── img/                    # Directory for images used on the website
│   └── profile.jpg         # Example profile image
├── style/                  # Directory for CSS stylesheets
│   ├── style.css           # Main stylesheet for the entire website
│   └── index.css           # Styles specific to the index page
├── script.js               # JavaScript file for front-end functionality
├── index.php               # Main PHP file (homepage) with dynamic content
└── README.md               # Project documentation (this file)



- **`config/`**: Contains the database configuration (`config.php`), where the MySQL connection details are set.
- **`img/`**: Stores the images used on the site, such as the profile picture and project images.
- **`style/`**: Contains the CSS files that define the styling of the website.
- **`script.js`**: Handles JavaScript interactions such as pop-up animations.
- **`index.php`**: The entry point for the website, handling language switching, fetching project details, and displaying content dynamically.

## Contributing

Contributions to this project are welcome! If you'd like to add new features, fix bugs, or improve the design, follow these steps:

1. Fork the repository.
2. Create a new branch for your feature:  
   ```bash  
   git checkout -b feature-branch  
   ```
3. Make your changes and commit them:  
   ```bash  
   git commit -m "Add a new feature"  
   ```
4. Push your branch:  
   ```bash  
   git push origin feature-branch  
   ```
5. Submit a pull request for review.

Please ensure that your code follows the existing style and structure of the project. Contributions will be reviewed before being merged.

## License

This project is licensed under the MIT License. You can freely use, modify, and distribute this software in accordance with the terms of the license.

See the [LICENSE](LICENSE) file for more details.
