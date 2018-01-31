package com.gs;

import java.util.List;

/**
 * Created by Administrator on 2018/1/20.
 */
public class HighCharts {

    /**
     * name : 图例1
     * data : [29.9,71.5,106.4,129.2,144,176,135.6,148.5,216.4,194.1,95.6,54.4]
     */

    private String name;
    private List<Double> data;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Double> getData() {
        return data;
    }

    public void setData(List<Double> data) {
        this.data = data;
    }
}
