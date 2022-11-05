package com.commit451.youtubeextractor;

import android.net.Uri;
import android.util.SparseArray;
import android.webkit.MimeTypeMap;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import okhttp3.HttpUrl;
import okhttp3.ResponseBody;
import retrofit2.Converter;
/* compiled from: YouTubeBodyConverter.java */
/* loaded from: classes.dex */
class c implements Converter<ResponseBody, YouTubeExtractionResult> {
    public c(HttpUrl httpUrl) {
    }

    @Override // retrofit2.Converter
    /* renamed from: a */
    public YouTubeExtractionResult convert(ResponseBody responseBody) throws IOException {
        ArrayList<String> arrayList;
        Uri uri = null;
        HashMap<String, String> a2 = a(responseBody.string(), "UTF-8");
        if (a2.containsKey("url_encoded_fmt_stream_map")) {
            ArrayList arrayList2 = new ArrayList(Arrays.asList(a2.get("url_encoded_fmt_stream_map").split(",")));
            if (a2.containsKey("adaptive_fmts")) {
                arrayList2.addAll(Arrays.asList(a2.get("adaptive_fmts").split(",")));
                arrayList = arrayList2;
            } else {
                arrayList = arrayList2;
            }
        } else {
            arrayList = a2.containsKey("adaptive_fmts") ? new ArrayList(Arrays.asList(a2.get("adaptive_fmts").split(","))) : null;
        }
        if (arrayList != null) {
            SparseArray<String> sparseArray = new SparseArray<>();
            SparseArray sparseArray2 = new SparseArray();
            for (String str : arrayList) {
                HashMap<String, String> a3 = a(str, "UTF-8");
                String str2 = a3.get("type").split(";")[0];
                String str3 = a3.get("url");
                if (str3 != null && MimeTypeMap.getSingleton().hasMimeType(str2)) {
                    String str4 = a3.get("sig");
                    String str5 = str4 != null ? str3 + "&signature=" + str4 : str3;
                    if (a(str5, "UTF-8").containsKey("signature")) {
                        sparseArray.put(Integer.parseInt(a3.get("itag")), str5);
                        sparseArray2.put(Integer.parseInt(a3.get("itag")), str2);
                    }
                }
            }
            Uri a4 = a(36, sparseArray);
            Uri a5 = a(18, sparseArray);
            Uri a6 = a(22, sparseArray);
            Uri a7 = a(37, sparseArray);
            Uri a8 = a4 == null ? a(17, sparseArray) : a4;
            Uri a9 = a5 == null ? a(43, sparseArray) : a5;
            Uri parse = a2.containsKey("iurlmq") ? Uri.parse(a2.get("iurlmq")) : null;
            Uri parse2 = a2.containsKey("iurlhq") ? Uri.parse(a2.get("iurlhq")) : null;
            Uri parse3 = a2.containsKey("iurl") ? Uri.parse(a2.get("iurl")) : null;
            if (a2.containsKey("iurlsd")) {
                uri = Uri.parse(a2.get("iurlsd"));
            }
            if (a8 == null && a9 == null && a6 == null && a7 == null) {
                throw new YouTubeExtractionException(200, "Nie znaleziono Video");
            }
            return new YouTubeExtractionResult().a(a8).b(a9).c(a6).d(a7).e(parse).f(parse2).g(parse3).h(uri);
        }
        int i = -1;
        try {
            i = Integer.parseInt(a2.get("errorcode"));
        } catch (Exception e) {
        }
        throw new YouTubeExtractionException(i, "Status: " + a2.get("status") + "\nReason: " + a2.get("reason") + "\nError code: " + a2.get("errorcode"));
    }

    private static HashMap<String, String> a(String str, String str2) throws UnsupportedEncodingException {
        HashMap<String, String> hashMap = new HashMap<>();
        for (String str3 : str.split("&")) {
            String[] split = str3.split("=");
            if (split.length == 2) {
                hashMap.put(split[0], URLDecoder.decode(split[1], str2).replace('+', ' '));
            }
        }
        return hashMap;
    }

    private Uri a(int i, SparseArray<String> sparseArray) {
        if (sparseArray.get(i, null) != null) {
            return Uri.parse(sparseArray.get(i));
        }
        return null;
    }
}
