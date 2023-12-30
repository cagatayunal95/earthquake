library(XML)

# Your XML data as a string (Replace this with your actual XML string)
xml_data <- '<Stations>
  <Station code="1009">
    <PGVEast>0.044</PGVEast>
    <PGVNorth>0.036</PGVNorth>
    <PGAEast>1.404</PGAEast>
    <PGAEastG>0.14311926605504585</PGAEastG>
    <PGANorth>1.003</PGANorth>
    <PGANorthG>0.10224260958205911</PGANorthG>
    <Location longitude="28.63232" latitude="39.57798" repi="68.4330546557" />
  </Station>
  <Station code="1610">
    <PGVEast>0.225</PGVEast>
    <PGVNorth>0.237</PGVNorth>
    <PGAEast>3.155</PGAEast>
    <PGAEastG>0.3216106014271152</PGAEastG>
    <PGANorth>4.064</PGANorth>
    <PGANorthG>0.41427115188583075</PGANorthG>
    <Location longitude="29.50882" latitude="40.06708" repi="109.828369716" />
  </Station>
  <Station code="1613">
    <PGVEast>0.092</PGVEast>
    <PGVNorth>0.171</PGVNorth>
    <PGAEast>1.876</PGAEast>
    <PGAEastG>0.1912334352701325</PGAEastG>
    <PGANorth>2.498</PGANorth>
    <PGANorthG>0.254638124362895</PGANorthG>
    <Location longitude="29.23367" latitude="39.91509" repi="88.9947379298" />
  </Station>
  <Station code="4304">
    <PGVEast>0.789</PGVEast>
    <PGVNorth>0.639</PGVNorth>
    <PGAEast>35.831</PGAEast>
    <PGAEastG>3.6524974515800204</PGAEastG>
    <PGANorth>24.330</PGANorth>
    <PGANorthG>2.480122324159021</PGANorthG>
    <Location longitude="29.4004" latitude="38.99478" repi="24.849247651" />
  </Station>
  <Station code="4305">
    <PGVEast>1.371</PGVEast>
    <PGVNorth>0.753</PGVNorth>
    <PGAEast>33.715</PGAEast>
    <PGAEastG>3.4367991845056065</PGAEastG>
    <PGANorth>23.180</PGANorth>
    <PGANorthG>2.36289500509684</PGANorthG>
    <Location longitude="28.97848" latitude="39.09282" repi="15.8285385504" />
  </Station>
  <Station code="4306">
    <PGVEast>0.317</PGVEast>
    <PGVNorth>0.303</PGVNorth>
    <PGAEast>4.288</PGAEast>
    <PGAEastG>0.43710499490316007</PGAEastG>
    <PGANorth>5.962</PGANorth>
    <PGANorthG>0.6077471967380224</PGANorthG>
    <Location longitude="29.24905" latitude="39.33612" repi="25.5832871034" />
  </Station>
  <Station code="4308">
    <PGVEast>0.176</PGVEast>
    <PGVNorth>0.243</PGVNorth>
    <PGAEast>3.500</PGAEast>
    <PGAEastG>0.3567787971457696</PGAEastG>
    <PGANorth>2.709</PGANorth>
    <PGANorthG>0.2761467889908257</PGANorthG>
    <Location longitude="29.61972" latitude="39.19639" repi="40.6732923584" />
  </Station>
  <Station code="4504">
    <PGVEast>0.362</PGVEast>
    <PGVNorth>0.490</PGVNorth>
    <PGAEast>11.087</PGAEast>
    <PGAEastG>1.1301732925586137</PGAEastG>
    <PGANorth>17.108</PGANorth>
    <PGANorthG>1.7439347604485218</PGANorthG>
    <Location longitude="28.64812" latitude="39.03503" repi="45.0529907663" />
  </Station>
  <Station code="4505">
    <PGVEast>0.109</PGVEast>
    <PGVNorth>0.151</PGVNorth>
    <PGAEast>1.735</PGAEast>
    <PGAEastG>0.17686034658511723</PGAEastG>
    <PGANorth>1.351</PGANorth>
    <PGANorthG>0.13771661569826707</PGANorthG>
    <Location longitude="28.28364" latitude="38.93984" repi="78.1567414622" />
  </Station>
  <Station code="6401">
    <PGVEast>0.476</PGVEast>
    <PGVNorth>0.304</PGVNorth>
    <PGAEast>6.170</PGAEast>
    <PGAEastG>0.6289500509683995</PGAEastG>
    <PGANorth>5.303</PGANorth>
    <PGANorthG>0.5405708460754332</PGANorthG>
    <Location longitude="29.40401" latitude="38.67128" repi="53.8764915911" />
  </Station>
  <Station code="1601">
    <PGVEast>0.009</PGVEast>
    <PGVNorth>0.146</PGVNorth>
    <PGAEast>0.162</PGAEast>
    <PGAEastG>0.01651376146788991</PGAEastG>
    <PGANorth>1.081</PGANorth>
    <PGANorthG>0.11019367991845055</PGANorthG>
    <Location longitude="29.07518" latitude="40.22566" repi="123.509612167" />
  </Station>
  <Station code="1603">
    <PGVEast>0.105</PGVEast>
    <PGVNorth>0.122</PGVNorth>
    <PGAEast>0.927</PGAEast>
    <PGAEastG>0.0944954128440367</PGAEastG>
    <PGANorth>1.097</PGANorth>
    <PGANorthG>0.11182466870540264</PGANorthG>
    <Location longitude="29.1296" latitude="40.1824" repi="118.516592489" />
  </Station>
  <Station code="1605">
    <PGVEast>0.060</PGVEast>
    <PGVNorth>0.080</PGVNorth>
    <PGAEast>0.882</PGAEast>
    <PGAEastG>0.08990825688073394</PGAEastG>
    <PGANorth>1.339</PGANorth>
    <PGANorthG>0.13649337410805298</PGANorthG>
    <Location longitude="29.09589" latitude="40.27343" repi="128.725755618" />
  </Station>
  <Station code="1606">
    <PGVEast>0.188</PGVEast>
    <PGVNorth>0.210</PGVNorth>
    <PGAEast>3.121</PGAEast>
    <PGAEastG>0.31814475025484196</PGAEastG>
    <PGANorth>4.815</PGANorth>
    <PGANorthG>0.4908256880733945</PGANorthG>
    <Location longitude="29.12207" latitude="40.36298" repi="138.605449109" />
  </Station>
  <Station code="1618">
    <PGVEast>0.086</PGVEast>
    <PGVNorth>0.112</PGVNorth>
    <PGAEast>1.562</PGAEast>
    <PGAEastG>0.15922528032619776</PGAEastG>
    <PGANorth>1.907</PGANorth>
    <PGANorthG>0.1943934760448522</PGANorthG>
    <Location longitude="28.92815" latitude="40.35095" repi="138.647225684" />
  </Station>
  <Station code="2602">
    <PGVEast>0.056</PGVEast>
    <PGVNorth>0.054</PGVNorth>
    <PGAEast>0.524</PGAEast>
    <PGAEastG>0.05341488277268094</PGAEastG>
    <PGANorth>0.604</PGANorth>
    <PGANorthG>0.061569826707441384</PGANorthG>
    <Location longitude="30.49728" latitude="39.78929" repi="137.068369162" />
  </Station>
  <Station code="2606">
    <PGVEast>0.050</PGVEast>
    <PGVNorth>0.034</PGVNorth>
    <PGAEast>1.008</PGAEast>
    <PGAEastG>0.10275229357798164</PGAEastG>
    <PGANorth>0.543</PGANorth>
    <PGANorthG>0.055351681957186545</PGANorthG>
    <Location longitude="30.45579" latitude="39.74866" repi="131.658882528" />
  </Station>
  <Station code="2610">
    <PGVEast>0.061</PGVEast>
    <PGVNorth>0.061</PGVNorth>
    <PGAEast>0.635</PGAEast>
    <PGAEastG>0.06472986748216106</PGAEastG>
    <PGANorth>0.814</PGANorth>
    <PGANorthG>0.08297655453618756</PGANorthG>
    <Location longitude="30.42164" latitude="39.822" repi="133.751777252" />
  </Station>
  <Station code="2611">
    <PGVEast>0.076</PGVEast>
    <PGVNorth>0.066</PGVNorth>
    <PGAEast>0.843</PGAEast>
    <PGAEastG>0.08593272171253821</PGAEastG>
    <PGANorth>1.052</PGANorth>
    <PGANorthG>0.1072375127420999</PGANorthG>
    <Location longitude="30.44295" latitude="39.78828" repi="133.121107366" />
  </Station>
  <Station code="2612">
    <PGVEast>0.058</PGVEast>
    <PGVNorth>0.047</PGVNorth>
    <PGAEast>0.701</PGAEast>
    <PGAEastG>0.07145769622833842</PGAEastG>
    <PGANorth>0.786</PGANorth>
    <PGANorthG>0.0801223241590214</PGANorthG>
    <Location longitude="30.4017" latitude="39.77133" repi="129.143455021" />
  </Station>
  <Station code="1607">
    <PGVEast>0.159</PGVEast>
    <PGVNorth>0.121</PGVNorth>
    <PGAEast>1.373</PGAEast>
    <PGAEastG>0.1399592252803262</PGAEastG>
    <PGANorth>1.644</PGANorth>
    <PGANorthG>0.1675840978593272</PGANorthG>
    <Location longitude="29.09803" latitude="40.39437" repi="142.155811197" />
  </Station>
  <Station code="1611">
    <PGVEast>0.082</PGVEast>
    <PGVNorth>0.140</PGVNorth>
    <PGAEast>0.770</PGAEast>
    <PGAEastG>0.07849133537206932</PGAEastG>
    <PGANorth>1.034</PGANorth>
    <PGANorthG>0.1054026503567788</PGANorthG>
    <Location longitude="29.71682" latitude="40.42923" repi="153.515890435" />
  </Station>
  <Station code="2613">
    <PGVEast>0.056</PGVEast>
    <PGVNorth>0.076</PGVNorth>
    <PGAEast>0.549</PGAEast>
    <PGAEastG>0.05596330275229358</PGAEastG>
    <PGANorth>0.697</PGANorth>
    <PGANorthG>0.0710499490316004</PGANorthG>
    <Location longitude="30.5397" latitude="39.79357" repi="140.386136336" />
  </Station>
  <Station code="2614">
    <PGVEast>0.026</PGVEast>
    <PGVNorth>0.038</PGVNorth>
    <PGAEast>0.286</PGAEast>
    <PGAEastG>0.0291539245667686</PGAEastG>
    <PGANorth>0.276</PGANorth>
    <PGANorthG>0.028134556574923548</PGANorthG>
    <Location longitude="30.55575" latitude="39.75347" repi="139.261950528" />
  </Station>
  <Station code="2615">
    <PGVEast>0.057</PGVEast>
    <PGVNorth>0.062</PGVNorth>
    <PGAEast>0.620</PGAEast>
    <PGAEastG>0.06320081549439348</PGAEastG>
    <PGANorth>0.689</PGANorth>
    <PGANorthG>0.07023445463812436</PGANorthG>
    <Location longitude="30.65213" latitude="39.74031" repi="145.758922048" />
  </Station>
  <Station code="2616">
    <PGVEast>0.020</PGVEast>
    <PGVNorth>0.026</PGVNorth>
    <PGAEast>0.230</PGAEast>
    <PGAEastG>0.023445463812436288</PGAEastG>
    <PGANorth>0.326</PGANorth>
    <PGANorthG>0.033231396534148826</PGANorthG>
    <Location longitude="30.61889" latitude="39.7063" repi="141.489918385" />
  </Station>
  <Station code="3520">
    <PGVEast>0.010</PGVEast>
    <PGVNorth>0.018</PGVNorth>
    <PGAEast>0.112</PGAEast>
    <PGAEastG>0.011416921508664628</PGAEastG>
    <PGANorth>0.110</PGANorth>
    <PGANorthG>0.011213047910295617</PGANorthG>
    <Location longitude="27.2111" latitude="38.478" repi="183.162382831" />
  </Station>
  <Station code="3530">
    <PGVEast>0.031</PGVEast>
    <PGVNorth>0.028</PGVNorth>
    <PGAEast>0.280</PGAEast>
    <PGAEastG>0.02854230377166157</PGAEastG>
    <PGANorth>0.257</PGANorth>
    <PGANorthG>0.02619775739041794</PGANorthG>
    <Location longitude="27.22444" latitude="38.45302" repi="183.225466235" />
  </Station>
  <Station code="4111">
    <PGVEast>0.092</PGVEast>
    <PGVNorth>0.062</PGVNorth>
    <PGAEast>1.564</PGAEast>
    <PGAEastG>0.15942915392456677</PGAEastG>
    <PGANorth>1.017</PGANorth>
    <PGANorthG>0.1036697247706422</PGANorthG>
    <Location longitude="29.5888" latitude="40.6844" repi="178.117308892" />
  </Station>
  <Station code="3513">
    <PGVEast>0.029</PGVEast>
    <PGVNorth>0.044</PGVNorth>
    <PGAEast>0.283</PGAEast>
    <PGAEastG>0.028848114169215084</PGAEastG>
    <PGANorth>0.282</PGANorth>
    <PGANorthG>0.028746177370030577</PGANorthG>
    <Location longitude="27.1671" latitude="38.4584" repi="187.544472068" />
  </Station>
  <Station code="3514">
    <PGVEast>0.012</PGVEast>
    <PGVNorth>0.014</PGVNorth>
    <PGAEast>0.095</PGAEast>
    <PGAEastG>0.009683995922528032</PGAEastG>
    <PGANorth>0.095</PGANorth>
    <PGANorthG>0.009683995922528032</PGANorthG>
    <Location longitude="27.1581" latitude="38.4762" repi="187.482119134" />
  </Station>
  <Station code="3518">
    <PGVEast>0.023</PGVEast>
    <PGVNorth>0.041</PGVNorth>
    <PGAEast>0.228</PGAEast>
    <PGAEastG>0.023241590214067277</PGAEastG>
    <PGANorth>0.269</PGANorth>
    <PGANorthG>0.027420998980632008</PGANorthG>
    <Location longitude="27.1435" latitude="38.4312" repi="190.648868278" />
  </Station>
  <Station code="3519">
    <PGVEast>0.041</PGVEast>
    <PGVNorth>0.032</PGVNorth>
    <PGAEast>0.235</PGAEast>
    <PGAEastG>0.023955147808358813</PGAEastG>
    <PGANorth>0.222</PGANorth>
    <PGANorthG>0.022629969418960245</PGANorthG>
    <Location longitude="27.1112" latitude="38.4525" repi="192.271914057" />
  </Station>
  <Station code="3522">
    <PGVEast>0.028</PGVEast>
    <PGVNorth>0.026</PGVNorth>
    <PGAEast>0.292</PGAEast>
    <PGAEastG>0.029765545361875635</PGAEastG>
    <PGANorth>0.222</PGANorth>
    <PGANorthG>0.022629969418960245</PGANorthG>
    <Location longitude="27.1987" latitude="38.4357" repi="186.063884673" />
  </Station>
  <Station code="3524">
    <PGVEast>0.008</PGVEast>
    <PGVNorth>0.007</PGVNorth>
    <PGAEast>0.132</PGAEast>
    <PGAEastG>0.01345565749235474</PGAEastG>
    <PGANorth>0.198</PGANorth>
    <PGANorthG>0.02018348623853211</PGANorthG>
    <Location longitude="27.1073" latitude="38.4969" repi="190.693596501" />
  </Station>
  <Station code="4105">
    <PGVEast>0.063</PGVEast>
    <PGVNorth>0.101</PGVNorth>
    <PGAEast>0.701</PGAEast>
    <PGAEastG>0.07145769622833842</PGAEastG>
    <PGANorth>1.059</PGANorth>
    <PGANorthG>0.10795107033639142</PGANorthG>
    <Location longitude="29.96935" latitude="40.67441" repi="186.473343628" />
  </Station>
  <Station code="4112">
    <PGVEast>0.130</PGVEast>
    <PGVNorth>0.202</PGVNorth>
    <PGAEast>1.188</PGAEast>
    <PGAEastG>0.12110091743119265</PGAEastG>
    <PGANorth>1.409</PGANorth>
    <PGANorthG>0.1436289500509684</PGANorthG>
    <Location longitude="29.84" latitude="40.7245" repi="187.954976437" />
  </Station>
  <Station code="4116">
    <PGVEast>0.156</PGVEast>
    <PGVNorth>0.157</PGVNorth>
    <PGAEast>1.155</PGAEast>
    <PGAEastG>0.11773700305810397</PGAEastG>
    <PGANorth>1.011</PGANorth>
    <PGANorthG>0.10305810397553515</PGANorthG>
    <Location longitude="29.86583" latitude="40.71956" repi="188.127033273" />
  </Station>
  <Station code="4123">
    <PGVEast>0.119</PGVEast>
    <PGVNorth>0.164</PGVNorth>
    <PGAEast>1.088</PGAEast>
    <PGAEastG>0.1109072375127421</PGAEastG>
    <PGANorth>1.146</PGANorth>
    <PGANorthG>0.11681957186544341</PGANorthG>
    <Location longitude="29.84794" latitude="40.71515" repi="187.178970164" />
  </Station>
  <Station code="3503">
    <PGVEast>0.022</PGVEast>
    <PGVNorth>0.027</PGVNorth>
    <PGAEast>0.217</PGAEast>
    <PGAEastG>0.022120285423037716</PGAEastG>
    <PGANorth>0.271</PGANorth>
    <PGANorthG>0.02762487257900102</PGANorthG>
    <Location longitude="26.88834" latitude="39.0739" repi="196.032498867" />
  </Station>
  <Station code="3506">
    <PGVEast>0.008</PGVEast>
    <PGVNorth>0.010</PGVNorth>
    <PGAEast>0.071</PGAEast>
    <PGAEastG>0.007237512742099897</PGAEastG>
    <PGANorth>0.082</PGANorth>
    <PGANorthG>0.00835881753312946</PGANorthG>
    <Location longitude="27.08211" latitude="38.39443" repi="197.210029753" />
  </Station>
  <Station code="3510">
    <PGVEast>0.014</PGVEast>
    <PGVNorth>0.021</PGVNorth>
    <PGAEast>0.224</PGAEast>
    <PGAEastG>0.022833843017329256</PGAEastG>
    <PGANorth>0.190</PGANorth>
    <PGANorthG>0.019367991845056064</PGANorthG>
    <Location longitude="27.043" latitude="38.409" repi="199.650576379" />
  </Station>
  <Station code="3515">
    <PGVEast>0.019</PGVEast>
    <PGVNorth>0.020</PGVNorth>
    <PGAEast>0.159</PGAEast>
    <PGAEastG>0.01620795107033639</PGAEastG>
    <PGANorth>0.162</PGANorth>
    <PGANorthG>0.01651376146788991</PGANorthG>
    <Location longitude="27.094" latitude="38.4649" repi="193.113019252" />
  </Station>
  <Station code="3521">
    <PGVEast>0.035</PGVEast>
    <PGVNorth>0.043</PGVNorth>
    <PGAEast>0.238</PGAEast>
    <PGAEastG>0.02426095820591233</PGAEastG>
    <PGANorth>0.218</PGANorth>
    <PGANorthG>0.02222222222222222</PGANorthG>
    <Location longitude="27.07636" latitude="38.46792" repi="194.402399319" />
  </Station>
  <Station code="3525">
    <PGVEast>0.007</PGVEast>
    <PGVNorth>0.008</PGVNorth>
    <PGAEast>0.086</PGAEast>
    <PGAEastG>0.008766564729867482</PGAEastG>
    <PGANorth>0.092</PGANorth>
    <PGANorthG>0.009378185524974516</PGANorthG>
    <Location longitude="27.1084" latitude="38.3723" repi="196.180968462" />
  </Station>
  <Station code="4108">
    <PGVEast>0.187</PGVEast>
    <PGVNorth>0.171</PGVNorth>
    <PGAEast>1.241</PGAEast>
    <PGAEastG>0.12650356778797145</PGAEastG>
    <PGANorth>1.562</PGANorth>
    <PGANorthG>0.15922528032619776</PGANorthG>
    <Location longitude="29.93293" latitude="40.76023" repi="194.277416205" />
  </Station>
