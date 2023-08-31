<!DOCTYPE html>
<html>
<head>
  <title>Calcular Paseo</title>
</head>
<body>
  <h1>Indique cantidad de perros grandes  <input type="number" id="perrosGrandes"> </h1>

  <h1>Indique cantidad de perros medianos  <input type="number" id="perrosMedianos"></h1>

  <h1>Indique cantidad de perros pequenos   <input type="number" id="perrosPequenos"></h1>

  <h1>Indique la cantidad de horas de paseo <input type="number" id="horasPaseo"></h1>

  <button onclick="calcularValorTotal()">Calcular valor total</button>
  <p id = "valorTotal"></p>

  <script>
    function calcularValorTotal() {
      var perrosGrandes = document.getElementById("perrosGrandes").value;
      var perrosMedianos = document.getElementById("perrosMedianos").value;
      var perrosPequenos = document.getElementById("perrosPequenos").value;
      var horasPaseo = document.getElementById("horasPaseo").value;

      var valorTotal = perrosGrandes * 10000 + perrosMedianos * 5000 + perrosPequenos * 3000;

      if (perrosGrandes + perrosMedianos + perrosPequenos > 3) {
        valorTotal = valorTotal * 0.9;
      }

      document.getElementById("valorTotal").innerHTML = valorTotal;
    }
  </script>
</body>
</html>
