<?php
require "config.php";

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $qr = trim($_POST['qr_code'] ?? '');

    if ($qr === '') {
        header("Location: attendance_scanner.php");
        exit();
    }

    /* GET STUDENT USING GENERATED_CODE */
    $stmt = $conn->prepare("
        SELECT 
            lrn,
            firstname,
            lastname,
            mi,
            section,
            gradelvl
        FROM masterlist
        WHERE generated_code = ?
    ");
    $stmt->bind_param("s", $qr);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows === 0) {
    header("Location: attendance_scanner.php?error=invalid");
    exit();
    }
    
    $student = $result->fetch_assoc();

    /* BUILD FULL NAME */
    $fullname = $student['firstname'] . " " .
                $student['mi'] . ". " .
                $student['lastname'];

    $today = date("Y-m-d");

    /* PREVENT DUPLICATE ATTENDANCE (SAME DAY) */
    $check = $conn->prepare("
        SELECT id FROM attendance
        WHERE lrn = ? AND date_logged = ?
    ");
    $check->bind_param("ss", $student['lrn'], $today);
    $check->execute();
    $check->store_result();

    if ($check->num_rows > 0) {
        header("Location: attendance_scanner.php");
        exit();
    }

    /* INSERT ATTENDANCE */
    $insert = $conn->prepare("
        INSERT INTO attendance
        (lrn, fullname, section, gradelvl, date_logged, time_logged)
        VALUES (?, ?, ?, ?, CURDATE(), CURTIME())
    ");
    $insert->bind_param(
        "ssss",
        $student['lrn'],
        $fullname,
        $student['section'],
        $student['gradelvl']
    );

    $insert->execute();

    header("Location: attendance_scanner.php");
    exit();
}
