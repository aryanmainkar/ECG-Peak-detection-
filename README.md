# ECG Signal Analysis 

# MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



<h2 style="font-size: 18px;">Introduction</h2>
<ul style="list-style-type: disc; margin-top: 10px; margin-bottom: 10px;">
  <li>This MATLAB script is designed to detect and calculate the number of S valleys and S-S interval in an ECG signal. The script prompts the user to input the ECG file to be analyzed and produces two outputs: the number of S valleys and a plot of S-S interval as a function of time.</li>
</ul>


<h2 style="font-size: 18px;">Requirements</h2>
<ul style="list-style-type: disc; margin-top: 10px; margin-bottom: 10px;">
  <li>MATLAB software installed on the user's computer.</li>
  <li>ECG signal file in a compatible format, such as a .mat file</li>
</ul>


<h2 style="font-size: 18px;">Usage</h2>
<ul style="list-style-type: disc; margin-top: 10px; margin-bottom: 10px;">
  <li>To run the script, open MATLAB and navigate to the directory where the script is saved. Type the name of the script in the Command Window and press Enter. The      script will prompt the user to enter the name of the ECG file to be analyzed. The file should be in a format compatible with MATLAB, such as a .mat file.</li>
</ul>


<h2 style="font-size: 18px;">Methodology</h2>
<ul style="list-style-type: disc; margin-top: 10px; margin-bottom: 10px;">
    <li>The script uses various functions and programming commands from the MATLAB Primer to detect and calculate the number of S valleys and S-S interval in the ECG.     </li> 
    <li>The script also uses the 'findpeaks' function for testing purposes to verify the results of the script.</li>
    <li>The output of the script includes the number of S valleys, which indicates the number of times the signal crosses below the baseline after the R peak. The script also produces a plot of S-S interval as a function of time, which provides a visual representation of the time between S peaks.</li>
</ul>





<h2 style="font-size: 18px;">Conclusion</h2>
<ul style="list-style-type: disc; margin-top: 10px; margin-bottom: 10px;">
    <li>Overall, this MATLAB script provides a useful tool for analyzing ECG signals and detecting important features such as S valleys and S-S intervals.</li>
</ul>


