package com.mastercode.fitmaster.exception;

import com.mastercode.fitmaster.util.DescriptionUtils;
import com.mastercode.fitmaster.util.constants.ErrorConstants;
import org.springframework.http.HttpStatus;
import lombok.Getter;

@Getter
public class PackageHasActiveMembershipsException extends RuntimeException {
	private String title = DescriptionUtils.getErrorDescription(ErrorConstants.UNABLE_TO_EDIT_OR_DELETE_ENTITY);
	private HttpStatus httpStatus = HttpStatus.FORBIDDEN;

	public PackageHasActiveMembershipsException(String message) {
		super(message);
	}

	public PackageHasActiveMembershipsException(String message, HttpStatus httpStatus) {
		super(message);
		this.title = DescriptionUtils.getErrorDescription(ErrorConstants.UNABLE_TO_EDIT_OR_DELETE_ENTITY);
		this.httpStatus = httpStatus;
	}
}
