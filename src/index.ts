import 'reflect-metadata'

import express, { Request, Response } from 'express'
import path from 'path'

const app = express()
const port = 3000

app.use(express.static('public'))

app.get('/', (_: Request, res: Response) => {
  res.sendFile(path.join(__dirname, '..', 'public', 'page.html'))
})

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`)
})
