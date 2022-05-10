//  point to location of apexdoc.jar file
// -s define source directory
// -t define target directory
// -p define scope
// -h point to location of custom home page
// -a point to location of custom banner
// -g define source code url where code is hosted
java -jar "C:\Program Files\Zulu\zulu-11\lib\apexdoc.jar" 
    -s "D:\Addepar\Addeforce\Setup SFDX Environment\HelloWorldLightningComponent\force-app\main\default\classes"
    -t "D:\Addepar\Addeforce\Setup SFDX Environment\HelloWorldLightningComponent\ApexDocContent" 
    -p "global;public;private;testmethod;webService" 
    -h "D:\Addepar\Addeforce\Setup SFDX Environment\HelloWorldLightningComponent\ApexDocContent\homepage.htm" 
    -a "D:\Addepar\Addeforce\Setup SFDX Environment\HelloWorldLightningComponent\ApexDocContent\projectheader.htm" 
    -g "https://github.com/addewinn/HelloWorldLightningComponent/tree/master/force-app/main/default/classes/"