package com.zl.shiro;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by Administrator on 2017/10/9.
 */
public class ConllerSet {
    public static Set<String> listToSet(List<String> list){
        Set<String> tset = new HashSet<String>();
        for (String t:list) {
            tset.add(t);
        }
        return tset;
    }
}
