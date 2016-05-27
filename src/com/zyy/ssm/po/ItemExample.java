package com.zyy.ssm.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ItemExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ItemExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andItemidIsNull() {
            addCriterion("itemId is null");
            return (Criteria) this;
        }

        public Criteria andItemidIsNotNull() {
            addCriterion("itemId is not null");
            return (Criteria) this;
        }

        public Criteria andItemidEqualTo(Integer value) {
            addCriterion("itemId =", value, "itemid");
            return (Criteria) this;
        }

        public Criteria andItemidNotEqualTo(Integer value) {
            addCriterion("itemId <>", value, "itemid");
            return (Criteria) this;
        }

        public Criteria andItemidGreaterThan(Integer value) {
            addCriterion("itemId >", value, "itemid");
            return (Criteria) this;
        }

        public Criteria andItemidGreaterThanOrEqualTo(Integer value) {
            addCriterion("itemId >=", value, "itemid");
            return (Criteria) this;
        }

        public Criteria andItemidLessThan(Integer value) {
            addCriterion("itemId <", value, "itemid");
            return (Criteria) this;
        }

        public Criteria andItemidLessThanOrEqualTo(Integer value) {
            addCriterion("itemId <=", value, "itemid");
            return (Criteria) this;
        }

        public Criteria andItemidIn(List<Integer> values) {
            addCriterion("itemId in", values, "itemid");
            return (Criteria) this;
        }

        public Criteria andItemidNotIn(List<Integer> values) {
            addCriterion("itemId not in", values, "itemid");
            return (Criteria) this;
        }

        public Criteria andItemidBetween(Integer value1, Integer value2) {
            addCriterion("itemId between", value1, value2, "itemid");
            return (Criteria) this;
        }

        public Criteria andItemidNotBetween(Integer value1, Integer value2) {
            addCriterion("itemId not between", value1, value2, "itemid");
            return (Criteria) this;
        }

        public Criteria andItemnameIsNull() {
            addCriterion("itemName is null");
            return (Criteria) this;
        }

        public Criteria andItemnameIsNotNull() {
            addCriterion("itemName is not null");
            return (Criteria) this;
        }

        public Criteria andItemnameEqualTo(String value) {
            addCriterion("itemName =", value, "itemname");
            return (Criteria) this;
        }

        public Criteria andItemnameNotEqualTo(String value) {
            addCriterion("itemName <>", value, "itemname");
            return (Criteria) this;
        }

        public Criteria andItemnameGreaterThan(String value) {
            addCriterion("itemName >", value, "itemname");
            return (Criteria) this;
        }

        public Criteria andItemnameGreaterThanOrEqualTo(String value) {
            addCriterion("itemName >=", value, "itemname");
            return (Criteria) this;
        }

        public Criteria andItemnameLessThan(String value) {
            addCriterion("itemName <", value, "itemname");
            return (Criteria) this;
        }

        public Criteria andItemnameLessThanOrEqualTo(String value) {
            addCriterion("itemName <=", value, "itemname");
            return (Criteria) this;
        }

        public Criteria andItemnameLike(String value) {
            addCriterion("itemName like", value, "itemname");
            return (Criteria) this;
        }

        public Criteria andItemnameNotLike(String value) {
            addCriterion("itemName not like", value, "itemname");
            return (Criteria) this;
        }

        public Criteria andItemnameIn(List<String> values) {
            addCriterion("itemName in", values, "itemname");
            return (Criteria) this;
        }

        public Criteria andItemnameNotIn(List<String> values) {
            addCriterion("itemName not in", values, "itemname");
            return (Criteria) this;
        }

        public Criteria andItemnameBetween(String value1, String value2) {
            addCriterion("itemName between", value1, value2, "itemname");
            return (Criteria) this;
        }

        public Criteria andItemnameNotBetween(String value1, String value2) {
            addCriterion("itemName not between", value1, value2, "itemname");
            return (Criteria) this;
        }

        public Criteria andItemurlIsNull() {
            addCriterion("itemUrl is null");
            return (Criteria) this;
        }

        public Criteria andItemurlIsNotNull() {
            addCriterion("itemUrl is not null");
            return (Criteria) this;
        }

        public Criteria andItemurlEqualTo(String value) {
            addCriterion("itemUrl =", value, "itemurl");
            return (Criteria) this;
        }

        public Criteria andItemurlNotEqualTo(String value) {
            addCriterion("itemUrl <>", value, "itemurl");
            return (Criteria) this;
        }

        public Criteria andItemurlGreaterThan(String value) {
            addCriterion("itemUrl >", value, "itemurl");
            return (Criteria) this;
        }

        public Criteria andItemurlGreaterThanOrEqualTo(String value) {
            addCriterion("itemUrl >=", value, "itemurl");
            return (Criteria) this;
        }

        public Criteria andItemurlLessThan(String value) {
            addCriterion("itemUrl <", value, "itemurl");
            return (Criteria) this;
        }

        public Criteria andItemurlLessThanOrEqualTo(String value) {
            addCriterion("itemUrl <=", value, "itemurl");
            return (Criteria) this;
        }

        public Criteria andItemurlLike(String value) {
            addCriterion("itemUrl like", value, "itemurl");
            return (Criteria) this;
        }

        public Criteria andItemurlNotLike(String value) {
            addCriterion("itemUrl not like", value, "itemurl");
            return (Criteria) this;
        }

        public Criteria andItemurlIn(List<String> values) {
            addCriterion("itemUrl in", values, "itemurl");
            return (Criteria) this;
        }

        public Criteria andItemurlNotIn(List<String> values) {
            addCriterion("itemUrl not in", values, "itemurl");
            return (Criteria) this;
        }

        public Criteria andItemurlBetween(String value1, String value2) {
            addCriterion("itemUrl between", value1, value2, "itemurl");
            return (Criteria) this;
        }

        public Criteria andItemurlNotBetween(String value1, String value2) {
            addCriterion("itemUrl not between", value1, value2, "itemurl");
            return (Criteria) this;
        }

        public Criteria andItempasswordIsNull() {
            addCriterion("itemPassword is null");
            return (Criteria) this;
        }

        public Criteria andItempasswordIsNotNull() {
            addCriterion("itemPassword is not null");
            return (Criteria) this;
        }

        public Criteria andItempasswordEqualTo(String value) {
            addCriterion("itemPassword =", value, "itempassword");
            return (Criteria) this;
        }

        public Criteria andItempasswordNotEqualTo(String value) {
            addCriterion("itemPassword <>", value, "itempassword");
            return (Criteria) this;
        }

        public Criteria andItempasswordGreaterThan(String value) {
            addCriterion("itemPassword >", value, "itempassword");
            return (Criteria) this;
        }

        public Criteria andItempasswordGreaterThanOrEqualTo(String value) {
            addCriterion("itemPassword >=", value, "itempassword");
            return (Criteria) this;
        }

        public Criteria andItempasswordLessThan(String value) {
            addCriterion("itemPassword <", value, "itempassword");
            return (Criteria) this;
        }

        public Criteria andItempasswordLessThanOrEqualTo(String value) {
            addCriterion("itemPassword <=", value, "itempassword");
            return (Criteria) this;
        }

        public Criteria andItempasswordLike(String value) {
            addCriterion("itemPassword like", value, "itempassword");
            return (Criteria) this;
        }

        public Criteria andItempasswordNotLike(String value) {
            addCriterion("itemPassword not like", value, "itempassword");
            return (Criteria) this;
        }

        public Criteria andItempasswordIn(List<String> values) {
            addCriterion("itemPassword in", values, "itempassword");
            return (Criteria) this;
        }

        public Criteria andItempasswordNotIn(List<String> values) {
            addCriterion("itemPassword not in", values, "itempassword");
            return (Criteria) this;
        }

        public Criteria andItempasswordBetween(String value1, String value2) {
            addCriterion("itemPassword between", value1, value2, "itempassword");
            return (Criteria) this;
        }

        public Criteria andItempasswordNotBetween(String value1, String value2) {
            addCriterion("itemPassword not between", value1, value2, "itempassword");
            return (Criteria) this;
        }

        public Criteria andItemimgurlIsNull() {
            addCriterion("itemImgUrl is null");
            return (Criteria) this;
        }

        public Criteria andItemimgurlIsNotNull() {
            addCriterion("itemImgUrl is not null");
            return (Criteria) this;
        }

        public Criteria andItemimgurlEqualTo(String value) {
            addCriterion("itemImgUrl =", value, "itemimgurl");
            return (Criteria) this;
        }

        public Criteria andItemimgurlNotEqualTo(String value) {
            addCriterion("itemImgUrl <>", value, "itemimgurl");
            return (Criteria) this;
        }

        public Criteria andItemimgurlGreaterThan(String value) {
            addCriterion("itemImgUrl >", value, "itemimgurl");
            return (Criteria) this;
        }

        public Criteria andItemimgurlGreaterThanOrEqualTo(String value) {
            addCriterion("itemImgUrl >=", value, "itemimgurl");
            return (Criteria) this;
        }

        public Criteria andItemimgurlLessThan(String value) {
            addCriterion("itemImgUrl <", value, "itemimgurl");
            return (Criteria) this;
        }

        public Criteria andItemimgurlLessThanOrEqualTo(String value) {
            addCriterion("itemImgUrl <=", value, "itemimgurl");
            return (Criteria) this;
        }

        public Criteria andItemimgurlLike(String value) {
            addCriterion("itemImgUrl like", value, "itemimgurl");
            return (Criteria) this;
        }

        public Criteria andItemimgurlNotLike(String value) {
            addCriterion("itemImgUrl not like", value, "itemimgurl");
            return (Criteria) this;
        }

        public Criteria andItemimgurlIn(List<String> values) {
            addCriterion("itemImgUrl in", values, "itemimgurl");
            return (Criteria) this;
        }

        public Criteria andItemimgurlNotIn(List<String> values) {
            addCriterion("itemImgUrl not in", values, "itemimgurl");
            return (Criteria) this;
        }

        public Criteria andItemimgurlBetween(String value1, String value2) {
            addCriterion("itemImgUrl between", value1, value2, "itemimgurl");
            return (Criteria) this;
        }

        public Criteria andItemimgurlNotBetween(String value1, String value2) {
            addCriterion("itemImgUrl not between", value1, value2, "itemimgurl");
            return (Criteria) this;
        }

        public Criteria andItemnumIsNull() {
            addCriterion("itemNum is null");
            return (Criteria) this;
        }

        public Criteria andItemnumIsNotNull() {
            addCriterion("itemNum is not null");
            return (Criteria) this;
        }

        public Criteria andItemnumEqualTo(Integer value) {
            addCriterion("itemNum =", value, "itemnum");
            return (Criteria) this;
        }

        public Criteria andItemnumNotEqualTo(Integer value) {
            addCriterion("itemNum <>", value, "itemnum");
            return (Criteria) this;
        }

        public Criteria andItemnumGreaterThan(Integer value) {
            addCriterion("itemNum >", value, "itemnum");
            return (Criteria) this;
        }

        public Criteria andItemnumGreaterThanOrEqualTo(Integer value) {
            addCriterion("itemNum >=", value, "itemnum");
            return (Criteria) this;
        }

        public Criteria andItemnumLessThan(Integer value) {
            addCriterion("itemNum <", value, "itemnum");
            return (Criteria) this;
        }

        public Criteria andItemnumLessThanOrEqualTo(Integer value) {
            addCriterion("itemNum <=", value, "itemnum");
            return (Criteria) this;
        }

        public Criteria andItemnumIn(List<Integer> values) {
            addCriterion("itemNum in", values, "itemnum");
            return (Criteria) this;
        }

        public Criteria andItemnumNotIn(List<Integer> values) {
            addCriterion("itemNum not in", values, "itemnum");
            return (Criteria) this;
        }

        public Criteria andItemnumBetween(Integer value1, Integer value2) {
            addCriterion("itemNum between", value1, value2, "itemnum");
            return (Criteria) this;
        }

        public Criteria andItemnumNotBetween(Integer value1, Integer value2) {
            addCriterion("itemNum not between", value1, value2, "itemnum");
            return (Criteria) this;
        }

        public Criteria andItemtabIsNull() {
            addCriterion("itemTab is null");
            return (Criteria) this;
        }

        public Criteria andItemtabIsNotNull() {
            addCriterion("itemTab is not null");
            return (Criteria) this;
        }

        public Criteria andItemtabEqualTo(String value) {
            addCriterion("itemTab =", value, "itemtab");
            return (Criteria) this;
        }

        public Criteria andItemtabNotEqualTo(String value) {
            addCriterion("itemTab <>", value, "itemtab");
            return (Criteria) this;
        }

        public Criteria andItemtabGreaterThan(String value) {
            addCriterion("itemTab >", value, "itemtab");
            return (Criteria) this;
        }

        public Criteria andItemtabGreaterThanOrEqualTo(String value) {
            addCriterion("itemTab >=", value, "itemtab");
            return (Criteria) this;
        }

        public Criteria andItemtabLessThan(String value) {
            addCriterion("itemTab <", value, "itemtab");
            return (Criteria) this;
        }

        public Criteria andItemtabLessThanOrEqualTo(String value) {
            addCriterion("itemTab <=", value, "itemtab");
            return (Criteria) this;
        }

        public Criteria andItemtabLike(String value) {
            addCriterion("itemTab like", value, "itemtab");
            return (Criteria) this;
        }

        public Criteria andItemtabNotLike(String value) {
            addCriterion("itemTab not like", value, "itemtab");
            return (Criteria) this;
        }

        public Criteria andItemtabIn(List<String> values) {
            addCriterion("itemTab in", values, "itemtab");
            return (Criteria) this;
        }

        public Criteria andItemtabNotIn(List<String> values) {
            addCriterion("itemTab not in", values, "itemtab");
            return (Criteria) this;
        }

        public Criteria andItemtabBetween(String value1, String value2) {
            addCriterion("itemTab between", value1, value2, "itemtab");
            return (Criteria) this;
        }

        public Criteria andItemtabNotBetween(String value1, String value2) {
            addCriterion("itemTab not between", value1, value2, "itemtab");
            return (Criteria) this;
        }

        public Criteria andItemtimeIsNull() {
            addCriterion("itemTime is null");
            return (Criteria) this;
        }

        public Criteria andItemtimeIsNotNull() {
            addCriterion("itemTime is not null");
            return (Criteria) this;
        }

        public Criteria andItemtimeEqualTo(Date value) {
            addCriterionForJDBCDate("itemTime =", value, "itemtime");
            return (Criteria) this;
        }

        public Criteria andItemtimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("itemTime <>", value, "itemtime");
            return (Criteria) this;
        }

        public Criteria andItemtimeGreaterThan(Date value) {
            addCriterionForJDBCDate("itemTime >", value, "itemtime");
            return (Criteria) this;
        }

        public Criteria andItemtimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("itemTime >=", value, "itemtime");
            return (Criteria) this;
        }

        public Criteria andItemtimeLessThan(Date value) {
            addCriterionForJDBCDate("itemTime <", value, "itemtime");
            return (Criteria) this;
        }

        public Criteria andItemtimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("itemTime <=", value, "itemtime");
            return (Criteria) this;
        }

        public Criteria andItemtimeIn(List<Date> values) {
            addCriterionForJDBCDate("itemTime in", values, "itemtime");
            return (Criteria) this;
        }

        public Criteria andItemtimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("itemTime not in", values, "itemtime");
            return (Criteria) this;
        }

        public Criteria andItemtimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("itemTime between", value1, value2, "itemtime");
            return (Criteria) this;
        }

        public Criteria andItemtimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("itemTime not between", value1, value2, "itemtime");
            return (Criteria) this;
        }

        public Criteria andItemenameIsNull() {
            addCriterion("itemEname is null");
            return (Criteria) this;
        }

        public Criteria andItemenameIsNotNull() {
            addCriterion("itemEname is not null");
            return (Criteria) this;
        }

        public Criteria andItemenameEqualTo(String value) {
            addCriterion("itemEname =", value, "itemename");
            return (Criteria) this;
        }

        public Criteria andItemenameNotEqualTo(String value) {
            addCriterion("itemEname <>", value, "itemename");
            return (Criteria) this;
        }

        public Criteria andItemenameGreaterThan(String value) {
            addCriterion("itemEname >", value, "itemename");
            return (Criteria) this;
        }

        public Criteria andItemenameGreaterThanOrEqualTo(String value) {
            addCriterion("itemEname >=", value, "itemename");
            return (Criteria) this;
        }

        public Criteria andItemenameLessThan(String value) {
            addCriterion("itemEname <", value, "itemename");
            return (Criteria) this;
        }

        public Criteria andItemenameLessThanOrEqualTo(String value) {
            addCriterion("itemEname <=", value, "itemename");
            return (Criteria) this;
        }

        public Criteria andItemenameLike(String value) {
            addCriterion("itemEname like", value, "itemename");
            return (Criteria) this;
        }

        public Criteria andItemenameNotLike(String value) {
            addCriterion("itemEname not like", value, "itemename");
            return (Criteria) this;
        }

        public Criteria andItemenameIn(List<String> values) {
            addCriterion("itemEname in", values, "itemename");
            return (Criteria) this;
        }

        public Criteria andItemenameNotIn(List<String> values) {
            addCriterion("itemEname not in", values, "itemename");
            return (Criteria) this;
        }

        public Criteria andItemenameBetween(String value1, String value2) {
            addCriterion("itemEname between", value1, value2, "itemename");
            return (Criteria) this;
        }

        public Criteria andItemenameNotBetween(String value1, String value2) {
            addCriterion("itemEname not between", value1, value2, "itemename");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}