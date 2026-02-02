<?php
require 'config.php';
include 'phpqrcode/qrlib.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

// CREATE QR FOLDER
$qrPath = "qrcodes/batch/";
if (!file_exists($qrPath)) {
    mkdir($qrPath, 0777, true);
}

// GET SECTION FILTER
$sectionFilter = $_GET['section'] ?? '';

// FETCH SECTIONS
$sections = mysqli_query($conn, "SELECT DISTINCT section FROM masterlist ORDER BY section");

// FETCH STUDENTS
$sql = "SELECT * FROM masterlist";
if (!empty($sectionFilter)) {
    $sectionFilter = mysqli_real_escape_string($conn, $sectionFilter);
    $sql .= " WHERE section='$sectionFilter'";
}
$result = mysqli_query($conn, $sql);

// ZIP FILE
$zipName = "QR_" . ($sectionFilter ?: "ALL") . ".zip";
$zipPath = "qrcodes/$zipName";
$zip = new ZipArchive();
$zip->open($zipPath, ZipArchive::CREATE | ZipArchive::OVERWRITE);
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Batch QR Codes</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>

<!-- HEADER -->
<div class="header">
    <div class="header-left">
        <img src="images/logo.png" class="logo" alt="Logo">
    </div>

    <div class="nav">
        <a href="dashboard.php">Dashboard</a>
        <a href="masterlist.php" class="active">Master List</a>
        <a href="attendance_scanner.php">Attendance</a>
        <a href="attendance_history.php">Previous Attendance</a>
        <a href="archive_masterlist.php">Archive Masterlist</a>
        <a href="logout.php" class="logout">Logout</a>
    </div>
</div>

<div class="page-container">

<div class="form-card wide-card">
<h2>Batch QR Code Download</h2>

<!-- FILTER -->
<form method="get" class="filter-form">
    <label>Section</label>
    <select name="section">
        <option value="">All Sections</option>
        <?php while ($s = mysqli_fetch_assoc($sections)): ?>
            <option value="<?= $s['section'] ?>"
                <?= ($sectionFilter == $s['section']) ? 'selected' : '' ?>>
                <?= htmlspecialchars($s['section']) ?>
            </option>
        <?php endwhile; ?>
    </select>
    <button type="submit" class="btn">Filter</button>
</form>

<?php if (mysqli_num_rows($result) > 0): ?>

<div class="table-responsive">
<table class="styled-table blue-table">
<thead>
<tr>
    <th>Name</th>
    <th>Section</th>
    <th>Grade</th>
    <th>QR</th>
</tr>
</thead>
<tbody>

<?php
while ($row = mysqli_fetch_assoc($result)) {

    $fullname = $row['firstname'] . " " . $row['mi'] . ". " . $row['lastname'];
    $section  = $row['section'];
    $grade    = $row['gradelvl'];
    $qrData   = $row['generated_code'];

    $filename = preg_replace('/[^A-Za-z0-9_-]/', '_',
        "$fullname - $section - Grade $grade"
    );

    $qrFile = $qrPath . $filename . ".png";

    QRcode::png($qrData, $qrFile, QR_ECLEVEL_L, 5);
    $zip->addFile($qrFile, $filename . ".png");
?>
<tr>
    <td><?= htmlspecialchars($fullname) ?></td>
    <td><?= htmlspecialchars($section) ?></td>
    <td><?= htmlspecialchars($grade) ?></td>
    <td><img src="<?= $qrFile ?>" class="qr-thumb"></td>
</tr>
<?php } ?>

</tbody>
</table>
</div>

<?php
$zip->close();
?>

<div class="actions">
    <a href="<?= $zipPath ?>" class="btn success" download>
        📦 Download ZIP
    </a>
    <a href="dashboard.php" class="btn secondary">Back</a>
</div>

<?php else: ?>
<p class="empty">No students found.</p>
<a href="dashboard.php" class="btn secondary">Back</a>
<?php endif; ?>

</div>
</div>

</body>
</html>
