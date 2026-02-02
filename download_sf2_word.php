<?php
require "config.php";
require "vendor/autoload.php";

use PhpOffice\PhpWord\PhpWord;
use PhpOffice\PhpWord\IOFactory;

$section = $_GET['section'] ?? '';
$month   = $_GET['month'] ?? date('m');
$year    = $_GET['year'] ?? date('Y');

$monthName = date("F", mktime(0,0,0,$month,1));
$daysInMonth = cal_days_in_month(CAL_GREGORIAN, $month, $year);

/* SCHOOL DAYS (Mon–Fri) */
$schoolDates = [];
for ($d = 1; $d <= $daysInMonth; $d++) {
    $date = "$year-$month-" . str_pad($d,2,'0',STR_PAD_LEFT);
    if (date('N', strtotime($date)) <= 5) {
        $schoolDates[] = $date;
    }
}

/* Ensure 25 columns */
$totalColumns = 25;
$blankCols = max(0, $totalColumns - count($schoolDates));
$schoolDates = array_merge(array_fill(0, $blankCols, ''), $schoolDates);

/* Create Word */
$phpWord = new PhpWord();
$sectionWord = $phpWord->addSection([
    'marginTop' => 500,
    'marginBottom' => 500,
    'marginLeft' => 500,
    'marginRight' => 500
]);

/* Title */
$sectionWord->addText(
    "School Form 2 Daily Attendance Report (SF2-SHS)",
    ['bold' => true, 'size' => 12],
    ['alignment' => 'center']
);

$sectionWord->addTextBreak(1);

/* Info */
$sectionWord->addText("Section: $section");
$sectionWord->addText("Month: $monthName $year");
$sectionWord->addTextBreak(1);

/* Table */
$table = $sectionWord->addTable([
    'borderSize' => 6,
    'borderColor' => '000000',
    'cellMargin' => 40
]);

/* Header row */
$table->addRow();
$table->addCell(600)->addText("No.", ['bold' => true]);
$table->addCell(3000)->addText("Name", ['bold' => true]);

foreach ($schoolDates as $d) {
    $table->addCell(400)->addText($d ? date('j', strtotime($d)) : '');
}

$table->addCell(800)->addText("ABSENT", ['bold' => true]);
$table->addCell(800)->addText("PRESENT", ['bold' => true]);

/* Students */
$q = mysqli_query($conn, "SELECT * FROM masterlist WHERE section='$section' ORDER BY lastname");
$no = 1;

while ($s = mysqli_fetch_assoc($q)) {
    $present = 0;
    $table->addRow();
    $table->addCell()->addText($no++);
    $table->addCell()->addText(
        "{$s['lastname']}, {$s['firstname']} " . strtoupper($s['mi'] ?? '')
    );

    foreach ($schoolDates as $d) {
        if ($d === '') {
            $table->addCell()->addText('');
            continue;
        }
        $chk = mysqli_query($conn,
            "SELECT id FROM attendance WHERE lrn='{$s['lrn']}' AND date_logged='$d'"
        );
        if (mysqli_num_rows($chk)) {
            $table->addCell()->addText("✓");
            $present++;
        } else {
            $table->addCell()->addText("");
        }
    }

    $table->addCell()->addText(count(array_filter($schoolDates)) - $present);
    $table->addCell()->addText($present);
}

/* Download */
$filename = "SF2_{$section}_{$monthName}_{$year}.docx";
header("Content-Description: File Transfer");
header('Content-Disposition: attachment; filename="'.$filename.'"');
header('Content-Type: application/vnd.openxmlformats-officedocument.wordprocessingml.document');
header('Cache-Control: must-revalidate');
header('Expires: 0');

$writer = IOFactory::createWriter($phpWord, 'Word2007');
$writer->save("php://output");
exit;
