
install.packages("htmltools")
library(htmltools)

# Create the HTML table as a character string
html_table <- '<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-w7ak{border-color:#ffffff;font-family:Georgia, serif !important;text-align:left;vertical-align:top}
</style>
<table class="tg"><thead>
  <tr>
    <th class="tg-w7ak"></th>
    <th class="tg-w7ak">level</th>
    <th class="tg-w7ak">Converted</th>
    <th class="tg-w7ak">Demented</th>
    <th class="tg-w7ak">Nondemented</th>
    <th class="tg-w7ak">p</th>
  </tr></thead>
<tbody>
  <tr>
    <td class="tg-w7ak">n</td>
    <td class="tg-w7ak"></td>
    <td class="tg-w7ak">37</td>
    <td class="tg-w7ak">146</td>
    <td class="tg-w7ak">190</td>
    <td class="tg-w7ak"></td>
  </tr>
  <tr>
    <td class="tg-w7ak">Female</td>
    <td class="tg-w7ak">F</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;24 ( 64.9) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;60 ( 41.1) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;129 ( 67.9) </td>
    <td class="tg-w7ak">&lt;0.001</td>
  </tr>
  <tr>
    <td class="tg-w7ak">Male</td>
    <td class="tg-w7ak">M</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;13 ( 35.1) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;86 ( 58.9) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;61 ( 32.1) </td>
    <td class="tg-w7ak"></td>
  </tr>
  <tr>
    <td class="tg-w7ak">Dom Hand</td>
    <td class="tg-w7ak">R</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;37 (100.0) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;146 (100.0) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;190 (100.0) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;NA</td>
  </tr>
  <tr>
    <td class="tg-w7ak">CDR</td>
    <td class="tg-w7ak">0</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18 ( 48.6) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 (&nbsp;&nbsp;0.0) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;188 ( 98.9) </td>
    <td class="tg-w7ak">&lt;0.001</td>
  </tr>
  <tr>
    <td class="tg-w7ak"></td>
    <td class="tg-w7ak">0.5</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;19 ( 51.4) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;102 ( 69.9) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 (&nbsp;&nbsp;1.1) </td>
    <td class="tg-w7ak"></td>
  </tr>
  <tr>
    <td class="tg-w7ak"></td>
    <td class="tg-w7ak">1</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 (&nbsp;&nbsp;0.0) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;41 ( 28.1) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 (&nbsp;&nbsp;0.0) </td>
    <td class="tg-w7ak"></td>
  </tr>
  <tr>
    <td class="tg-w7ak"></td>
    <td class="tg-w7ak">2</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 (&nbsp;&nbsp;0.0) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 (&nbsp;&nbsp;2.1) </td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 (&nbsp;&nbsp;0.0) </td>
    <td class="tg-w7ak"></td>
  </tr>
  <tr>
    <td class="tg-w7ak">Age</td>
    <td class="tg-w7ak"></td>
    <td class="tg-w7ak">&nbsp;&nbsp;79.76 (7.43)</td>
    <td class="tg-w7ak">&nbsp;&nbsp;76.26 (6.94)</td>
    <td class="tg-w7ak">&nbsp;&nbsp;77.06 (8.10)</td>
    <td class="tg-w7ak">0.045</td>
  </tr>
  <tr>
    <td class="tg-w7ak">Education</td>
    <td class="tg-w7ak"></td>
    <td class="tg-w7ak">&nbsp;&nbsp;15.46 (2.52)</td>
    <td class="tg-w7ak">&nbsp;&nbsp;13.67 (2.90)</td>
    <td class="tg-w7ak">&nbsp;&nbsp;15.14 (2.74)</td>
    <td class="tg-w7ak">&lt;0.001</td>
  </tr>
  <tr>
    <td class="tg-w7ak">SES</td>
    <td class="tg-w7ak"></td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;1.73 (0.96)</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;2.77 (1.20)</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;2.39 (1.05)</td>
    <td class="tg-w7ak">&lt;0.001</td>
  </tr>
  <tr>
    <td class="tg-w7ak">MMSE</td>
    <td class="tg-w7ak"></td>
    <td class="tg-w7ak">&nbsp;&nbsp;28.68 (1.56)</td>
    <td class="tg-w7ak">&nbsp;&nbsp;24.51 (4.50)</td>
    <td class="tg-w7ak">&nbsp;&nbsp;29.23 (0.88)</td>
    <td class="tg-w7ak">&lt;0.001</td>
  </tr>
  <tr>
    <td class="tg-w7ak">eTIV</td>
    <td class="tg-w7ak"></td>
    <td class="tg-w7ak">1459.27 (135.43)</td>
    <td class="tg-w7ak">1485.85 (173.77)</td>
    <td class="tg-w7ak">1495.50 (184.89)</td>
    <td class="tg-w7ak">0.51</td>
  </tr>
  <tr>
    <td class="tg-w7ak">nWBV</td>
    <td class="tg-w7ak"></td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;0.72 (0.04)</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;0.72 (0.03)</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;0.74 (0.04)</td>
    <td class="tg-w7ak">&lt;0.001</td>
  </tr>
  <tr>
    <td class="tg-w7ak">ASF</td>
    <td class="tg-w7ak"></td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;1.21 (0.11)</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;1.20 (0.14)</td>
    <td class="tg-w7ak">&nbsp;&nbsp;&nbsp;1.19 (0.14)</td>
    <td class="tg-w7ak">0.683</td>
  </tr>
</tbody></table>'

# Render the HTML table in R
browsable(tagList(HTML(html_table)))
