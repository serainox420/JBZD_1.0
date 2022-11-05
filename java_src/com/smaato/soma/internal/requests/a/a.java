package com.smaato.soma.internal.requests.a;

import android.os.AsyncTask;
import com.inmobi.monetization.internal.Constants;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.debug.b;
import com.smaato.soma.internal.requests.f;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: FullReporterTask.java */
/* loaded from: classes3.dex */
public class a extends AsyncTask<HashMap<String, Object>, String, String> {

    /* renamed from: a  reason: collision with root package name */
    private static String f5045a = "UTF-8";
    private static String b = "=";
    private static String c = "http://avr2.smaato.net/report2?";
    private static String d = "\n";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(HashMap<String, Object>... hashMapArr) {
        String str = "";
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(c).openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setConnectTimeout(Constants.HTTP_TIMEOUT);
            httpURLConnection.setReadTimeout(Constants.HTTP_TIMEOUT);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty("User-Agent", f.b().c());
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, f5045a));
            bufferedWriter.write(a(hashMapArr[0]));
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStream.close();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 200) {
                    str = "Error";
                    com.smaato.soma.debug.a.a(new b("AVR", "Error code from AVR: " + responseCode, 1, DebugCategory.DEBUG));
                }
                httpURLConnection.disconnect();
                return str;
            } catch (Exception e) {
                return str;
            }
        } catch (Exception e2) {
            return str;
        }
    }

    private String a(HashMap<String, Object> hashMap) throws UnsupportedEncodingException {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
            try {
                if (entry.getKey() != "traces") {
                    jSONObject.put(entry.getKey(), entry.getValue().toString());
                } else {
                    JSONArray jSONArray = null;
                    if (entry.getValue() != null) {
                        JSONArray jSONArray2 = new JSONArray();
                        List list = (List) entry.getValue();
                        for (int i = 0; i < list.size(); i++) {
                            jSONArray2.put(list.get(i));
                        }
                        jSONArray = jSONArray2;
                    }
                    jSONObject.put(entry.getKey(), jSONArray);
                }
            } catch (JSONException e) {
            }
        }
        return jSONObject.toString();
    }
}
