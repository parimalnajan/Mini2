<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container">
  <h2>Filter Table</h2>
  <p>Search for a name in the input field.</p>

  <input class="w3-input w3-border w3-padding" type="text" placeholder="Search for names.." id="myInput" onkeyup="myFunction()">

  <table class="w3-table-all w3-margin-top" id="myTable">
    <tr>
      <th style="width:60%;">Name</th>
      <th style="width:40%;">Country</th>
    </tr>
    <tr>
      <td>Alfreds Futterkiste</td>
      <td>Germany</td>
    </tr>
    <tr>
      <td>Berglunds snabbkop</td>
      <td>Sweden</td>
    </tr>
    <tr>
      <td>Island Trading</td>
      <td>UK</td>
    </tr>
    <tr>
      <td>Koniglich Essen</td>
      <td>Germany</td>
    </tr>
    <tr>
      <td>Laughing Bacchus Winecellars</td>
      <td>Canada</td>
    </tr>
    <tr>
      <td>Magazzini Alimentari Riuniti</td>
      <td>Italy</td>
    </tr>
    <tr>
      <td>North/South</td>
      <td>UK</td>
    </tr>
    <tr>
      <td>Paris specialites</td>
      <td>France</td>
    </tr>
  </table>
</div>

<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>

</body>
</html>
