package com.zl.QuartZ;

import org.quartz.*;

import java.util.Date;

/**
 * Created by Administrator on 2017/10/26.
 */
public class QuartzTest implements Job{

    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        System.out.println("开始测试！");
        System.out.println("1"+jobExecutionContext.getCalendar());

        System.out.println("2"+jobExecutionContext.isRecovering());

        System.out.println("3"+jobExecutionContext.getRefireCount());

        System.out.println("4"+jobExecutionContext.getJobDetail());

        System.out.println("5"+jobExecutionContext.getJobInstance());

        System.out.println("6"+jobExecutionContext.getFireTime());

        System.out.println("7"+jobExecutionContext.getScheduledFireTime());

        System.out.println("8"+jobExecutionContext.getPreviousFireTime());

        System.out.println("9"+jobExecutionContext.getNextFireTime());

        System.out.println("10"+jobExecutionContext.getFireInstanceId());

        System.out.println("11"+jobExecutionContext.getJobRunTime());


    }
}
