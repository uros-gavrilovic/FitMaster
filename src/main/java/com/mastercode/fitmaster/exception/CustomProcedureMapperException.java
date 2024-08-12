package com.mastercode.fitmaster.exception;

import com.mastercode.fitmaster.util.DescriptionUtils;
import com.mastercode.fitmaster.util.constants.ErrorConstants;
import org.springframework.http.HttpStatus;
import lombok.Getter;

@Getter
public class CustomProcedureMapperException extends RuntimeException {
	private String title = DescriptionUtils.getErrorDescription(ErrorConstants.MAPPER_ERROR);
	private HttpStatus httpStatus = HttpStatus.INTERNAL_SERVER_ERROR;

	public CustomProcedureMapperException(String message) {
		super(message);
	}

	public CustomProcedureMapperException(String message, HttpStatus httpStatus) {
		super(message);
		this.httpStatus = httpStatus;
	}
}
