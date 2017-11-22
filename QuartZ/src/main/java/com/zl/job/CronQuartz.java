package com.zl.job;

import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2017/10/27.
 */
@Component
public class CronQuartz {
    public void run() {
        System.out.println("Hello Quartz!!!");
    }
}
