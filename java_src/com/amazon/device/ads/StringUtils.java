package com.amazon.device.ads;

import com.flurry.android.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
class StringUtils {
    private static final String LOGTAG = StringUtils.class.getSimpleName();
    private static final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);

    private StringUtils() {
    }

    public static boolean containsRegEx(String str, String str2) {
        return Pattern.compile(str).matcher(str2).find();
    }

    public static String getFirstMatch(String str, String str2) {
        Matcher matcher = Pattern.compile(str).matcher(str2);
        if (matcher.find()) {
            return matcher.group();
        }
        return null;
    }

    public static final boolean isNullOrEmpty(String str) {
        return str == null || str.equals("");
    }

    public static final boolean isNullOrWhiteSpace(String str) {
        return isNullOrEmpty(str) || str.trim().equals("");
    }

    protected static boolean doesExceptionContainLockedDatabaseMessage(Exception exc) {
        if (exc == null || exc.getMessage() == null) {
            return false;
        }
        return exc.getMessage().contains("database is locked");
    }

    public static String sha1(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(Integer.toHexString((b & Constants.UNKNOWN) | 256).substring(1));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            return "";
        }
    }

    public static String readStringFromInputStream(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        byte[] bArr = new byte[4096];
        while (true) {
            try {
                try {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        sb.append(new String(bArr, 0, read));
                    } else {
                        try {
                            break;
                        } catch (IOException e) {
                            logger.e("IOException while trying to close the stream.");
                        }
                    }
                } finally {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        logger.e("IOException while trying to close the stream.");
                    }
                }
            } catch (IOException e3) {
                logger.e("Unable to read the stream.");
            }
        }
        inputStream.close();
        return sb.toString();
    }
}
