using System;
using System.IO;



// a source on reading PDFs in C#: https://dev.to/eliotjones/reading-a-pdf-in-c-on-net-core-43ef
// PDF raw link: https://raw.githubusercontent.com/michellerosenstock/Doc---ETL---SQL/main/C%23%20Source/Transcript.pdf



public class Main_Class {

    /*

    Logic Case 1: File exists:
    input: pdf
    output: boolean value true or false


    if PDF exists, return true
    else return false


    Logic Case 2: File has content:
    input: pdf
    output: boolean value true or false

    if PDF has a table,
    return true
    else return false

    */


    static void Main(string[] args){


  bool pdfURLExists = false;
  String pdfURL = "https://raw.githubusercontent.com/michellerosenstock/Doc---ETL---SQL/main/C%23%20Source/Transcript.pdf";

 //"sample_pdf.pdf"; updating it twith the actual raw PDF link. storing it as a string

  

  if (pdfURL != null){
    pdfURLExists = true;
  }
 
  
 Console.WriteLine("Does PDF exist? " + pdfURLExists);
    
    }

}
