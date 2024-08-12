package com.mastercode.fitmaster.dto.membership_package;

import java.math.BigDecimal;

public record PackageDto(
		Long id,
		String name,
		Integer duration,
		BigDecimal price,
		String currency
) {}
