package com.zl.QuartZ;

import org.quartz.*;
import org.quartz.impl.StdScheduler;
import org.quartz.impl.StdSchedulerFactory;

/**
 * Created by Administrator on 2017/10/26.
 */
public class QuartDome {
    public static void main(String [] args)throws Exception{
        Scheduler scheduler = StdSchedulerFactory.getDefaultScheduler();
        JobDetail jobDetail = JobBuilder.newJob(QuartzTest.class).withIdentity("job1").build();
        Trigger trigger = TriggerBuilder.newTrigger()
                .withIdentity("trigger1","group1")
                .withSchedule(SimpleScheduleBuilder.simpleSchedule().withIntervalInSeconds(5).repeatForever())
                .build();
       System.out.println(scheduler.scheduleJob(jobDetail,trigger));
        scheduler.start();

        JobDetail jobDetail1 = JobBuilder.newJob(QuartTest2.class).withIdentity("job2").build();
        Trigger trigger1 = TriggerBuilder.newTrigger()
                .withIdentity("trigger2","group2")
                .withSchedule(CronScheduleBuilder.cronSchedule("0 15 11 13 11 ? 2017"))
                .build();
        System.out.println(scheduler.scheduleJob(jobDetail1,trigger1));
    }
}
