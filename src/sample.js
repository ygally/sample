const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  console.log("Received request \\o/")
  res.send('Hello Sample Express!<br/><br/><br/>[(c) Yannick GALLY 2024 - MIT license (^_^x)]')
})

app.listen(port, () => {
  console.log(`Sample app listening on port ${port}`)
})


