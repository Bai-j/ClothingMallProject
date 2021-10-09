package com.ssm.config;

import java.io.FileWriter;
import java.io.IOException;

public class AlipayConfig {
    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号,开发时使用沙箱提供的APPID，生产环境改成自己的APPID
    public static String APP_ID = "2016102600764878";   //你的沙箱APPID

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String APP_PRIVATE_KEY = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCtihQhTaoh26HdgjhmwmphfHhVA4CKPSDuodRngfM07N1s4BPW9y13CL9t3oOQJEWesDOklyZ+Ts415pqINQoE/TZRrrwys1EzFuHs2MSLT0VjuNbJY+889S35wFY+yBy4bMcGMTVwHM153Bi+yRTIs20uvna2kQ/2JfUZa9EAe58kIS9Ds+DaDgG30zq/RR4LuwUin//Z9+1GEpGb4c3n+aWVtNl5UkET6KZaFUfJHT8j/zmHWpN4WUPeNU+XwDubyvRO/9ibYwXmOYR8OzJisq7+j2tMxRavMdvSI7Oc4QxK3YbEQIEEi3cqVefkOOmvGlBYoLDWSmV7s/bRd3HjAgMBAAECggEBAIXsWTyaQwF+DZx0MjKbNp2lAPgai8gjBJckLFb04kulv/uVsbnjZyLFjXWskrtaQqAEOtZ6DyrKhjjyja8vv1u6TYEb6AD4gWF79z5gysz3kAU1UAx7ItVYIPLsi6JHrGJnD/CnaSXsFGZGhJI3e+KnFUtNkS+zIy5CfLPxkIldlwnCrlxrpg7sPbjQeSMUtzUnHuXQfcxVp3xSRAHpbNB4v4TRD6lDW9mCD1i3ADatGfta3MnFGyPJaDuXiNrK2wGr0jCtOS94dThsScnuhxa4joVJD3GiXW+cF+OMGxY8CqkK+5Wlaao4qTD0unSppVla9hZCMox4r3WQKwZzvwECgYEA5kirIqr0FdlkkfzIHTU8krqcDVkBjNWZG4L9/rDJInaG+2hDWxA6U6RiF9gD7u3/kruAVVJ3z8HoVdzzx1gwI+dwgqxGLit90/zUBj7MSp/A41l2EpjjItXoDVHdt07gc3W6Y/Fnv2lxOr7AvUzRvlDWLmSFNApZidkBjbef0pkCgYEAwOs0U96r240pp+j44ihftxS2jh1xkG5yJ+wXaCLUFIOkT1KITzlLu7m4Zl1t83jPrfwxBYy/RG/g37nTnD2E99Ato3XchXFYQPiIjJ/KVaJjt7un8NK6wm/Lgol8VbPZEiAaSPcftFNqzQOv1ZanQq1jjvS2nTK8zcutoRxHMdsCgYBVG5RMGrxc+txFbBQVX2CEpf0YncWJ5ENSvKXcpD+hwgZ/EfiaxjOYSA+M2mQRwNoMw8lZP0JSgUq5uRBLo1cfXeDiGoNRevdlCnLd4AWmqsYiACU4GFMRw9agXZpAriEb6u25FDYQswqK+IbJL4Pw/3U47iOgqRaQcKg3VR73OQKBgA0KWRkqPhezLROqjdhLvlyTy9tDZj/LF3BXZyWk5Q0V8O9jts8UImhoH2zb9+izS+aI249yeiNYJK061HEFP424xrz75JIonTyXEDPhQT4UogTzbGC8/d7Sy8DhJkRsycmN3fj8q2n3EYsWKraXXmsFaWtqY0Ww/k4y7GOtk6ptAoGBAN7j6eVCSPl2gNCN0PeWe3djcTf+aKH3PfCsM/MtdKWf3mKr9XtjoxzDyipHQOhdcqDD/C0vFjj9t/kACeHyaP6QE1RNkT2395I0hR4geM9hy76yBSVRUipPZCRtK1nDzICJDwTJny9sB7oSujbB+DitHvXjLTFAueVMwy0sFc8g";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArYoUIU2qIduh3YI4ZsJqYXx4VQOAij0g7qHUZ4HzNOzdbOAT1vctdwi/bd6DkCRFnrAzpJcmfk7ONeaaiDUKBP02Ua68MrNRMxbh7NjEi09FY7jWyWPvPPUt+cBWPsgcuGzHBjE1cBzNedwYvskUyLNtLr52tpEP9iX1GWvRAHufJCEvQ7Pg2g4Bt9M6v0UeC7sFIp//2fftRhKRm+HN5/mllbTZeVJBE+imWhVHyR0/I/85h1qTeFlD3jVPl8A7m8r0Tv/Ym2MF5jmEfDsyYrKu/o9rTMUWrzHb0iOznOEMSt2GxECBBIt3KlXn5DjprxpQWKCw1kple7P20Xdx4wIDAQAB";
    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
//    public static String notify_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";
    // 改成你自己的端口和站点根目录
    public static String notify_url = "http://localhost:8989/clothing-mall/toNotify.do";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问(其实就是支付成功后返回的页面)
//    public static String return_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";
    // 改成你自己的端口和站点根目录
    public static String return_url = "http://localhost:8989/clothing-mall/toUserIndex.do";


    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String CHARSET = "utf-8";

    // 支付宝网关，这是沙箱的网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 日志存放的父级路径
    public static String log_path = "D:\\tmp\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

