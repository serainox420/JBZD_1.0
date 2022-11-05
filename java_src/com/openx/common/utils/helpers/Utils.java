package com.openx.common.utils.helpers;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.flurry.android.Constants;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.sdk.event.OXMEvent;
import com.openx.sdk.event.OXMEventsListener;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Hashtable;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Element;
/* loaded from: classes3.dex */
public final class Utils {
    public static float DENSITY;
    private static Hashtable<String, String> mLogMessages;
    private static Hashtable<String, String> mMraidErrMessages;
    private static Hashtable<String, String> mStrings;
    private static int mSysVersion = -1;
    private static final String[] mRecognizedPrefixes = {"tel:", "voicemail:", "sms:", "mailto:", "geo:", "google.streetview:", "market:"};
    private static final String[] mVideoContent = {"3gp", "mp4", "ts", "webm", "mkv"};

    public static boolean isRecognizedUrl(String str) {
        if (!TextUtils.isEmpty(str)) {
            for (int i = 0; i < mRecognizedPrefixes.length; i++) {
                if (str.startsWith(mRecognizedPrefixes[i])) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static boolean isVideoContent(String str) {
        if (!TextUtils.isEmpty(str)) {
            String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
            if (TextUtils.isEmpty(extensionFromMimeType)) {
                return false;
            }
            for (int i = 0; i < mVideoContent.length; i++) {
                if (extensionFromMimeType.equalsIgnoreCase(mVideoContent[i])) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static byte[] generateSHA1(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.reset();
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception e) {
            e.getStackTrace();
            return null;
        }
    }

    public static String generateSHA1(String str) {
        try {
            return byteArrayToHexString(generateSHA1(str.getBytes()));
        } catch (Exception e) {
            e.getStackTrace();
            return null;
        }
    }

    public static String byteArrayToHexString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b : bArr) {
            int i = b & Constants.UNKNOWN;
            if (i < 16) {
                stringBuffer.append('0');
            }
            stringBuffer.append(Integer.toHexString(i));
        }
        return stringBuffer.toString().toLowerCase();
    }

    public static String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < digest.length; i++) {
                stringBuffer.append(String.format("%02x", Byte.valueOf(digest[i])));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static BitmapDrawable getDrawable(Resources resources, String str) {
        InputStream resourceAsStream = Utils.class.getClassLoader().getResourceAsStream(String.format("%1$s/%2$s", resourcesPathForDensity(stringFromDensity(DENSITY)), str));
        if (resourceAsStream != null) {
            return new BitmapDrawable(resources, BitmapFactory.decodeStream(resourceAsStream));
        }
        return null;
    }

    private static String stringFromDensity(float f) {
        if (f == 1.5d) {
            return "hdpi";
        }
        if (f >= 2.0d) {
            return "xhdpi";
        }
        return com.openx.common.utils.constants.Constants.BASE_DENSITY;
    }

    private static String resourcesPathForDensity(String str) {
        Object[] objArr = new Object[2];
        objArr[0] = com.openx.common.utils.constants.Constants.DRAWABLE_RESOURCES_CLASSPATH;
        if (str == null) {
            str = com.openx.common.utils.constants.Constants.BASE_DENSITY;
        }
        objArr[1] = str;
        return String.format("%1$s/%2$s", objArr);
    }

    public static String loadStringFromFile(Resources resources, int i) {
        try {
            InputStream openRawResource = resources.openRawResource(i);
            byte[] bArr = new byte[openRawResource.available()];
            openRawResource.read(bArr);
            String str = new String(bArr);
            openRawResource.close();
            return str;
        } catch (Exception e) {
            return "EMPTY";
        }
    }

    public static String getSdkVersion() throws Exception {
        Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(Utils.class.getClassLoader().getResourceAsStream(String.format("%1$s/%2$s.xml", com.openx.common.utils.constants.Constants.RAW_RESOURCES_CLASSPATH, "assembly"))).getDocumentElement();
        if (documentElement != null) {
            String nodeValue = documentElement.getAttributes().getNamedItem("android:versionName").getNodeValue();
            if (nodeValue != null && !nodeValue.equals("")) {
                return nodeValue;
            }
            return null;
        }
        return null;
    }

    public static void log(Object obj, Object obj2) {
        OXMEventsListener eventsManager = OXMManagersResolver.getInstance().getEventsManager();
        if (eventsManager != null) {
            eventsManager.fireEvent(new OXMEvent(OXMEvent.OXMEventType.LOG, obj, obj2));
        }
    }

    private static Hashtable<String, String> getStringsMap() {
        if (mStrings == null) {
            mStrings = new CSVFileReader(Utils.class.getClassLoader().getResourceAsStream(String.format("%1$s/%2$s", com.openx.common.utils.constants.Constants.RAW_RESOURCES_CLASSPATH, com.openx.common.utils.constants.Constants.STRINGS_FNAME)), ";").read();
        }
        return mStrings;
    }

    private static Hashtable<String, String> getLogMessagesMap() {
        if (mLogMessages == null) {
            mLogMessages = new CSVFileReader(Utils.class.getClassLoader().getResourceAsStream(String.format("%1$s/%2$s", com.openx.common.utils.constants.Constants.RAW_RESOURCES_CLASSPATH, com.openx.common.utils.constants.Constants.LOG_MSGS_FNAME)), ";").read();
        }
        return mLogMessages;
    }

    private static Hashtable<String, String> getMraidErrMessagesMap() {
        if (mMraidErrMessages == null) {
            mMraidErrMessages = new CSVFileReader(Utils.class.getClassLoader().getResourceAsStream(String.format("%1$s/%2$s", com.openx.common.utils.constants.Constants.RAW_RESOURCES_CLASSPATH, com.openx.common.utils.constants.Constants.MRAID_ERR_MSGS_FNAME)), ";").read();
        }
        return mMraidErrMessages;
    }

    public static String getString(String str) {
        Hashtable<String, String> stringsMap = getStringsMap();
        return (stringsMap == null || !stringsMap.containsKey(str)) ? "" : stringsMap.get(str);
    }

    public static String getLogMessage(String str) {
        Hashtable<String, String> logMessagesMap = getLogMessagesMap();
        return (logMessagesMap == null || !logMessagesMap.containsKey(str)) ? "" : logMessagesMap.get(str);
    }

    public static String getMRAIDErrMessage(String str) {
        Hashtable<String, String> mraidErrMessagesMap = getMraidErrMessagesMap();
        return (mraidErrMessagesMap == null || !mraidErrMessagesMap.containsKey(str)) ? "" : mraidErrMessagesMap.get(str);
    }

    public static boolean atLeastKitKat() {
        return Build.VERSION.SDK_INT >= 19;
    }

    public static boolean atLeastFroyo() {
        return osAtLeast(8);
    }

    public static boolean atLeastGingerbread() {
        return osAtLeast(9);
    }

    public static boolean atLeastHoneycomb() {
        return osAtLeast(11);
    }

    public static boolean atMostJB() {
        return Build.VERSION.SDK_INT <= 18;
    }

    public static boolean atLeastICS() {
        return osAtLeast(14);
    }

    public static boolean atLeastJellyBean() {
        return osAtLeast(16);
    }

    public static boolean isExternalStorageAvailable() {
        boolean z;
        boolean z2;
        String externalStorageState = Environment.getExternalStorageState();
        if ("mounted".equals(externalStorageState)) {
            z = true;
            z2 = true;
        } else if ("mounted_ro".equals(externalStorageState)) {
            z = false;
            z2 = true;
        } else {
            z = false;
            z2 = false;
        }
        return z2 && z;
    }

    private static boolean osAtLeast(int i) {
        if (mSysVersion == -1) {
            try {
                mSysVersion = Build.VERSION.class.getDeclaredField("SDK_INT").getInt(null);
            } catch (Exception e) {
                mSysVersion = 0;
            }
        }
        return mSysVersion >= i;
    }

    public static boolean avoidJSC_MOB273() {
        return "generic".equals(Build.BRAND) && (Build.VERSION.SDK_INT == 10 || Build.VERSION.SDK_INT == 9);
    }
}
