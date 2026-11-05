ASP.NET Core Razor Pages - CRUD Application with Image Management

A web application built using ASP.NET Core Razor Pages that demonstrates full CRUD (Create, Read, Update, Delete) operations, including image uploading, rendering, updating, and file deletion handling.

🚀 Features

📝 Create: Add new records with associated details and upload image files directly from your computer.

📋 Read: View a list of all records with thumbnail previews, as well as detailed individual view pages.

✏️ Update: Edit existing record data, with the option to keep the current image or replace/upload a new one.

🗑️ Delete: Remove records along with their stored image files to maintain clean storage.

🖼️ File Upload Management: Handles file validation, storage in wwwroot, and updates physical paths safely.

🛠️ Tech Stack & Frameworks

Framework: ASP.NET Core / Razor Pages (.NET Core / .NET Framework)

Language: C#

Front-End: HTML5, CSS3, Razor Syntax, Bootstrap

Data Access / ORM: Entity Framework Core

Database: SQL Server / LocalDB (or your configured database provider)

📂 Key CRUD & Image Operations Workflow

Create (/Create / OnPostAsync):

Uploads incoming IFormFile images to wwwroot/images/ (or designated media uploads directory).

Generates unique filenames (e.g., using Guid.NewGuid()) to avoid duplicate file name collisions.

Saves relative file path to the database.

Read (/Index & /Details):

Fetches and renders record details alongside dynamic HTML <img> tags pointing to relative stored image paths.

Update (/Edit):

Allows changing text values without requiring re-uploading existing images.

Replaces the old file with the new file on disk if a new image file is provided.

Delete (/Delete):

Removes entity metadata from the database.

Deletes the physically stored image file from wwwroot to avoid orphan files.

📋 Prerequisites

Before running this project, ensure you have the following installed:

.NET SDK (Version 6.0, 7.0, or 8.0+)

Visual Studio 2022 (with ASP.NET and web development workload)

SQL Server / LocalDB

⚙️ Getting Started

1. Clone the Repository

git clone https://github.com/your-username/your-repository-name.git
cd your-repository-name


2. Configure Database Connection

Open appsettings.json and update the connection string to match your database instance:

"ConnectionStrings": {
  "DefaultConnection": "Server=(localdb)\\mssqllocaldb;Database=Lab_08_Db;Trusted_Connection=True;MultipleActiveResultSets=true"
}


3. Run Database Migrations

Open the Package Manager Console or Terminal in Visual Studio and run:

dotnet ef database update


(Alternatively, execute your SQL scripts if using direct SQL setup).

4. Build & Run

Run the application via Visual Studio by pressing F5 or execute the following CLI command:

dotnet run


Navigate to https://localhost:xxxx in your browser.

🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the issues page if you want to contribute.


This project is open-source and available under the MIT License.
