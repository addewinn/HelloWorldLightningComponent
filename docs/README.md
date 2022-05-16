# HelloWorld for AddePeeps

Quick start guide for developing on the Salesforce platform.

## Tools and Prerequisites
### Request access through Okta
- VSCode
- GitHub 

### Local Install
#### [Install Salesforce CLI](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_install_cli.htm)
The Salesforce CLI is the backbone for the SFDX plugin and is required to use SFDX and SF from terminals.

#### [AddeDocs](https://github.com/addewinn/addedoc)
Create a local store for code documentation to help understand the code base.  _See repository for more info_
##### Getting Started with AddeDocs
- [Download jar file](https://github.com/addewinn/addedoc/releases/download/v0.0.1-beta/addedoc.jar)
- Clone repository you are working on
- Run command from CLI to generate local code documentation to help you get familiar with the project
```
java -jar "your_local_path_to\addedoc.jar" -s "your_local_path_to\force-app\main\default\classes" -t "your_local_path_to_project" -p "global;public;private;testmethod;webService" -g "github_url_for_classes_directory" 
```
  _Example_
```
java -jar "C:\Program Files\Zulu\zulu-11\lib\addedoc.jar" -s "D:\Addepar\GitHub\HelloWorldLightningComponent\force-app\main\default\classes" -t "D:\Addepar\GitHub\HelloWorldLightningComponent" -p "global;public;private;testmethod;webService" -g "https://github.com/addewinn/HelloWorldLightningComponent/tree/master/force-app/main/default/classes/"
```

### VSCode Extensions
- [Salesforce Extension Pack (Expanded)](https://marketplace.visualstudio.com/items?itemName=salesforce.salesforcedx-vscode-expanded)

### SFDX Configuration Settings
See [CLI Runtime Configuration Values](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_dev_cli_config_values.htm) for all configuration options

#### [Addepar Metadata Templates](https://github.com/addewinn/addeforce-templates)

Preformatted metadata templates to easily adhere to documentation and code quality standards.  

Run the following configuration after installing the CLI and extension pack.
```
sfdx config:set customOrgMetadataTemplates=https://github.com/addewinn/addeforce-templates
```
#### [SFDX Autocomplete](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_dev_cli_autocomplete.htm) 
Easy autocomplete tool for SFDX and SF command line instructions.  Not this tool _does not work on Windows_
##### Usage
```
sfdx autocomplete
```
```
sfdx autocomplete --refresh-cache
```

### SFDX Plugins
Tools to make your life easier and make CI/CD possible

#### [Salesforce Code Analyzer](https://forcedotcom.github.io/sfdx-scanner/en/getting-started/install/) 

##### Install
```
sfdx plugins:install @salesforce/sfdx-scanner
```
##### Usage
```
sfdx scanner:run --target "**/default/**" --format "csv" --outfile "./docs/pmd.csv" 
```
#### [Salesforce Templates](https://www.npmjs.com/package/@salesforce/plugin-templates)
##### Install
```
sfdx plugins:install @salesforce/plugin-templates
```
##### Usage

Default Apex Class 
```
sfdx force:apex:class:create -n MyClassName
```
Unit Test 
```
sfdx force:apex:class:create -n MyClassNameTest -t ApexUnitTest
```
Exception Class 
```
sfdx force:apex:class:create -n MyClassName -t ApexException
```
Inbound Email Service 
```
sfdx force:apex:class:create -n MyClassName -t InboundEmailService 
```
Trigger 
```
sfdx force:apex:trigger:create
```
Lightning App 
```
sfdx force:lightning:app:create
```
Lightning Component 
```
sfdx force:lightning:component:create
```
Lightning Event 
```
sfdx force:lightning:event:create
```
Lightning Interface 
```
sfdx force:lightning:interface:create
```
Lightning Test 
```
sfdx force:lightning:test:create
```
Project 
```
sfdx force:project:create
```
Visualforce Component 
```
sfdx force:visualforce:component:create 
```
Visualforce Page 
```
sfdx force:visualforce:page:create
```

### Postman Salesforce Developer API Collection
[Preconfigured collection for over 230 APIs from Salesforce](https://www.postman.com/salesforce-developers/workspace/salesforce-developers/collection/12721794-67cb9baa-e0da-4986-957e-88d8734647e2?ctx=documentation)


## Read All About It from Salesforce

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)

## Get the Salesforce Developer Newsletter
[Register here](https://developer.salesforce.com/newsletter).
