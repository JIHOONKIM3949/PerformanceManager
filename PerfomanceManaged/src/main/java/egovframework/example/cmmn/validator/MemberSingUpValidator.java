package egovframework.example.cmmn.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import egovframework.example.sample.Vo.MemberVO;

public class MemberSingUpValidator implements Validator{
	
	@Override
	public boolean supports(Class<?> clazz) {
		return MemberVO.class.equals(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		MemberVO member = (MemberVO) target;
		if(member.getUSER_ID() == null || member.getUSER_ID().trim().equals("")){
			errors.reject("mid", "errors.IDValueIsNull");
		} /*else{
			if(member.getUSER_ID().length() < 5){
				errors.rejectValue("mid", "errors.IDValusIsMinLength");
			}
		}*/
		
		if(member.getUSER_PW() == null || member.getUSER_PW().trim().equals("")){
			errors.reject("mid", "errors.PasswordValueIsNull");
		}
		
		if(member.getUSER_NAME() == null || member.getUSER_NAME().trim().equals("")){
			errors.reject("mid", "errors.NameValueIsNull");
		}
		
		if(member.getUSER_EMAIL() == null || member.getUSER_EMAIL().trim().equals("")){
			errors.reject("mid", "errors.EmailValueIsNull");
		}
		
		if(member.getUSER_PHONE() == null || member.getUSER_PHONE().trim().equals("")){
			errors.reject("mid", "errors.PhoneValueIsNull");
		}
		
		if(member.getFK_COM_ID() == 0){
			errors.reject("mid", "errors.ComapnyValueIsNull");
		}
		
		if(member.getUSER_POSI() == null || member.getUSER_POSI().trim().equals("")){
			errors.reject("mid", "errors.PostionValueIsNull");
		}
	}
}
