abstract class ApiConsumer {
  get(String path, {Object? data, Map<String, dynamic>? queryParameter}
  
  
  );
  post(String path, {Object? data, Map<String, dynamic>? queryParameter ,
   bool isFormData =false
  }
 
  );
  delete(String path, {Object? data, Map<String, dynamic>? queryParameter ,
   bool isFormData =false
  }
 
  );
  patch(String path, {Object? data, Map<String, dynamic>? queryParameter ,
   bool isFormData =false
  }
 
  );
}
