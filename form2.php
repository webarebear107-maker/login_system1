<?php
session_start();
require "config.php";

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$section = $_GET['section'] ?? '';
$month   = $_GET['month'] ?? date('m');
$year    = $_GET['year'] ?? date('Y');

$monthName = date("F", mktime(0,0,0,$month,1));
$daysInMonth = cal_days_in_month(CAL_GREGORIAN, $month, $year);

/* SCHOOL DAYS (Mon-Fri) */
$schoolDates = [];
for ($d = 1; $d <= $daysInMonth; $d++) {
    $date = "$year-$month-" . str_pad($d,2,'0',STR_PAD_LEFT);
    $dow = date('N', strtotime($date));
    if ($dow <= 5) {
        $schoolDates[] = $date;
    }
}

/* Ensure 25 columns: add blanks at start if needed */
$totalColumns = 25;
$blankCols = max(0, $totalColumns - count($schoolDates));
$schoolDates = array_merge(array_fill(0, $blankCols, ''), $schoolDates);
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>SF2-SHS Daily Attendance Report</title>

<style>
body { font-family: sans-serif; background: #eaeaea; }
.page { width: 1250px; margin: auto; background: #fff; padding: 10px; }
table { border-collapse: collapse; width: 100%; height: 80%;}
td, th { border: 1px solid #444; font-size: 10px; padding: 1px; line-height: 1; text-align: left; text-align: left;}
.days th, .dow td { text-align: center; font-size: 8px; }
.bottom-section { display: grid; grid-template-columns: 54% 20% 25%; gap: 6px; margin-top: 10px; font-size: 5; height: auto; }
.codes, .summary { border-collapse: collapse; width: 100%; font-size: 2px; }
.summary th, .summary td { text-align: left; }
.gray td { background: #ddd; font-weight: bold; }
.signatures { margin-top: 20px; font-size: 11px; }
.sign-line { margin-top: 30px; text-align: center; }
.sign-line .name { display: block; font-weight: bold; text-decoration: underline; }
.sign-line .role { font-size: 10px; }
.col-month {
    width: 40px;
    font-weight: bold;
    border-right: 3px solid black;
    border-left: 3px solid black;
}
/* Presentable blank cells */
.blank-cell {
    background: #f5f5f5;
    border: 1px dashed #aaa;
}

/* Simple search form */
.search-form { margin-bottom: 15px; }

.label-cell {
    text-align: right;
    font-weight: bold;
    padding-right: 5px;
    border: 1px solid white; /* removes border around label text */
    vertical-align: middle;
}

.fill {
    border: 1px solid white; /* keeps cell neat */
    padding: 4px;
}

.fill input[type="text"] {
    width: 100%;            /* fills the cell horizontally */
    box-sizing: border-box;  /* keeps padding inside the width */
    text-align: center;      /* centers text in the textbox */
    font-weight: normal;
    font-size: 11px;
    padding: 1px 10px;        /* vertical + horizontal padding */
    border: 1px solid #000;  /* optional: gives a clean visible border */
    border-radius: 2px;      /* small rounded corners for neat look */
    background-color: #fff;   /* keeps white background */
}

.blank {
    line-height: 0.8;
    height: auto;
    padding: 1px 8px;
    text-align: left;
    font-weight: bold;
}

.guidelines {
    line-height: 1.;
    border-collapse: collapse;
    width: 100%;
    font-size: 5px;
    border: 1px solid white;
}

.guidelines td,
.guidelines th {
    font-weight: normal;
    vertical-align: top;
    padding: 0;
    border: 1px solid white;
}

.space {
    border: 1px solid white;
    height: 12px;
}

@media print {
    body * {
        visibility: hidden;
    }

    #print-area, #print-area * {
        visibility: visible;
    }

    #print-area {
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
    }

    thead.no-repeat {
        display: table-row-group;
    }

    thead.repeat {
        display: table-header-group;
    }

    tr {
        page-break-inside: avoid;
    }
}

.border-interval {
    border-left: 3px solid black !important;
}

</style>
</head>
<body>

<!-- SEARCH FORM -->
<div class="search-form">
<form method="GET">
    Section:
    <input type="text" name="section" required value="<?= htmlspecialchars($section) ?>">
    Month:
    <select name="month">
        <?php for($m=1;$m<=12;$m++): ?>
            <option value="<?= $m ?>" <?= $m==$month?'selected':'' ?>><?= date("F", mktime(0,0,0,$m,1)) ?></option>
        <?php endfor; ?>
    </select>
    Year:
    <input type="number" name="year" value="<?= $year ?>" style="width:80px">
    <button type="submit">Generate SF2</button>
</form>
    <br><a href="masterlist.php">Back to Masterlist</a>
<hr>
</div>
    
<?php if($section): ?>
<div id="print-area">
<div class="page">

<!-- HEADER -->
<table>
<tr>
<td style="width:80px; border: 1px solid white;"><img src="images/keg.jpg"></td>
<td style="text-align:center; border: 1px solid white; font-weight:bold; padding:0; font-size:17px;">
School Form 2 Daily Attendance Report of Learners for Senior High School (SF2-SHS)
</td>
<td style="width:20px; height:20px; border: 1px solid white;"><img src="images/deped.jpg"></td>
</tr>
</table>

<!-- SCHOOL INFO -->
<table class="info-table">
<tr>
    <td class="label-cell">School Name</td>
    <td class="fill"><input type="text" value="Ormoc City Senior High School" readonly style="font-size: 9px; padding:3px;"></td>

    <td class="label-cell">School ID</td>
    <td class="fill"><input type="text" value="330523" readonly style="font-size: 9px; padding:3px;"></td>

    <td class="label-cell">District</td>
    <td class="fill"><input type="text" value="Ormoc I" readonly style="font-size: 9px; padding:3px;"></td>

    <td class="label-cell">Division</td>
    <td class="fill"><input type="text" value="Ormoc City" readonly style="font-size: 9px; padding:3px;" ></td>

    <td class="label-cell">Region</td>
    <td class="fill"><input type="text" value="Region VIII" readonly style="font-size: 9px; padding:3px;"></td>
</tr>

<tr>
    <td class="label-cell">Semester</td>
    <td class="fill"><input type="text" value="First Semester" readonly style="font-size: 9px; padding:3px;"></td>

    <td class="label-cell">School Year</td>
    <td class="fill"><input type="text" value="2025-2026" readonly style="font-size: 9px; padding:3px;"></td>

    <td class="label-cell">Grade Level</td>
    <td class="fill"><input type="text" value="Grade 12" readonly style="font-size: 9px; padding:3px;"></td>

    <td class="label-cell" colspan="2">Track and Strand</td>
    <td colspan="2" class="fill"><input type="text" value="‎" readonly style="font-size: 9px; padding:3px;"></td>
</tr>

<tr>
    <td class="label-cell">Section</td>
    <td class="fill"><input type="text" value="<?= $section ?>" readonly style="font-size: 9px; padding:3px;"></td>

    <td class="label-cell" colspan="2">Course (for TVL only)</td>
    <td colspan="2" class="fill"><input type="text" value="‎" readonly style="font-size: 9px; padding:3px;"></td>

    <td class="label-cell">Month of</td>
    <td colspan="3" class="fill"><input type="text" value="<?= $monthName ?> <?= $year ?>" readonly style="font-size: 9px; padding:3px;"></td>
</tr>
</table>

<!-- ATTENDANCE TABLE -->
<table style="border-right: 3px solid black; border-top: 3px solid black; border-bottom: 3px solid black;">
<thead class="no-repeat">
<tr class="toprow">
<th rowspan="3" style="width:20px; text-align:center; border-bottom: 3px solid black; border-right: 3px solid black;">No.</th>
<th rowspan="3" style="width:150px; text-align:center; font-size:8px; border-bottom: 3px solid black; border-right: 3px solid black;">NAME<br><big>(Last Name, First Name, MI)</big></th>
<th colspan="<?= $totalColumns ?>">DATE</th>
<th colspan="2" rowspan="2" style="text-align: center; font-size:11px; border: 3px solid black;">Total for the Month </th>
<th rowspan="3" style="width:180px; text-align:center; border: 3px solid black;">REMARKS (If NLS, state reason, please refer to legend number 2. If TRANSFERRED IN/OUT, write the name of School.)</th>
</tr>
<tr class="days">
<?php $i = 0; foreach($schoolDates as $d): ?>
<?php
    $i++;
    $class = ($i == 1 || ($i - 1) % 5 == 0) ? 'border-interval' : '';
?>
<th class="<?= $class ?>" style="width:22px; height:20px;">
    <?= $d ? date('j', strtotime($d)) : '&nbsp;' ?>
</th>
<?php endforeach; ?>

</tr>

<tr class="dow">
<?php foreach($schoolDates as $d): ?>
    <?php
    $i++;
    $class = ($i == 1 || ($i - 1) % 5 == 0) ? 'border-interval' : '';
?>
<th class="<?= $class ?>" style="width:22px; height:20px; border-bottom: 3px solid black; font-weight: normal; text-align:center;"><?= $d ? strtoupper(substr(date('D', strtotime($d)),0,1)) : '&nbsp;' ?></td>
<?php endforeach; ?>
<td style="width:40px; font-weight:bold; border: 3px solid black;">ABSENT</td>
<td style="width:40px; font-weight:bold; border: 3px solid black;">PRESENT</td>
</tr>
</thead>

<tbody>
<?php
$no = 1;
$q = mysqli_query($conn, "SELECT * FROM masterlist WHERE section='$section' ORDER BY gender DESC, lastname");

$maleTotal   = [];
$femaleTotal = [];

foreach ($schoolDates as $d) {
    $maleTotal[$d] = 0;
    $femaleTotal[$d] = 0;
}

$maleTotalPrinted = false;

while($s = mysqli_fetch_assoc($q)):
$combinedTotal = [];

foreach ($schoolDates as $d) {
    if ($d === '') {
        $combinedTotal[$d] = '';
    } else {
        $combinedTotal[$d] = $maleTotal[$d] + $femaleTotal[$d];
    }
}

$combinedPresentTotal = array_sum($maleTotal) + array_sum($femaleTotal);

$totalDays = count(array_filter($schoolDates));
$totalLearners = count($maleTotal) + count($femaleTotal);

$combinedAbsentTotal = ($totalDays * $totalLearners) - $combinedPresentTotal;

$totalDays = count(array_filter($schoolDates));
$present = 0;

$malePresentTotal   = array_sum($maleTotal);
$femalePresentTotal = array_sum($femaleTotal);

$totalDays = count(array_filter($schoolDates));

$maleAbsentTotal   = ($totalDays * count(array_filter($maleTotal))) - $malePresentTotal;
$femaleAbsentTotal = ($totalDays * count(array_filter($femaleTotal))) - $femalePresentTotal;

if ($s['gender'] === 'Female' && !$maleTotalPrinted) {
        $maleTotalPrinted = true;
        ?>
        <tr style="font-weight:bold; text-align:center; background:#f2f2f2; height:22px; border-bottom: 3px solid black;">
            <td>&nbsp;</td>
            <td style="text-align: center; font-size:9px;"><=== MALE | TOTAL Per Day ===></td>
            <?php foreach ($schoolDates as $d): $i++;
            $class = ($i == 1 || ($i - 1) % 5 == 0) ? 'border-interval' : '';?>
                <td class="<?= $class ?>" style="text-align: center;"><?= $d ? $maleTotal[$d] : '&nbsp;' ?></td>
            <?php endforeach; ?>
            <td style="text-align: center; border-right: 3px solid black; border-left: 3px solid black;"><?= $maleAbsentTotal ?></td>
            <td style="text-align: center; border-right: 3px solid black;"><?= $malePresentTotal ?></td>
            <td></td>
            
        </tr>
        <?php
    }
?>
<tr>
<td><?= $no++ ?></td>
<td class="name"><?= $s['lastname'] ?>, <?= $s['firstname'] ?> <?= strtoupper($s['mi'] ?? '') ?></td>
<?php 
    $present = 0; // Reset present count for each student
    foreach($schoolDates as $d):
    $i++;
    $class = ($i == 1 || ($i - 1) % 5 == 0) ? 'border-interval' : '';
        if ($d === '') { echo '<td class="' . $class . '" style="width:22px; height:20px;">&nbsp;</td>'; continue; }
        $chk = mysqli_query($conn, "SELECT id FROM attendance WHERE lrn='{$s['lrn']}' AND date_logged='$d'");
        if(mysqli_num_rows($chk)) { echo '<td class="' . $class . '" style="width:22px; height:20px; text-align:center;">&nbsp;</td>'; $present++; } 
        if (mysqli_num_rows($chk)) {

    if ($s['gender'] === 'Male') {
        $maleTotal[$d]++;
    }

    if ($s['gender'] === 'Female') {
        $femaleTotal[$d]++;
    }

    }
    
    else { 
        echo '<td class="' . $class . '" style="width:22px; height:20px; text-align: center;">X</td>'; 
    }
endforeach; ?>
<td class="col-month" style="text-align:center"><?= count(array_filter($schoolDates)) - $present ?></td>
<td class="col-month" style="text-align:center"><?= $present ?></td>
<td></td>
</tr>
<?php endwhile; ?>

<tr style="font-weight:bold; text-align:center; background:#f9f9f9; height:22px;">
    <td>&nbsp;</td>
    <td style="text-align: center; font-size:9px;"><=== FEMALE | TOTAL Per Day ===></td>

    <?php foreach ($schoolDates as $d): $i++;
    $class = ($i == 1 || ($i - 1) % 5 == 0) ? 'border-interval' : '';?>
        <?php if ($d === ''): ?>
            <td class="<?= $class ?>">&nbsp;</td>
        <?php else: ?>
            <td class="<?= $class ?>" style="text-align: center;"><?= $femaleTotal[$d] ?></td>
        <?php endif; ?>
    <?php endforeach; ?>

    <td style="text-align: center; border-right: 3px solid black; border-left: 3px solid black;"><?= $femaleAbsentTotal ?></td>
    <td style="text-align: center; border-right: 3px solid black;"><?= $femalePresentTotal ?></td>
    <td></td>

</tr>

<tr style="font-weight:bold; text-align:center; background:#e6e6e6; height:22px; border-top: 3px solid black;">
    <td>&nbsp;</td>
    <td style="text-align: center; font-size:9px;">Combined TOTAL Per Day</td>

    <?php foreach ($schoolDates as $d): $i++;
    $class = ($i == 1 || ($i - 1) % 5 == 0) ? 'border-interval' : '';?>
        <?php if ($d === ''): ?>
            <td class="<?= $class ?>">&nbsp;</td>
        <?php else: ?>
            <td class="<?= $class ?>" style="text-align: center;"><?= $combinedTotal[$d] ?></td>
        <?php endif; ?>
    <?php endforeach; ?>

    <td style="text-align: center; border-right: 3px solid black; border-left: 3px solid black;"><?= $combinedAbsentTotal ?></td>
    <td style="text-align: center; border-right: 3px solid black;"><?= $combinedPresentTotal ?></td>
    <td></td>
</tr>

</tbody>
</table>



<!-- BOTTOM SECTION -->
<div class="bottom-section">
<table class="guidelines">
<tr><th><strong>GUIDELINES: </strong><br>1. The attendance shall be accomplished daily. Refer to the codes for checking learners' attendance.
<br>2. Dates shall be written in the columns after Learner's Name.
<br>3. To compute the following:
<br><br>a. Percentage of Enrollment = Registered learners as of end of the month <br>------------------------------------------------------------ × 100<br>Enrollment as of 1st Friday of the school year
<br><br>b. Average Daily Attendance = Total Daily Attendance <br>--------------------------------------------------------<br>Number of School Days in reporting month
<br><br>c. Percentage of Attendance for the month = Average Daily Attendance <br>---------------------------------------------------------× 100<br>Registered learners as of end of the month
<br>4. Every end of the month, the class adviser will submit this form to the office of the principal for recording of summary table into School Form 4.
<br>5. The adviser will provide necessary interventions including but not limited to home visitation to learners who were absent for 5 consecutive days and/or those at risk of dropping out.
<br>6. Attendance performance of learners will be reflected in Form 137 and Form 138 every grading period.
</th></tr>
</table>

<table class="codes">
<tr><th>CODES FOR CHECKING ATTENDANCE</th></tr>
<tr><td>(blank) – Present; (X) – Absent; Tardy (Half-day) – Upper</td></tr>
<tr><td>Late (Common, Lower Cutting Classes)</td></tr>
<tr><th>REASONS/CAUSES FOR NLS</th></tr>
<tr><td><b>a. Domestic-Related Factors</b></td></tr>
<tr><td>a.1 Health-related</td></tr>
<tr><td>a.2 Early marriage/pregnancy</td></tr>
<tr><td>a.3 Parents' attitude toward schooling</td></tr>
<tr><td>a.4 Family problem</td></tr>
<tr><td><b>b. Individual-Related Factors</b></td></tr>
<tr><td>b.1 Illness</td></tr>
<tr><td>b.2 Drug abuse</td></tr>
<tr><td>b.3 Alcoholism</td></tr>
<tr><td>b.4 Lack of interest/distraction</td></tr>
<tr><td>b.5 Hunger/Malnutrition</td></tr>
<tr><td><b>c. School-Related Factors</b></td></tr>
<tr><td>c.1 Teacher factor</td></tr>
<tr><td>c.2 Physical condition of classroom</td></tr>
<tr><td>c.3 Peer influence</td></tr>
<tr><td><b>d. Geographic/Environmental</b></td></tr>
<tr><td>d.1 Distance between home and school</td></tr>
<tr><td>d.2 Armed conflict (tribal war, clan feud)</td></tr>
<tr><td>d.3 Calamities/Disasters</td></tr>
<tr><td><b>e. Financial-Related</b></td></tr>
<tr><td>e.1 Child labor, work</td></tr>
<tr><td><b>f. Others (Specify)</b></td></tr>
</table>

<table class="summary">
<tr style="border-collapse:collapse;" class="blank"><th colspan="1" rowspan="2" style="border-bottom: 1px solid white;">Month: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No. of Days of </th><th colspan="3" rowspan="2" class="blank" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Summary</th></tr>
<tr class="blank"><tr><td class="blank" style="text-align: ;"><?= $monthName ?> <?= $year ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Classes:<?= count(array_filter($schoolDates)) ?></td><td class="blank">M</td><td class="blank">F</td><td class="blank">TOTAL</td></tr></tr>
<tr><tr><td colspan="1" >Enrollment as of (1st Friday of June)</td><td>28</td><td>13</td><td>41</td></tr></tr>
<tr><td colspan="1">Late enrollment</td><td>0</td><td>0</td><td>0</td></tr>
<tr><td colspan="1">Registered Learners</td><td>28</td><td>13</td><td>41</td></tr>
<tr><td colspan="1">Average Daily Attendance</td><td>24</td><td>11</td><td>36</td></tr>
<tr><td colspan="1">Percentage of Attendance for the month</td><td>87%</td><td>87%</td><td>87%</td></tr>
<tr><td colspan="1">Number of students absent for consecutive days</td><td>0</td><td>0</td><td>0</td></tr>
<tr class="gray" colspan="1"><td>‎ </td><td><td><td></td></td></td></tr>
<tr><td colspan="1">NLS</td><td>0</td><td>0</td><td>0</td></tr>
<tr><td colspan="1">Transferred Out</td><td>0</td><td>0</td><td>0</td></tr>
<tr><td colspan="1">Transferred In</td><td>0</td><td>0</td><td>0</td></tr>
<tr><td colspan="1">Shifted Out</td><td>0</td><td>0</td><td>0</td></tr>
<tr><td colspan="1">Shifted In</td><td>0</td><td>0</td><td>0</td></tr>
<tr><td colspan="1" style="border-left: white; border-bottom: 1px solid white; border-right: white;"><i>I certify that this is a true and correct report.</i></td>
<tr><td colspan="4" class="space"></td>
<tr><td colspan="4" class="space"></td>
<tr><td colspan="4" class="space" style="text-align: center; font-size:12px;">JESSIE M. CABER</td>
<tr><td colspan="4" class="space" style="text-align: center; font-size:12px; text-decoration: overline;">(Signature of Adviser over Printed Name)</td>
<tr><td colspan="4" class="space"></td>
<tr><td colspan="4" class="space"><i>Attested by:<i></td>
<tr><td colspan="4" class="space"></td>
<tr><td colspan="4" class="space"style="text-align: center; font-size:12px;">SHERRYL PLAZA CATADO</td>
<tr><td colspan="4" class="space" style="text-align: center; font-size:12px; text-decoration: overline;">(Signature of School Head over Printed Name)</td>
</table>
</div>
</div>
<?php endif; ?>


</body>
</html>
