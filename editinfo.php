<?php
require "config.php";

$id = isset($_GET['id']) ? intval($_GET['id']) : 0;
if ($id <= 0) die("Invalid ID");

// FETCH STUDENT
$q = mysqli_query($conn, "SELECT * FROM masterlist WHERE id='$id'");
$row = mysqli_fetch_assoc($q);
if (!$row) die("Student not found");

// UPDATE STUDENT
$success = "";
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $fname    = trim($_POST['firstname']);
    $mi       = trim($_POST['mi']);
    $lname    = trim($_POST['lastname']);
    $strand   = trim($_POST['strand']);
    $section  = trim($_POST['section']);
    $gradelvl = trim($_POST['gradelvl']);
    $address  = trim($_POST['address']);
    $contact  = trim($_POST['contact']);

    $sql = "UPDATE masterlist SET
            firstname='$fname',
            mi='$mi',
            lastname='$lname',
            strand='$strand',
            section='$section',
            gradelvl='$gradelvl',
            address='$address',
            contact='$contact'
            WHERE id='$id'";

    if (mysqli_query($conn, $sql)) {
        $success = "Student information updated successfully!";
        // REFRESH DATA
        $q = mysqli_query($conn, "SELECT * FROM masterlist WHERE id='$id'");
        $row = mysqli_fetch_assoc($q);
    } else {
        $success = "Update failed!";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Edit Student</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/editinfo.css">
</head>
<body>

<div class="card">
    <h2>Edit Student</h2>

    <?php if ($success): ?>
        <p class="success"><?= htmlspecialchars($success) ?></p>
    <?php endif; ?>

    <form method="POST">
        <div class="form-group">
            <label>Firstname</label>
            <input type="text" name="firstname" value="<?= htmlspecialchars($row['firstname']) ?>" required>
        </div>

        <div class="form-group">
            <label>Middle Initial</label>
            <input type="text" maxlength="1" name="mi" value="<?= htmlspecialchars($row['mi']) ?>" required>
        </div>

        <div class="form-group">
            <label>Lastname</label>
            <input type="text" name="lastname" value="<?= htmlspecialchars($row['lastname']) ?>" required>
        </div>

        <div class="form-group">
            <label>Strand</label>
            <input type="text" name="strand" value="<?= htmlspecialchars($row['strand']) ?>" required>
        </div>

        <div class="form-group">
            <label>Section</label>
            <input type="text" name="section" value="<?= htmlspecialchars($row['section']) ?>" required>
        </div>

        <div class="form-group">
            <label>Grade Level</label>
            <input type="text" name="gradelvl" value="<?= htmlspecialchars($row['gradelvl']) ?>" required>
        </div>

        <div class="form-group">
            <label>Address</label>
            <input type="text" name="address" value="<?= htmlspecialchars($row['address']) ?>" required>
        </div>

        <div class="form-group">
            <label>Contact</label>
            <input type="text" name="contact" value="<?= htmlspecialchars($row['contact']) ?>" required>
        </div>

        <div style="text-align:center; margin-top:20px;">
            <button type="submit" class="btn">Save Changes</button>
            <a href="addinfo.php?id=<?= $id ?>" class="btn btn-cancel">Cancel</a>
        </div>
    </form>
</div>

</body>
</html>
