package com.shandong.human.resource.util;

import java.util.Set;

/**
 * Created by syc on 4/2/16.
 */
public class RegExUtil {
    public static final String CHAR = "[a-zA-Z]";
    public static final String NUM_CHAR="[\\w]";
    public static final String zh_CN = "[\\u4e00-\\u9fa5]";
    public static final String SPECIFIC = "[\\$\\(|\\)|\\*|\\+|\\.|\\[|\\]|\\?|\\\\|\\^|\\{|\\}|\\|]";
    //正则表达式需要替换的字符 '$', '(', ')', '*', '+', '.', '[', ']', '?', '\\', '^', '{', '}', '|'
    public static final String NUM = "[0-9]";
}
