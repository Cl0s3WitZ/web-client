<?php
session_start();

/* --- CONFIG --- */
$USER = "admin";
$PASS = "motdepasse";
$ALLOWED = ["ls", "pwd", "whoami", "df", "free", "uptime"];

/* --- LOGIN --- */
if (!isset($_SESSION["ok"])) {
    if (!empty($_POST["login_user"]) && !empty($_POST["login_pass"])) {
        if ($_POST["login_user"] === $USER && $_POST["login_pass"] === $PASS) {
            $_SESSION["ok"] = true;
        } else {
            $error = "Identifiants incorrects.";
        }
    }

    echo '<h3>Login</h3>';
    if (!empty($error)) echo '<p style="color:red">'.$error.'</p>';
    echo '<form method="POST">
            <input name="login_user" placeholder="user"><br>
            <input name="login_pass" type="password" placeholder="pass"><br>
            <button type="submit">Se connecter</button>
          </form>';
    exit;
}

/* --- EXECUTION --- */
$output = "";

if (!empty($_POST["cmd"])) {
    $cmd = trim($_POST["cmd"]);
    $parts = explode(" ", $cmd);

    if (!in_array($parts[0], $ALLOWED)) {
        $output = "Commande non autorisée.";
    } else {
        $output = shell_exec(escapeshellcmd($cmd) . " 2>&1");
    }
}
?>

<h3>Mini shell</h3>

<form method="POST">
    <input name="cmd" style="width:300px" autofocus>
    <button>OK</button>
</form>

<pre><?php echo htmlspecialchars($output); ?></pre>
