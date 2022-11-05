package com.video.adsdk.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import com.flurry.android.Constants;
import com.google.android.gms.vision.barcode.Barcode;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes3.dex */
public class Helper {
    static int ID_VIDEOVIEWCONTAINER = 123456;
    static int ID_VIDEOVIEW = ID_VIDEOVIEWCONTAINER + 1;
    static int ID_WEBVIEWCONTAINER = ID_VIDEOVIEWCONTAINER + 2;
    static int ID_UIVIEWCONTAINER = ID_VIDEOVIEWCONTAINER + 3;
    static int ID_BUTTONCLOSE = ID_VIDEOVIEWCONTAINER + 4;
    static int ID_WEBVIEW = ID_VIDEOVIEWCONTAINER + 5;

    public static String convertStreamToString(InputStream inputStream) throws IOException {
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[Barcode.PDF417];
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            while (true) {
                int read = bufferedReader.read(cArr);
                if (read != -1) {
                    stringWriter.write(cArr, 0, read);
                } else {
                    inputStream.close();
                    return stringWriter.toString();
                }
            }
        } catch (Throwable th) {
            inputStream.close();
            throw th;
        }
    }

    private static String readTextFromResource(Context context, int i) throws IOException {
        InputStream openRawResource = context.getResources().openRawResource(i);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int read = openRawResource.read(); read != -1; read = openRawResource.read()) {
            byteArrayOutputStream.write(read);
        }
        openRawResource.close();
        return byteArrayOutputStream.toString();
    }

    public static String getJavascriptContentToInject(Context context) throws IOException {
        return JavascriptCode.jsCode;
    }

    public static Boolean saveTextToSD(String str, String str2) throws IOException {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory.canWrite()) {
            File file = new File(externalStorageDirectory, str2);
            if (file.exists()) {
                file.delete();
            }
            FileWriter fileWriter = new FileWriter(file, true);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
            return true;
        }
        return false;
    }

    public static String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : digest) {
                stringBuffer.append(Integer.toHexString(b & Constants.UNKNOWN));
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e) {
            Log.e("VIDEOADSDK", "UTF-8 not supported as encoding");
            return "";
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static WebView createWebViewForJavascriptInteraction(Context context) {
        WebView webView = new WebView(context);
        webView.setId(ID_WEBVIEW);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setBuiltInZoomControls(true);
        webView.getSettings().setDomStorageEnabled(true);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.video.adsdk.internal.Helper.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return motionEvent.getAction() == 2;
            }
        });
        webView.requestFocusFromTouch();
        setTransparentWebviewBackground(webView);
        webView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return webView;
    }

    @TargetApi(11)
    private static void setTransparentWebviewBackground(WebView webView) {
        webView.setBackgroundColor(16777216);
        if (Build.VERSION.SDK_INT >= 11) {
            webView.setLayerType(1, null);
        }
    }

    private static String convertToHex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i++) {
            int i2 = (bArr[i] >>> 4) & 15;
            int i3 = 0;
            while (true) {
                if (i2 >= 0 && i2 <= 9) {
                    sb.append((char) (i2 + 48));
                } else {
                    sb.append((char) ((i2 - 10) + 97));
                }
                int i4 = bArr[i] & 15;
                int i5 = i3 + 1;
                if (i3 >= 1) {
                    break;
                }
                i3 = i5;
                i2 = i4;
            }
        }
        return sb.toString();
    }

    public static String SHA1(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
        messageDigest.update(str.getBytes("iso-8859-1"), 0, str.length());
        return convertToHex(messageDigest.digest());
    }

    private static RelativeLayout.LayoutParams createFillCenterLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewGroup createAdVideoView(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setBackgroundColor(0);
        relativeLayout.setId(ID_VIDEOVIEWCONTAINER);
        VideoView videoView = new VideoView(context);
        videoView.setBackgroundColor(0);
        videoView.setId(ID_VIDEOVIEW);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        relativeLayout2.setBackgroundColor(0);
        relativeLayout2.setId(ID_WEBVIEWCONTAINER);
        RelativeLayout relativeLayout3 = new RelativeLayout(context);
        relativeLayout3.setBackgroundColor(0);
        relativeLayout3.setId(ID_UIVIEWCONTAINER);
        ImageButton imageButton = new ImageButton(context);
        imageButton.setBackgroundResource(context.getResources().getIdentifier("closebox", "drawable", context.getPackageName()));
        imageButton.setContentDescription("Close");
        imageButton.setScaleType(ImageView.ScaleType.CENTER);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.topMargin = 5;
        imageButton.setLayoutParams(layoutParams);
        imageButton.setId(ID_BUTTONCLOSE);
        relativeLayout3.addView(imageButton, layoutParams);
        relativeLayout.addView(videoView, createFillCenterLayoutParams());
        relativeLayout.addView(relativeLayout2, createFillCenterLayoutParams());
        relativeLayout.addView(relativeLayout3, createFillCenterLayoutParams());
        return relativeLayout;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RelativeLayout createFakeAdVideoView(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setBackgroundColor(0);
        relativeLayout.setId(ID_VIDEOVIEWCONTAINER);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        relativeLayout2.setBackgroundColor(0);
        relativeLayout2.setId(ID_UIVIEWCONTAINER);
        TextView textView = new TextView(context);
        textView.setBackgroundColor(0);
        textView.setId(ID_VIDEOVIEW);
        textView.setText("AD NOT AVAILABLE IN EMULATOR");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        ImageButton imageButton = new ImageButton(context);
        imageButton.setBackgroundResource(context.getResources().getIdentifier("closebox", "drawable", context.getPackageName()));
        imageButton.setContentDescription("Close");
        imageButton.setScaleType(ImageView.ScaleType.CENTER);
        int applyDimension = (int) TypedValue.applyDimension(1, 64.0f, context.getResources().getDisplayMetrics());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(applyDimension, applyDimension);
        layoutParams2.addRule(11);
        layoutParams2.topMargin = 5;
        imageButton.setLayoutParams(layoutParams2);
        imageButton.setId(ID_BUTTONCLOSE);
        relativeLayout2.addView(imageButton, layoutParams2);
        relativeLayout.addView(textView, layoutParams);
        relativeLayout.addView(relativeLayout2, createFillCenterLayoutParams());
        return relativeLayout;
    }
}
