(() => {
  'use strict'

  const ctx = document.getElementById('myChart')
  const myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: [
        'August',
        'September',
        'November',
        'January',
        'April',
        'July'
      ],
      datasets: [{
        data: [
          115,
          230,
          93,
          180,
          10,
          170
        ],
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: '#007bff',
        borderWidth: 4,
        pointBackgroundColor: '#007bff'
      }]
    },
    options: {
      plugins: {
        legend: {
          display: false
        },
        tooltip: {
          boxPadding: 3
        }
      }
    }
  })
})()