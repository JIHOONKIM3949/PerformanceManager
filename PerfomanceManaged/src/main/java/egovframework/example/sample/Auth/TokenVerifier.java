package egovframework.example.sample.Auth;

import java.util.Collections;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.gson.GsonFactory;

@Service("TokenVerifier")
public class TokenVerifier {
	private final static Logger logger = LoggerFactory.getLogger(TokenVerifier.class);
	private String email;
	private String name;
	private String locale;
	
	public String getEmail() {
		return email;
	}


	public String getName() {
		return name;
	}


	public String getLocale() {
		return locale;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setLocale(String locale) {
		this.locale = locale;
	}
	
	public void getProfile(String Token)throws Exception{
		GoogleIdTokenVerifier verifier = new GoogleIdTokenVerifier.Builder(new NetHttpTransport(), new GsonFactory())
				.setAudience(Collections.singletonList("751260527804-2k0lihreprpbr8sd72m473vr6ds57t89.apps.googleusercontent.com"))
				.build();
		
		// 넘겨 받을 토큰넣고
		GoogleIdToken idToken = verifier.verify(Token);
		if(idToken != null){
			logger.info("Get Id token : " + idToken);
			Payload payload = idToken.getPayload();
			
			String userId = payload.getSubject();
			System.out.println("User ID " + userId);
			
			setEmail(payload.getEmail());
			setName((String)payload.get("name"));
			setLocale((String)payload.get("locale"));

			
		}else{
			logger.info("Invalid ID token");
		}
	}


	
	
	
}
