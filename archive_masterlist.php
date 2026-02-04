<?php
session_start();
require "config.php";

// SECURITY CHECK
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$message = "";

// =======================
// ARCHIVE ACTION
// =======================
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['archive_all'])) {

    mysqli_begin_transaction($conn);

    try {

        // COPY ALL DATA
        $insert = "INSERT INTO archive_masterlist SELECT * FROM masterlist";
        if (!mysqli_query($conn, $insert)) {
            throw new Exception(mysqli_error($conn));
        }

        // DELETE ORIGINAL DATA
        $delete = "DELETE FROM masterlist";
        if (!mysqli_query($conn, $delete)) {
            throw new Exception(mysqli_error($conn));
        }

        mysqli_commit($conn);
        $message = "✅ Masterlist successfully archived.";

    } catch (Exception $e) {
        mysqli_rollback($conn);
        $message = "❌ Error: " . $e->getMessage();
    }
}

// =======================
// FETCH ARCHIVED STUDENTS
// =======================
$archived = mysqli_query(
    $conn,
    "SELECT * FROM archive_masterlist ORDER BY gender DESC, section ASC, lastname ASC"
);
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>OCSHS Masterlist</title>
<link rel="stylesheet" href="css/main.css">
<link rel="icon" type="image/png" href="img/logo.png">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
        <a href="attendance_scanner.php">Attendance</a>
        <a href="attendance_history.php">Previous Attendance</a>
        <a href="archive_masterlist.php" class="active">Archive Masterlist</a>
        <a href="logout.php" class="logout">Logout</a>
    </div>
</div>

<!-- PAGE CONTENT -->
<div class="page-container">

    <div class="page-header">
        <h1>OCSHS Archived Masterlist <p style="font-size: 20px;">Active students are moved here for record keeping (digital footprint)</p></h1>
        <div class="page-actions">
            <form method="POST"
            onsubmit="return confirm('Are you sure you want to archive ALL students?');">
            <button type="submit" name="archive_all" class="btn btn-danger mb-3" style="padding: 20px; width: 300px; font-size: 18px;"> Archive All Students</button>
            </form>
        </div>
    </div>

    <div class="table-card">

        <!-- SEARCH BAR -->
        <input type="text" id="searchInput" class="table-search"
               placeholder="Search LRN, Name, Section...">

        <div class="table-responsive">
            <table class="styled-table blue-table" id="masterTable">
                <thead>
                    <tr>    
                        <th>LRN</th>
                        <th>First</th>
                        <th>MI</th>
                        <th>Last</th>
                        <th>Gender</th>
                        <th>Birthdate</th>
                        <th>Strand</th>
                        <th>Section</th>
                        <th>Grade</th>
                        <th>Address</th>
                        <th>Contact</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>

                <?php
                $qry = "SELECT * FROM masterlist ORDER BY gender DESC, lastname ASC, section ASC";
                $result = mysqli_query($conn, $qry);

                while ($row = mysqli_fetch_assoc($result)) {
                    $fullname = $row['firstname'] . " " . $row['mi'] . ". " . $row['lastname'];
                ?>
                    <tr>
                        <td><?= htmlspecialchars($row['lrn']) ?></td>
                        <td><?= htmlspecialchars($row['firstname']) ?></td>
                        <td><?= htmlspecialchars($row['mi']) ?></td>
                        <td><?= htmlspecialchars($row['lastname']) ?></td>
                        <td><?= htmlspecialchars($row['gender']) ?></td>
                        <td><?= htmlspecialchars($row['bdate']) ?></td>
                        <td><?= htmlspecialchars($row['strand']) ?></td>
                        <td><?= htmlspecialchars($row['section']) ?></td>
                        <td><?= htmlspecialchars($row['gradelvl']) ?></td>
                        <td class="truncate"><?= htmlspecialchars($row['address']) ?></td>
                        <td><?= htmlspecialchars($row['contact']) ?></td>
                        <td class="actions">
                            <a href="addinfo.php?id=<?= $row['id'] ?>" class="btn-sm view">View</a>
                            <a href="editinfo.php?id=<?= $row['id'] ?>" class="btn-sm edit">Edit</a>
                            <a href="deleteinfo.php?id=<?= $row['id'] ?>"
                               class="btn-sm delete"
                               onclick="return confirm('Delete this record?');">
                               Delete
                            </a>
                        </td>
                    </tr>
                <?php } ?>

                </tbody>
            </table>
        </div>

    </div>
</div>

<!-- SEARCH SCRIPT -->
<script>
$(document).ready(function() {
    $("#searchInput").on("keyup", function() {
        let value = $(this).val().toLowerCase();
        $("#masterTable tbody tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });
});
</script>

</body>
</html>
