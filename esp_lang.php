<?php
/* --- COMMANDES AUTORISÉES --- */
$ALLOWED = ["ls", "pwd", "whoami", "df", "free", "uptime"];

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
