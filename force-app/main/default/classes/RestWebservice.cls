@RestResource(urlMapping='/helloWorld/*')
global class RestWebservice {

  @HttpGetglobal static String helloWorld(){
    return 'HelloWorld';
  }

}