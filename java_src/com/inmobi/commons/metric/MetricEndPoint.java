package com.inmobi.commons.metric;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes2.dex */
public class MetricEndPoint {
    public static void sendData(String str, String str2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestProperty("User-Agent", InternalSDKUtil.getUserAgent());
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(false);
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream());
        outputStreamWriter.write(str2);
        outputStreamWriter.flush();
        outputStreamWriter.close();
        httpURLConnection.getResponseCode();
    }
}
