package egovframework.example.sample.Auth;

import lombok.Data;

@Data
public class GoogleAuthResponse {
	private String accessToken;
	private String expiresln;
	private String refreshToken;
	private String scope;
	private String tokenType;
	private String idToken;
};
