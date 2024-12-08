<?php
$servername = "172.16.1.3";
$username = "sad";
$password = "cibersad";
$database = "sampledb";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query the database
$sql = "SELECT id, name, email FROM users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<h1>Users:</h1>";
    echo "<ul>";
    while ($row = $result->fetch_assoc()) {
        echo "<li>ID: " . $row["id"] . " - Name: " . $row["name"] . " - Email: " . $row["email"] . "</li>";
    }
    echo "</ul>";
} else {
    echo "No users found!";
}

$conn->close();
?>
