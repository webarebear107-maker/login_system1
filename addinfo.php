<?php
require 'config.php';
include 'phpqrcode/qrlib.php';

// GET STUDENT ID SAFELY
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;
if ($id <= 0) die("Invalid student ID.");

// FETCH STUDENT DATA
$q = mysqli_query($conn, "SELECT * FROM masterlist WHERE id='$id'");
$row = mysqli_fetch_assoc($q);
if (!$row) die("Student not found.");

// STUDENT INFO
$fullname = $row['firstname'] . " " . $row['mi'] . ". " . $row['lastname'];
$lrn      = $row['lrn'];
$strand   = $row['strand'];
$section  = $row['section'];
$grade    = $row['gradelvl'];
$address  = $row['address'];
$contact  = $row['contact'];
$qrCode   = $row['generated_code'];
    
// QR SETTINGS
$path = "qrcodes/";
if (!file_exists($path)) mkdir($path, 0777, true);

// CLEAN FILE NAME
$filename = $lrn; 
$file = $path . $filename . ".png";


// GENERATE QR
QRcode::png($qrCode, $file, QR_ECLEVEL_L, 6);
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Student QR Code</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/addinfo.css">
</head>
<body>
<div class="card">
    <h2>Student Information</h2>

    <p><strong>Name:</strong> <?= htmlspecialchars($fullname) ?></p>
    <p><strong>LRN:</strong> <?= htmlspecialchars($lrn) ?></p>
    <p><strong>Strand:</strong> <?= htmlspecialchars($strand) ?></p>
    <p><strong>Section:</strong> <?= htmlspecialchars($section) ?></p>
    <p><strong>Grade Level:</strong> <?= htmlspecialchars($grade) ?></p>
    <p><strong>Address:</strong> <?= htmlspecialchars($address) ?></p>
    <p><strong>Contact:</strong> <?= htmlspecialchars($contact) ?></p>

    <img src="<?= $file ?>" width="220" alt="QR Code">

    <br>
    <a href="<?= $file ?>" download="<?= $filename ?>.png" class="btn">
        📥 Download QR Code
    </a>
</div>

<div style="text-align:center; margin-top:20px;">
    <a href="masterlist.php" class="btn" style="background:#6c757d;">⬅ Back</a>
</div>

</body>
</html>
