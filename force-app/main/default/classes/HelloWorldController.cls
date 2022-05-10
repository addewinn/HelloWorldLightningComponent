/**
* @author Kevin Winn
* @date May 10, 2021
* @group Lightning Web Component Controllers
* @description Controller class for HelloWorld LWC
*/
public with sharing class HelloWorldController
{
    /*
    * @description Returns a greeting to the user
    * @param personName the name of the person to greet
    * @return greeting to person
    * @throws AuraHandledException for developer tool debugging
    * @example
    * greeting = Hello Addepeeps
    */
    @AuraEnabled
    public static string sayHello(String personName)
    {
        String greeting = 'Hello ';
        try 
        {
            return String.valueOf(greeting + String.escapeSingleQuotes(personName));
        } 
        catch (Exception e) 
        {
            throw new AuraHandledException(e.getMessage());
        }
    }
}