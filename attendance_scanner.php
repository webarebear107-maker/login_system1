<?php
require "config.php";
session_start();

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>QR Attendance Scanner</title>

    <link rel="stylesheet" href="css/main.css">
    <link rel="icon" type="image/png" href="images/ocshs3.png">

    <!-- Bootstrap -->
    <link rel="stylesheet"
          href="css/bootstrap.min.css">

    <style>
        #reader {
            width: 100%;
            border: 2px solid #ccc;
            border-radius: 8px;
        }
    </style>
</head>
<body>

<!-- HEADER -->
<div class="header">
    <div class="header-left">
        <img src="images/logo.png" class="logo" alt="Logo">
    </div>

    <div class="nav">
        <a href="dashboard.php">Dashboard</a>
        <a href="masterlist.php">Master List</a>
        <a href="attendance_scanner.php" class="active">Attendance</a>
        <a href="attendance_history.php">Previous Attendance</a>
        <a href="archive_masterlist.php">Archive Masterlist</a>
        <a href="logout.php" class="logout">Logout</a>
    </div>
</div>

<!-- CONTENT -->
<div class="page-container">
    <div class="attendance-card">
        <div class="row">

            <!-- SCANNER -->
            <div class="col-md-4">
                <h5 class="text-center mb-3">Scan QR Code</h5>

                <div id="reader"></div>
                    <?php if (isset($_GET['error']) && $_GET['error'] === 'invalid'): ?>
                    <div class="alert alert-danger text-center mt-2">
                    ❌ Invalid QR Code
                    </div>
                    <?php endif; ?>
                <form id="scanForm" action="save_attendance.php" method="POST">
                    <input type="hidden" name="qr_code" id="qr_code">
                </form>
            </div>

            <!-- TABLE -->
            <div class="col-md-8">
                <h5>Attendance Records</h5>

                <input type="text"
                       id="searchInput"
                       class="form-control mb-2"
                       placeholder="Search name / LRN / section">

                <div class="table-responsive">
                    <table class="styled-table blue-table">
                        <thead class="thead-dark">
                        <tr>
                            <th>#</th>
                            <th>LRN</th>
                            <th>Full Name</th>
                            <th>Section</th>
                            <th>Grade</th>
                            <th>Date</th>
                            <th>Time</th>
                        </tr>
                        </thead>
                        <tbody id="attendanceTable">
                        <?php
                        $today = date('Y-m-d');
                        $query = "SELECT * FROM attendance WHERE date_logged = '$today' ORDER BY time_logged DESC";
                        $res = mysqli_query($conn, $query);
                        $total = mysqli_num_rows($res);
                        $i = $total;
                        while ($row = mysqli_fetch_assoc($res)):
                        ?>
                            <tr>
                                <td style="text-align: center;"><?= $i-- ?></td>
                                <td><?= htmlspecialchars($row['lrn']) ?></td>
                                <td><?= htmlspecialchars($row['fullname']) ?></td>
                                <td><?= htmlspecialchars($row['section']) ?></td>
                                <td><?= htmlspecialchars($row['gradelvl']) ?></td>
                                <td><?= htmlspecialchars($row['date_logged']) ?></td>
                                <td><?= date("h:i A", strtotime($row['time_logged'])) ?></td>
                            </tr>
                        <?php endwhile; ?>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- JS -->
<script src="js/jquery.min.js"></script>
<script src="js/html5-qrcode.min.js"></script>

<script>
const html5QrCode = new Html5Qrcode("reader");

Html5Qrcode.getCameras().then(devices => {
    if (devices && devices.length) {
        let cameraId = devices[0].id; // first available camera

        html5QrCode.start(
            cameraId,
            {
                fps: 30,
                qrbox: { width: 300, height: 300 }
            },
            (decodedText) => {
                document.getElementById("qr_code").value = decodedText;

                html5QrCode.stop().then(() => {
                    document.getElementById("scanForm").submit();
                });
            }
        );
    }
}).catch(err => {
    alert("Camera error: " + err);
});

</script>


</body>
</html>
