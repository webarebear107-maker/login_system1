<?php
require "config.php";
require "vendor/autoload.php"; // Make sure composer installed PhpSpreadsheet
include 'phpqrcode/qrlib.php';

use PhpOffice\PhpSpreadsheet\IOFactory;

if (!isset($_FILES['excel_file'])) {
    die("No file uploaded.");
}

$fileName = $_FILES['excel_file']['tmp_name'];

$spreadsheet = IOFactory::load($fileName);
$sheet = $spreadsheet->getActiveSheet();
$rows = $sheet->toArray();

$imported = 0;

foreach ($rows as $index => $row) {
    // Skip header row
    if ($index === 0) continue;

    $lrn      = trim($row[0]);
    $firstname= trim($row[1]);
    $mi       = trim($row[2]);
    $lastname = trim($row[3]);
    $gender   = trim($row[4]);
    $bdate    = trim($row[5]);
    $strand   = trim($row[6]);
    $section  = trim($row[7]);
    $gradelvl = trim($row[8]);
    $address  = trim($row[9]);
    $contact  = trim($row[10]);

    if (empty($lrn) || empty($firstname) || empty($lastname)) continue;

    // Check for duplicate LRN
    $check = mysqli_query($conn, "SELECT id FROM masterlist WHERE lrn='$lrn'");
    if (mysqli_num_rows($check) > 0) continue;

    // Generate QR Code value
    $generated_code = "STU-$lrn-" . strtoupper(substr(md5(uniqid()), 0, 6));

    // Insert into database
    $sql = "INSERT INTO masterlist
        (lrn, firstname, mi, lastname, gender, bdate, strand, section, gradelvl, address, contact, generated_code)
        VALUES
        ('$lrn','$firstname','$mi','$lastname','$gender','$bdate','$strand','$section','$gradelvl','$address','$contact','$generated_code')";

    if (mysqli_query($conn, $sql)) {
        $imported++;

        // Generate QR image
        $fullname = $firstname . " " . $mi . ". " . $lastname;
        $path = "qrcodes/";
        if (!file_exists($path)) mkdir($path, 0777, true);

        $filename = preg_replace('/[^A-Za-z0-9_-]/', '_', $fullname);
        $file = $path . $filename . ".png";

        QRcode::png($generated_code, $file, QR_ECLEVEL_L, 6);
    }
}

// Feedback and redirect
echo "
<script>
    alert('$imported students imported successfully!');
    window.location.href = 'masterlist.php';
</script>
";
