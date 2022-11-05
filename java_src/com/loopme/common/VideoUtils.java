package com.loopme.common;

import android.content.Context;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
/* loaded from: classes2.dex */
class VideoUtils {
    private static final String LOG_TAG = VideoUtils.class.getSimpleName();
    private static final int MAX_FILE_NAME_LENGHT = 123;
    public static final String MP4_FORMAT = ".mp4";
    public static final String VIDEO_FOLDER = "LoopMeAds";

    VideoUtils() {
    }

    public static void deleteInvalidVideoFiles(Context context) {
        int i = 0;
        File parentDir = getParentDir(context);
        if (parentDir != null) {
            File[] listFiles = parentDir.listFiles();
            for (File file : listFiles) {
                if (!file.isDirectory() && file.getName().endsWith(MP4_FORMAT)) {
                    File file2 = new File(file.getAbsolutePath());
                    if (file2.lastModified() + StaticParams.CACHED_VIDEO_LIFE_TIME < System.currentTimeMillis() || file2.length() == 0) {
                        file2.delete();
                        Logging.out(LOG_TAG, "Deleted cached file: " + file.getAbsolutePath());
                    } else {
                        i++;
                    }
                }
            }
            Logging.out(LOG_TAG, "In cache " + i + " file(s)");
            Logging.out(LOG_TAG, "Cache time: " + ((float) (StaticParams.CACHED_VIDEO_LIFE_TIME / 3600000)) + " hours");
        }
    }

    public static File checkFileNotExists(String str, Context context) {
        File[] listFiles;
        File parentDir = getParentDir(context);
        if (parentDir == null) {
            return null;
        }
        Logging.out(LOG_TAG, "Cache dir: " + parentDir.getAbsolutePath());
        for (File file : parentDir.listFiles()) {
            if (!file.isDirectory() && file.getName().startsWith(str)) {
                return file;
            }
        }
        return null;
    }

    public static String detectFileName(String str) {
        String str2;
        MalformedURLException e;
        try {
            str2 = new URL(str).getFile();
            if (str2 != null) {
                try {
                    if (!str2.isEmpty()) {
                        if (!str2.endsWith(MP4_FORMAT)) {
                            str2 = Long.toString(str.hashCode() & 4294967295L);
                        } else {
                            String replace = str2.replace(MP4_FORMAT, "");
                            try {
                                str2 = replace.substring(replace.lastIndexOf("/") + 1, replace.length());
                                if (str2.length() > MAX_FILE_NAME_LENGHT) {
                                    str2 = str2.substring(0, MAX_FILE_NAME_LENGHT);
                                }
                            } catch (MalformedURLException e2) {
                                str2 = replace;
                                e = e2;
                                e.printStackTrace();
                                return str2;
                            }
                        }
                    }
                } catch (MalformedURLException e3) {
                    e = e3;
                }
            }
        } catch (MalformedURLException e4) {
            str2 = null;
            e = e4;
        }
        return str2;
    }

    public static File getParentDir(Context context) {
        if (context == null) {
            return null;
        }
        return context.getExternalFilesDir(VIDEO_FOLDER);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void clearCache(Context context) {
        File[] listFiles;
        int i = 0;
        Logging.out(LOG_TAG, "Clear cache");
        for (File file : context.getExternalFilesDir(VIDEO_FOLDER).listFiles()) {
            if (!file.isDirectory() && file.getName().endsWith(MP4_FORMAT)) {
                new File(file.getAbsolutePath()).delete();
                i++;
            }
        }
        Logging.out(LOG_TAG, "Deleted " + i + " file(s)");
    }
}
