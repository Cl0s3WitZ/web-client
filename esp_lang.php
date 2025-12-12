<?php
/* --- COMMANDES AUTORISÉES --- */
$ALLOWED = ["ls", "pwd", "whoami", "df", "free", "uptime"];

/* --- EXECUTION DE COMMANDE --- */
$output_cmd = "";
if (!empty($_POST["cmd"])) {
    $cmd = trim($_POST["cmd"]);
    $parts = explode(" ", $cmd);

    if (!in_array($parts[0], $ALLOWED)) {
        $output_cmd = "Commande non autorisée.";
    } else {
        $output_cmd = shell_exec(escapeshellcmd($cmd) . " 2>&1");
    }
}

/* --- LECTURE DE FICHIER PHP --- */
$output_file = "";
if (!empty($_POST["file"])) {
    $file = trim($_POST["file"]);

    // Sécurité : n'autoriser que la lecture de fichiers .php
    if (!preg_match('/\.php$/', $file)) {
        $output_file = "Erreur : vous ne pouvez afficher que des fichiers .php";
    } elseif (!file_exists($file)) {
        $output_file = "Fichier introuvable.";
    } else {
        // Lecture sécurisée : on montre le code, sans l'exécuter
        $output_file = htmlspecialchars(file_get_contents($file));
    }
}
?>

<h3>Afficher un fichier .php</h3>

<form method="POST">
    <input name="file" style="width:300px" placeholder="ex: index.php">
    <button>Afficher</button>
</form>
<hr>
<h3>Mini shell</h3>
<form method="POST">
    <input name="cmd" style="width:300px" placeholder="Commande autorisée...">
    <button>OK</button>
</form>

<pre><?php echo htmlspecialchars($output_cmd); ?></pre>




<pre><?php echo $output_file; ?></pre>
