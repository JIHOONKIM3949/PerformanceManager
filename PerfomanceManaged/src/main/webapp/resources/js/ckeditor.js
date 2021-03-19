var myEditor;

ClassicEditor 
    .create( document.querySelector('#BOR_CONTENT'), {
		ckfinder: {
	        uploadUrl: "/teamproject/blog/upload"
	    }

	}) 
    .then( editor => { 
        console.log( editor );
		myEditor = editor;
    } ) 
    .catch( err => { 
        console.error( err.stack ); 
    } );
 