</Stations>
' # Replace with your actual data

# Parse the XML string
xml_parsed <- xmlParse(xml_data)

# Function to extract data from each station node
extractStationData <- function(station_node) {
  station_code <- xmlGetAttr(station_node, "code")
  PGVEast <- xmlValue(xmlChildren(station_node)$PGVEast)
  PGVNorth <- xmlValue(xmlChildren(station_node)$PGVNorth)
  PGAEastG <- xmlValue(xmlChildren(station_node)$PGAEastG)
  PGANorthG <- xmlValue(xmlChildren(station_node)$PGANorthG)
  location <- xmlChildren(station_node)$Location
  longitude <- xmlGetAttr(location, "longitude")
  latitude <- xmlGetAttr(location, "latitude")
  repi <- xmlGetAttr(location, "repi")
  
  return(c(code = station_code, lat = latitude, lon = longitude, dist = repi, hhn_vel = PGVNorth, hhn_acc = PGANorthG, hhe_vel = PGVEast, hhe_acc = PGAEastG))
}

# Extract data from all stations
stations <- xpathApply(xmlRoot(xml_parsed)[[1]], "//Station", extractStationData)

# Convert the list to a data frame
stations_df <- do.call(rbind, stations)
stations_df <- data.frame(stations_df, stringsAsFactors = FALSE)

