package com.chiefmech.arms.entity.query;

import org.apache.commons.lang.StringUtils;

public class Criteria {

	public static enum Action {
		STR_EQUAL, NUM_EQUAL, STR_BETWEEN, NUM_BETWEEN, LIKE
	}

	private Action action;
	private String fieldName;
	private String fieldValue1;
	private String fieldValue2;

	public Criteria(Action action, String fieldName, String fieldValue1) {
		this.action = action;
		this.fieldName = fieldName;
		this.fieldValue1 = fieldValue1;
	}

	public Criteria(Action action, String fieldName, String fieldValue1,
			String fieldValue2) {
		this.action = action;
		this.fieldName = fieldName;
		this.fieldValue1 = fieldValue1;
		this.fieldValue2 = fieldValue2;
	}

	@Override
	public String toString() {
		String sql = "";
		String quoto = "";
		if (action == Action.STR_EQUAL || action == Action.STR_BETWEEN) {
			quoto = "'";
		}
		switch (action) {
			case STR_EQUAL :
			case NUM_EQUAL :
				if (StringUtils.isNotBlank(fieldValue1)) {
					sql = String.format("%s=%s%s%s", fieldName, quoto,
							fieldValue1, quoto);
				}
				break;
			case LIKE :
				if (StringUtils.isNotBlank(fieldValue1)) {
					sql = String.format("%s like '%%%s%%'", fieldName,
							fieldValue1);
				}
				break;
			case STR_BETWEEN :
			case NUM_BETWEEN :
				if (StringUtils.isNotBlank(fieldValue1)) {
					sql = String.format("%s>=%s%s%s", fieldName, quoto,
							fieldValue1, quoto);
				}
				if (StringUtils.isNotBlank(fieldValue2)) {
					if (StringUtils.isNotBlank(sql)) {
						sql += " and ";
					}
					sql += String.format("%s<=%s%s%s", fieldName, quoto,
							fieldValue2, quoto);
				}
				break;
		}
		return sql;
	}
	public String getFieldName() {
		return fieldName;
	}
	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}
	public String getFieldValue1() {
		return fieldValue1;
	}
	public void setFieldValue1(String fieldValue1) {
		this.fieldValue1 = fieldValue1;
	}
	public String getFieldValue2() {
		return fieldValue2;
	}
	public void setFieldValue2(String fieldValue2) {
		this.fieldValue2 = fieldValue2;
	}

}
