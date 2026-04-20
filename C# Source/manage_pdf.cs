using System;


// a source on reading PDFs in C#: https://dev.to/eliotjones/reading-a-pdf-in-c-on-net-core-43ef


class Main_Class {

/*
input: pdf file object
output: boolean value true or false


if PDF exists, return true
else return false

*/


public static void Main(string[] args){


  bool pdfExists = false;
  String pdf = "sample_pdf.pdf";

  if (pdf != null){
    pdfExists = true;
  }
 
  
 Console.WriteLine("Does PDF exist? " + pdfExists);
    
    }

}