# Function to create an XML node for each sensor component
createSensorComponentNode <- function(name, acc, vel) {
  xmlNode("comp", 
          attrs = c(name = name),
          xmlNode("acc", attrs = c(value = acc, flag = "0")),
          xmlNode("vel", attrs = c(value = vel, flag = "0")),
          xmlNode("psa03", attrs = c(value = "", flag = "0")),
          xmlNode("psa10", attrs = c(value = "", flag = "0")),
          xmlNode("psa30", attrs = c(value = "", flag = "0"))
  )
}

# Function to create XML node from a row of the data frame
createXMLNodeFromRow <- function(row) {
  xmlNode("station",
          attrs = c(code = row$code, name = row$code, netid = "AFAD", insttype = "", lat = row$lat, lon = row$lon, dist = row$dist),
          createSensorComponentNode("HHZ", "", ""),
          createSensorComponentNode("HHN", row$hhn_acc, row$hhn_vel),
          createSensorComponentNode("HHE", row$hhe_acc, row$hhe_vel)
  )
}

# Initialize the 'doc' object as an XML node
doc <- xmlNode("Stations")

# Append each station node to the 'doc'
for (i in 1:nrow(stations_df)) {
  doc <- append.xmlNode(doc, createXMLNodeFromRow(stations_df[i,]))
}

# Print the final XML in a neat format
cat(saveXML(doc, indent = TRUE, prefix = ""))
