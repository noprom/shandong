package com.shandong.human.resource.service.sys.impl;

import com.shandong.human.resource.domain.MonitorInformation;
import com.shandong.human.resource.service.sys.MonitorService;
import com.sun.management.OperatingSystemMXBean;
import com.sun.tools.internal.ws.wsdl.document.jaxws.Exception;
import org.springframework.stereotype.Service;

import java.io.*;
import java.lang.management.ManagementFactory;
import java.util.StringTokenizer;
import java.util.logging.Logger;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/14 下午2:27
 */
@Service
public class MonitorServiceImpl implements MonitorService {
    private static final int CPUTIME = 5000;

    private static final int PERCENT = 100;

    private static final int FAULTLENGTH = 10;

    private static Logger log = Logger.getLogger("CPUUsageLog");

    public MonitorInformation getMonitorInformation()
    {
        int kb = 1024;

        // 可使用内存
        long totalMemory = Runtime.getRuntime().totalMemory() / kb;
        // 剩余内存
        long freeMemory = Runtime.getRuntime().freeMemory() / kb;
        // 最大可使用内存
        long maxMemory = Runtime.getRuntime().maxMemory() / kb;

        OperatingSystemMXBean osmxb = (OperatingSystemMXBean) ManagementFactory.getOperatingSystemMXBean();

        // 操作系统
        String osName = System.getProperty("os.name");
        // 总的物理内存
        long totalMemorySize = osmxb.getTotalPhysicalMemorySize() / kb;
        // 剩余的物理内存
        long freePhysicalMemorySize = osmxb.getFreePhysicalMemorySize() / kb;
        // 已使用的物理内存
        long usedMemory = (osmxb.getTotalPhysicalMemorySize() - osmxb.getFreePhysicalMemorySize()) / kb;

        // 获得线程总数
        ThreadGroup parentThread;
        for (parentThread = Thread.currentThread().getThreadGroup();
             parentThread.getParent() != null;
             parentThread = parentThread.getParent());

        int totalThread = parentThread.activeCount();

        double cpuRatio = getCpuRatioForLinux();

        MonitorInformation monitorInformation = new MonitorInformation();
        monitorInformation.setFreeMemory(freeMemory);
        monitorInformation.setFreePhysicalMemorySize(freePhysicalMemorySize);
        monitorInformation.setMaxMemory(maxMemory);
        monitorInformation.setOsName(osName);
        monitorInformation.setTotalMemory(totalMemory);
        monitorInformation.setTotalMemorySize(totalMemorySize);
        monitorInformation.setTotalThread(totalThread);
        monitorInformation.setUsedMemory(usedMemory);
        monitorInformation.setCpuRatio(cpuRatio);

        return monitorInformation;

    }

    /*
     * 获得CPU使用率
     *
     * @return cpu使用率
     *
     */

    private double getCpuRatioForLinux()
    {
        InputStream is = null;
        InputStreamReader isr = null;
        BufferedReader brStat = null;
        StringTokenizer tokenStat =null;
        try
        {
            Process process = Runtime.getRuntime().exec("top -b -n 1");
            is = process.getInputStream();
            isr = new InputStreamReader(is);
            brStat = new BufferedReader(isr);

            brStat.readLine();
            brStat.readLine();

            tokenStat = new StringTokenizer(brStat.readLine());
            tokenStat.nextToken();
            tokenStat.nextToken();
            tokenStat.nextToken();
            tokenStat.nextToken();
            tokenStat.nextToken();
            tokenStat.nextToken();
            tokenStat.nextToken();
            String cpuUsage = tokenStat.nextToken();

            System.out.println("CPU idle : " + cpuUsage);
            Float usage = new Float(cpuUsage.substring(0, cpuUsage.indexOf("%")));
            is.close();
            isr.close();
            brStat.close();
            return (1 - usage.floatValue() / 100);

        }
        catch(IOException ioe)
        {
            System.out.println(ioe.getMessage());
            return 1;
        }
        finally
        {

        }
    }
}
