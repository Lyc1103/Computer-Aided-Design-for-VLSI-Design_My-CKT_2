# Computer-Aided-Design-for-VLSI-Design_My-CKT_2

> Author : Ya Chen <br>
> Date : 2020 / 12 / 11

---

<br>

# Description

Consider a shift register based syst em shown below It contains four input ports ( S , clock , enable and D<sub>in</sub>) and one output port ( Y ). The shift register in the circuit consists of three stages.<br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<img src = "https://i.imgur.com/AH9B5B4.png" width = "200">

The circuit with entity name My_ckt_1 is the circuit we have implemented in
<a href = "https://github.com/Lyc1103/Computer-Aided-Design-for-VLSI-Design_My-CKT">
`Computer-Aided-Design-for-VLSI-Design_My-CKT`
</a>
The functions of the My_ckt_1 can be summarized in the following table.<br>

<table bold = "1">
    <tr>
        <td>Mode</td>
        <td>Operation</td>
    </tr>
    <tr>
        <td>Mode 1 ( S = { S<sub>1</sub> , S<sub>0</sub> } = { 0, 0 } )</td>
        <td>Y<sub>i</sub> = A<sub>i</sub> OR B<sub>i</sub> , i = 3 , 2 , 1 , 0</td>
    </tr>
    <tr>
        <td>Mode 2 ( S = { S<sub>1</sub> , S<sub>0</sub> } = { 0, 1 } )</td>
        <td>Y = max { A , B , C }</td>
    </tr>
    <tr>
        <td>Mode 3 ( S = { S<sub>1</sub> , S<sub>0</sub> } = { 1, 0 } )</td>
        <td>Y = A * B</td>
    </tr>
    <tr>
        <td>Mode 4 ( S = { S<sub>1</sub> , S<sub>0</sub> } = { 1, 1 } )</td>
        <td>Y = A + C</td>
    </tr>

</table>
<br>
Write a VHDL code to implement the system using <b>Quartus II</b>. Your project report should include the following items

1. the Quartus II project file containing the VHDL code of the system
2. the word files containing the simulation r esults and t he corresponding discus sions
