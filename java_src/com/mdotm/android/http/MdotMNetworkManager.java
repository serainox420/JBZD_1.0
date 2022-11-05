package com.mdotm.android.http;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.StatFs;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.mdotm.android.database.MdotMCacheHandler;
import com.mdotm.android.listener.MdotMNetworkListener;
import com.mdotm.android.model.MdotMAdRequest;
import com.mdotm.android.model.MdotMAdResponse;
import com.mdotm.android.nativeads.MdotMNativeAd;
import com.mdotm.android.utils.MdotMConfiguration;
import com.mdotm.android.utils.MdotMJsonRequsetBuilder;
import com.mdotm.android.utils.MdotMLogger;
import com.mdotm.android.utils.MdotMRequestBuilder;
import com.mdotm.android.utils.MdotMUtils;
import com.mdotm.android.vast.Companion;
import com.mdotm.android.vast.VastAd;
import com.mdotm.android.vast.VastXmlParser;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Arrays;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class MdotMNetworkManager {
    private static int cacheLocation;
    private MdotMAdRequest adParams;
    private ThreadPoolExecutor executor;
    private Context mContext;
    private Handler mHandler;
    MdotMNetworkListener networkListener;
    private StringBuffer requestUrl2;
    public static String MdotM_CACHE_FOLDER = "MdotMTempCache";
    public static String MdotM_PermanentCaching = "PermanentCache";
    public static String MdotM_Banner_Temp = "BannerTemp";
    public static String MdotM_Interstitial_Temp = "InterstitialTemp";
    public static String MdotM_Native = MdotMCacheHandler.TABLE_NAME_AD_NATIVE;
    private static boolean enableCaching = false;
    private static MdotMNetworkManager mManager = null;
    private static boolean isSDCardExist = false;
    public static int imageResource = 1;
    public static int videoResource = 2;
    public static int htmlResource = 3;
    public static int gifImageResource = 4;
    private int temporaryCacheSize = 10;
    private long minMemorySize = 20911111;
    private int adCacheSizeSDCard = 8311111;
    private int adCacheSizeInternal = 5211111;
    private final int CORE_POOL_SIZE = 1;
    private final int MAX_POOL_SIZE = 1;
    private final int KEEP_ALIVE_TIME_IN_SEC = 30;
    private BlockingQueue<Runnable> worksQueue = new ArrayBlockingQueue(1);
    private final int HTTP_RESPONSE_OK = 200;
    private final int HTTP_RESPONSE_OK1 = 201;
    private boolean isCompanion = false;
    HttpURLConnection urlConnection = null;

    public static MdotMNetworkManager getInstance(Context context, Handler handler) {
        if (mManager == null) {
            MdotMLogger.d("", "**Creating new manager");
            mManager = new MdotMNetworkManager(context, handler);
        } else {
            MdotMLogger.d("", "**Using existing manager");
        }
        return mManager;
    }

    private MdotMNetworkManager(Context context, Handler handler) {
        this.mHandler = handler;
        this.mContext = context;
        setThreadPool();
    }

    private void checkCacheStatus(MdotMAdRequest mdotMAdRequest) {
        File file;
        isSDCardExist = checkSDCardState();
        if (enableCaching) {
            cacheLocation = MdotMCacheHandler.getInstance(this.mContext).getCacheLocation();
            MdotMLogger.d(this, "cache location is " + cacheLocation);
            String str = null;
            if (cacheLocation != 0) {
                manageCacheSize();
                if (cacheLocation == 2) {
                    str = String.valueOf(this.mContext.getCacheDir().getAbsolutePath()) + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_PermanentCaching;
                    verifyCache(str);
                } else if (isSDCardExist) {
                    str = String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_PermanentCaching;
                    verifyCache(str);
                } else {
                    MdotMLogger.i(this, "sd card exist is " + isSDCardExist + " clearing tables");
                    MdotMCacheHandler.getInstance(this.mContext).clearAllTable(this.mContext);
                    cacheLocation = 0;
                }
            }
            if (cacheLocation != 0) {
                if (cacheLocation == 1) {
                    boolean checkAvailableMemory = checkAvailableMemory(cacheLocation);
                    MdotMLogger.d(this, "location is sd card calculating available memory is available " + checkAvailableMemory);
                    if (!checkAvailableMemory) {
                        File file2 = new File(str);
                        if (!file2.exists()) {
                            MdotMLogger.d(this, "Cache folder doesn't exist on sd card");
                            MdotMCacheHandler.getInstance(this.mContext).clearAllTable(this.mContext);
                            if (!checkAvailableMemory(cacheLocation)) {
                                cacheLocation = 2;
                                if (!checkAvailableMemory(cacheLocation)) {
                                    cacheLocation = 0;
                                }
                            }
                        } else {
                            clearCahe(file2.listFiles());
                            MdotMCacheHandler.getInstance(this.mContext).clearAllTable(this.mContext);
                            if (!checkAvailableMemory(cacheLocation)) {
                                cacheLocation = 2;
                                if (!checkAvailableMemory(cacheLocation)) {
                                    cacheLocation = 0;
                                }
                            }
                        }
                    }
                } else if (cacheLocation == 2) {
                    boolean checkAvailableMemory2 = checkAvailableMemory(cacheLocation);
                    MdotMLogger.d(this, "location is internal calculating available memory is available " + checkAvailableMemory2);
                    if (!checkAvailableMemory2) {
                        File file3 = new File(str);
                        if (!file3.exists()) {
                            MdotMLogger.d(this, "Cache folder doesn't exist on sd card");
                            MdotMCacheHandler.getInstance(this.mContext).clearAllTable(this.mContext);
                            if (!checkAvailableMemory(cacheLocation)) {
                                cacheLocation = 0;
                            }
                        } else {
                            clearCahe(file3.listFiles());
                            MdotMCacheHandler.getInstance(this.mContext).clearAllTable(this.mContext);
                            if (!checkAvailableMemory(cacheLocation)) {
                                cacheLocation = 0;
                            }
                        }
                    }
                }
            } else {
                MdotMLogger.i(this, "Cache is not there initializing the cache");
                if (isSDCardExist) {
                    MdotMLogger.i(this, "sd card exist is " + isSDCardExist);
                    boolean checkAvailableMemory3 = checkAvailableMemory(1);
                    MdotMLogger.d(this, "location is sd card calculating available memory is available " + checkAvailableMemory3);
                    if (checkAvailableMemory3) {
                        cacheLocation = 1;
                    } else {
                        boolean checkAvailableMemory4 = checkAvailableMemory(2);
                        MdotMLogger.d(this, "memory is not available on sd card checking on internal memory. is available " + checkAvailableMemory4);
                        if (checkAvailableMemory4) {
                            cacheLocation = 2;
                        } else {
                            cacheLocation = 0;
                        }
                    }
                } else {
                    boolean checkAvailableMemory5 = checkAvailableMemory(2);
                    MdotMLogger.e(this, " sd card not there checking on internal memory. is available " + checkAvailableMemory5);
                    if (checkAvailableMemory5) {
                        cacheLocation = 2;
                    } else {
                        cacheLocation = 0;
                    }
                }
            }
            if (cacheLocation != 0) {
                if (cacheLocation == 2) {
                    file = new File(String.valueOf(this.mContext.getCacheDir().getAbsolutePath()) + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_PermanentCaching);
                } else {
                    file = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_PermanentCaching);
                }
                if (!file.mkdirs()) {
                    if (!file.exists()) {
                        if (cacheLocation == 1) {
                            cacheLocation = 2;
                            file = new File(String.valueOf(this.mContext.getCacheDir().getAbsolutePath()) + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_PermanentCaching);
                            MdotMLogger.i(this, "unable to create folder on sd card so creating on internal memory");
                            file.mkdirs();
                        }
                    } else {
                        MdotMLogger.d(this, "File created ");
                    }
                }
                if (file.exists()) {
                    if (cacheLocation == 2) {
                        MdotMCacheHandler.getInstance(this.mContext).insertCacheLocation(2);
                    } else if (cacheLocation == 1) {
                        MdotMCacheHandler.getInstance(this.mContext).insertCacheLocation(1);
                    }
                }
                MdotMLogger.d(this, "enabled cache location is " + cacheLocation + " file path " + file.getAbsolutePath());
                return;
            }
            createTemporaryCache(mdotMAdRequest);
            mdotMAdRequest.setEnableCaching(false);
            return;
        }
        createTemporaryCache(mdotMAdRequest);
    }

    private void createTemporaryCache(MdotMAdRequest mdotMAdRequest) {
        File file;
        if (isSDCardExist) {
            file = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_Interstitial_Temp);
            cacheLocation = 1;
        } else {
            file = new File(this.mContext.getCacheDir() + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_Interstitial_Temp);
            cacheLocation = 2;
        }
        if (!file.mkdirs()) {
            if (!file.exists()) {
                if (cacheLocation == 1) {
                    cacheLocation = 2;
                    file = new File(String.valueOf(this.mContext.getCacheDir().getAbsolutePath()) + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_Interstitial_Temp);
                    MdotMLogger.i(this, "unable to create folder on sd card so creating on internal memory");
                    file.mkdirs();
                }
            } else {
                MdotMLogger.d(this, "File created ");
            }
        }
        if (file.exists()) {
            manageTemporaryCache(file);
        }
        MdotMLogger.d(this, "temp cache location is " + cacheLocation + " file path " + file.getAbsolutePath());
    }

    private void manageTemporaryCache(File file) {
        MdotMLogger.d(this, "file count " + file.list().length);
        if (file.list().length >= this.temporaryCacheSize) {
            File[] listFiles = file.listFiles();
            long[] jArr = new long[listFiles.length];
            for (int i = 0; i < listFiles.length; i++) {
                String name = listFiles[i].getName();
                try {
                    jArr[i] = Long.parseLong(name.substring(name.lastIndexOf("-") + 1));
                } catch (Exception e) {
                    e.printStackTrace();
                    MdotMLogger.e(this, "Exception while checking file cached time " + e.getMessage());
                }
            }
            try {
                Arrays.sort(jArr);
                for (File file2 : listFiles) {
                    MdotMLogger.i(this, "searching file name " + file2.getName());
                    if (file2.getName().endsWith(new StringBuilder().append(jArr[0]).toString())) {
                        MdotMLogger.d(this, "deleting file " + file2.getAbsolutePath());
                        file2.delete();
                        return;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private boolean checkAvailableMemory(int i) {
        long availableExternalMemorySize;
        if (i == 2) {
            availableExternalMemorySize = getAvailableInternalMemorySize();
        } else {
            availableExternalMemorySize = getAvailableExternalMemorySize();
        }
        if (availableExternalMemorySize > this.minMemorySize) {
            return true;
        }
        return false;
    }

    private boolean verifyCache(String str) {
        String str2;
        String[] resourceParents;
        File file = new File(str);
        if (!file.exists()) {
            MdotMCacheHandler.getInstance(this.mContext).clearAllTable(this.mContext);
            cacheLocation = 0;
            return false;
        }
        String[] allFileFromCacheTable = MdotMCacheHandler.getInstance(this.mContext).getAllFileFromCacheTable();
        String[] allFilesfromResourceTable = MdotMCacheHandler.getInstance(this.mContext).getAllFilesfromResourceTable();
        File[] listFiles = file.listFiles();
        if (allFileFromCacheTable != null && listFiles != null) {
            int i = 0;
            if (allFileFromCacheTable != null) {
                i = 0 + allFileFromCacheTable.length;
            }
            if (allFilesfromResourceTable != null) {
                i += allFilesfromResourceTable.length;
            }
            if (i != listFiles.length) {
                MdotMCacheHandler.getInstance(this.mContext).clearAllTable(this.mContext);
                MdotMLogger.d(this, "file count missmatch clearing");
                clearCahe(listFiles);
                cacheLocation = 0;
                return false;
            }
            if (cacheLocation == 2) {
                str2 = String.valueOf(this.mContext.getCacheDir().getAbsolutePath()) + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_PermanentCaching + "/";
            } else {
                str2 = String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_PermanentCaching + "/";
            }
            if (allFileFromCacheTable != null) {
                for (String str3 : allFileFromCacheTable) {
                    if (!new File(String.valueOf(str2) + str3).exists()) {
                        MdotMCacheHandler.getInstance(this.mContext).deleteFileFromCacheTable(str3);
                        String[] relatedResources = MdotMCacheHandler.getInstance(this.mContext).getRelatedResources(str3);
                        if (relatedResources != null) {
                            for (String str4 : relatedResources) {
                                try {
                                    MdotMCacheHandler.getInstance(this.mContext).clearCachedResource(str4, this.mContext, cacheLocation, str3);
                                } catch (Exception e) {
                                    MdotMLogger.i(this, "Exception while delting the resources");
                                }
                            }
                        }
                    }
                }
            }
            String[] allFilesfromResourceTable2 = MdotMCacheHandler.getInstance(this.mContext).getAllFilesfromResourceTable();
            if (allFilesfromResourceTable2 != null) {
                for (String str5 : allFilesfromResourceTable2) {
                    if (!new File(String.valueOf(str2) + str5).exists() && (resourceParents = MdotMCacheHandler.getInstance(this.mContext).getResourceParents(str5)) != null) {
                        for (String str6 : resourceParents) {
                            File file2 = new File(String.valueOf(str2) + str6);
                            if (file2.exists()) {
                                file2.delete();
                            }
                            MdotMCacheHandler.getInstance(this.mContext).deleteFileFromCacheTable(str6);
                            for (String str7 : MdotMCacheHandler.getInstance(this.mContext).getRelatedResources(str6)) {
                                try {
                                    MdotMCacheHandler.getInstance(this.mContext).clearCachedResource(str7, this.mContext, cacheLocation, str6);
                                } catch (Exception e2) {
                                    MdotMLogger.i(this, "Exception while delting the resources");
                                }
                            }
                        }
                    }
                }
            }
            return true;
        }
        MdotMCacheHandler.getInstance(this.mContext).clearAllTable(this.mContext);
        clearCahe(listFiles);
        cacheLocation = 0;
        return false;
    }

    private void clearCahe(File[] fileArr) {
        MdotMLogger.d(this, "Clearing cached file");
        if (fileArr != null) {
            for (File file : fileArr) {
                if (file.isDirectory()) {
                    clearCahe(file.listFiles());
                    file.delete();
                } else {
                    file.delete();
                }
            }
        }
    }

    private boolean checkSDCardState() {
        boolean z = false;
        String externalStorageState = Environment.getExternalStorageState();
        if ("mounted".equals(externalStorageState)) {
            z = checkWriteExternalPermission();
            if (z) {
                MdotMLogger.i(this, "SD card exist and writable");
            } else {
                MdotMLogger.e(this, "SD card exist and no permission given for read and write");
            }
        } else if ("mounted_ro".equals(externalStorageState)) {
            MdotMLogger.i(this, "SD card exist but not writable");
        } else {
            MdotMLogger.i(this, "SD card not exist");
        }
        return z;
    }

    private boolean checkWriteExternalPermission() {
        return this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    private void setThreadPool() {
        this.executor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, this.worksQueue);
    }

    public void setAdNetworkListener(MdotMNetworkListener mdotMNetworkListener) {
        this.networkListener = mdotMNetworkListener;
    }

    public void sendRequest(MdotMAdRequest mdotMAdRequest, long j) {
        this.adParams = mdotMAdRequest;
        MdotMLogger.i(this, "Sending request");
        if (mdotMAdRequest != null) {
            enableCaching = mdotMAdRequest.isEnableCaching();
            checkCacheStatus(mdotMAdRequest);
            try {
                if (this.executor != null) {
                    this.executor.execute(new Requests(new MdotMRequestBuilder(this.mContext).buildRequest(mdotMAdRequest), mdotMAdRequest, j));
                }
            } catch (RejectedExecutionException e) {
                MdotMLogger.i(this, "**Reject Exception");
                Message message = new Message();
                message.obj = Long.valueOf(j);
                this.mHandler.sendMessage(message);
            } catch (Exception e2) {
                MdotMLogger.e(this, e2.getMessage());
                Message message2 = new Message();
                message2.obj = Long.valueOf(j);
                this.mHandler.sendMessage(message2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class Requests implements Runnable {
        String adID;
        MdotMAdRequest adRequest;
        boolean gpsLibExists = false;
        long requestID;
        String ua;

        public Requests(StringBuffer stringBuffer, MdotMAdRequest mdotMAdRequest, long j) {
            this.ua = MdotMUtils.getUtilsInstance().getUserAgent(MdotMNetworkManager.this.mContext);
            this.adRequest = mdotMAdRequest;
            this.requestID = j;
        }

        /* JADX WARN: Removed duplicated region for block: B:66:0x0269 A[Catch: IOException -> 0x0286, LOOP:0: B:106:0x00b5->B:66:0x0269, LOOP_END, TRY_ENTER, TRY_LEAVE, TryCatch #4 {IOException -> 0x0286, blocks: (B:17:0x00b5, B:66:0x0269), top: B:106:0x00b5 }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            URL url;
            HttpURLConnection httpURLConnection;
            int i;
            BufferedInputStream bufferedInputStream;
            BufferedReader bufferedReader;
            StringBuilder sb;
            String sb2;
            String adSize;
            String adSize2;
            String readLine;
            MdotMNetworkManager.this.requestUrl2 = new MdotMJsonRequsetBuilder(MdotMNetworkManager.this.mContext, this.ua).buildRequest(MdotMNetworkManager.this.adParams);
            String stringBuffer = MdotMNetworkManager.this.requestUrl2.toString();
            MdotMLogger.e(this, "Json requested is :" + stringBuffer);
            try {
                url = new URL(MdotMConfiguration.MDOTM_BASE_URL);
            } catch (MalformedURLException e) {
                e.printStackTrace();
                url = null;
            }
            try {
                httpURLConnection = (HttpURLConnection) url.openConnection();
            } catch (IOException e2) {
                e2.printStackTrace();
                httpURLConnection = null;
            }
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(30000);
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setRequestProperty("Accept", "application/json");
            try {
                httpURLConnection.setRequestMethod("POST");
            } catch (ProtocolException e3) {
                e3.printStackTrace();
            }
            try {
                OutputStream outputStream = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                bufferedWriter.write(stringBuffer);
                bufferedWriter.close();
                outputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            try {
                i = httpURLConnection.getResponseCode();
                try {
                    MdotMLogger.d(this, "json status code is" + i);
                } catch (IOException e5) {
                    e = e5;
                    e.printStackTrace();
                    if (i != 200) {
                    }
                    try {
                        bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                    } catch (IOException e6) {
                        e6.printStackTrace();
                        bufferedInputStream = null;
                    }
                    bufferedReader = new BufferedReader(new InputStreamReader(bufferedInputStream));
                    sb = new StringBuilder();
                    while (true) {
                        try {
                            readLine = bufferedReader.readLine();
                            if (readLine != null) {
                            }
                        } catch (IOException e7) {
                            e7.printStackTrace();
                        }
                        try {
                            break;
                        } catch (IOException e8) {
                            e8.printStackTrace();
                        }
                        sb.append(readLine).append("\n");
                        MdotMLogger.d(this, "response is = " + readLine);
                    }
                    bufferedReader.close();
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e9) {
                        e9.printStackTrace();
                    }
                    sb2 = sb.toString();
                    MdotMLogger.i(this, "response is = " + sb2);
                    if (sb2 == null) {
                    }
                    MdotMNetworkManager.this.networkListener.finishedAdParsing(null);
                    MdotMLogger.d(this, "class = " + MdotMNetworkManager.this.networkListener.getClass());
                    Message message = new Message();
                    message.obj = Long.valueOf(this.requestID);
                    MdotMNetworkManager.this.mHandler.sendMessage(message);
                }
            } catch (IOException e10) {
                e = e10;
                i = 0;
            }
            if (i != 200 || i == 201) {
                bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                bufferedReader = new BufferedReader(new InputStreamReader(bufferedInputStream));
                sb = new StringBuilder();
                while (true) {
                    readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine).append("\n");
                        MdotMLogger.d(this, "response is = " + readLine);
                    }
                    break;
                    break;
                }
                bufferedReader.close();
                bufferedInputStream.close();
                sb2 = sb.toString();
                MdotMLogger.i(this, "response is = " + sb2);
                if (sb2 == null && sb2.length() > 0) {
                    if (sb2.contains("<VAST")) {
                        VastAd parseResponse = new VastXmlParser().parseResponse(sb2);
                        MdotMLogger.d(this, "after parse" + parseResponse.getStatus());
                        if (parseResponse != null) {
                            if ((parseResponse.getStatus() != 0) & (parseResponse.getVastAds().size() > 0)) {
                                MdotMLogger.d(this, "after parse check if vast");
                                if (parseResponse.getVastAds().get(0).getAdType() == 3) {
                                    MdotMLogger.d(this, "inside parsing companion ad");
                                    MdotMAdResponse mdotMAdResponse = new MdotMAdResponse();
                                    mdotMAdResponse.setStatus(1);
                                    mdotMAdResponse.setResourceType(MdotMNetworkManager.htmlResource);
                                    mdotMAdResponse.setImageUrl(sb2);
                                    mdotMAdResponse.setAdType(MdotMUtils.AD_WITH_BANNER_OR_XHTML_OR_VIDEO);
                                    mdotMAdResponse.setImageUrl(((Companion) parseResponse.getVastAds().get(0)).getHTMLResource());
                                    mdotMAdResponse.setCompanion((Companion) parseResponse.getVastAds().get(0));
                                    mdotMAdResponse.setImpression(parseResponse.getImpression());
                                    MdotMLogger.d(this, "vastAd.getImpression()" + parseResponse.getImpression());
                                    if (mdotMAdResponse != null && mdotMAdResponse.getStatus() != 0 && (adSize2 = this.adRequest.getAdSize()) != null) {
                                        String[] split = adSize2.split(",");
                                        MdotMLogger.i(this, "Ad width and height " + Integer.parseInt(split[0]) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + Integer.parseInt(split[1]));
                                        mdotMAdResponse.setWidth(Integer.parseInt(split[0]));
                                        mdotMAdResponse.setHeight(Integer.parseInt(split[1]));
                                    }
                                    MdotMNetworkManager.this.isCompanion = true;
                                    MdotMNetworkManager.this.networkListener.finishedAdParsing(mdotMAdResponse);
                                } else if (parseResponse.getVastAds().get(0).getAdType() == 4) {
                                    MdotMLogger.d(this, "Ad is native");
                                    MdotMNatiiveContentDownloader mdotMNatiiveContentDownloader = new MdotMNatiiveContentDownloader();
                                    for (int i2 = 0; i2 < parseResponse.getVastAds().size(); i2++) {
                                        try {
                                            mdotMNatiiveContentDownloader.downloadNativeResources(((MdotMNativeAd) parseResponse.getVastAds().get(i2)).getCoverImage(), MdotMNetworkManager.cacheLocation, MdotMNetworkManager.this.mContext);
                                            mdotMNatiiveContentDownloader.downloadNativeResources(((MdotMNativeAd) parseResponse.getVastAds().get(i2)).getIcon(), MdotMNetworkManager.cacheLocation, MdotMNetworkManager.this.mContext);
                                        } catch (IOException e11) {
                                            e11.printStackTrace();
                                        }
                                    }
                                    MdotMNetworkManager.this.networkListener.finishedNativeParsing(parseResponse);
                                }
                                new MdotMAdContentDownloader().downloadResources(parseResponse, null, MdotMNetworkManager.cacheLocation, MdotMNetworkManager.this.mContext, this.adRequest.isEnableCaching());
                            }
                        }
                        if (!MdotMNetworkManager.this.isCompanion) {
                            MdotMLogger.d(this, "Ad is not companion");
                            MdotMNetworkManager.this.networkListener.finishedVastParsing(parseResponse);
                        }
                    } else {
                        MdotMAdResponse mdotMAdResponse2 = new MdotMAdResponse();
                        mdotMAdResponse2.setStatus(1);
                        mdotMAdResponse2.setResourceType(MdotMNetworkManager.htmlResource);
                        mdotMAdResponse2.setImageUrl(sb2);
                        mdotMAdResponse2.setAdType(MdotMUtils.AD_WITH_BANNER_OR_XHTML_OR_VIDEO);
                        if (mdotMAdResponse2 != null && mdotMAdResponse2.getStatus() != 0 && (adSize = this.adRequest.getAdSize()) != null) {
                            String[] split2 = adSize.split(",");
                            MdotMLogger.d(this, "Ad width and height " + Integer.parseInt(split2[0]) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + Integer.parseInt(split2[1]));
                            mdotMAdResponse2.setWidth(Integer.parseInt(split2[0]));
                            mdotMAdResponse2.setHeight(Integer.parseInt(split2[1]));
                        }
                        MdotMNetworkManager.this.networkListener.finishedAdParsing(mdotMAdResponse2);
                    }
                } else {
                    MdotMNetworkManager.this.networkListener.finishedAdParsing(null);
                }
            } else {
                MdotMNetworkManager.this.networkListener.finishedAdParsing(null);
            }
            MdotMLogger.d(this, "class = " + MdotMNetworkManager.this.networkListener.getClass());
            Message message2 = new Message();
            message2.obj = Long.valueOf(this.requestID);
            MdotMNetworkManager.this.mHandler.sendMessage(message2);
        }
    }

    private void manageCacheSize() {
        int size;
        int i;
        MdotMLogger.d(this, "manage cache");
        if (cacheLocation != 0) {
            if (cacheLocation == 2) {
                size = getSize(new File(String.valueOf(this.mContext.getCacheDir().getAbsolutePath()) + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_PermanentCaching), 0);
                i = this.adCacheSizeInternal;
                MdotMLogger.d(this, "cache size is " + size + " path " + this.mContext.getCacheDir().getAbsolutePath() + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_PermanentCaching);
            } else {
                size = getSize(new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_PermanentCaching), 0);
                i = this.adCacheSizeSDCard;
                MdotMLogger.d(this, " manage cache size is " + size + " path " + Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + MdotM_CACHE_FOLDER + "/" + MdotM_PermanentCaching + " max cache size" + i);
            }
            if (size > i) {
                if (deleteLeastRecentlyUsedCache()) {
                    manageCacheSize();
                }
                MdotMLogger.d(this, "manage cache loop");
            }
        }
    }

    private boolean deleteLeastRecentlyUsedCache() {
        return MdotMCacheHandler.getInstance(this.mContext).deleteCache(this.mContext, cacheLocation);
    }

    private int getSize(File file, int i) {
        String[] list;
        if (file != null && file.exists() && file.isDirectory() && (list = file.list()) != null) {
            for (String str : list) {
                File file2 = new File(file, str);
                if (file2.isDirectory()) {
                    i = getSize(file2, i);
                } else {
                    i = (int) (file2.length() + i);
                }
            }
        }
        return i;
    }

    private long getAvailableInternalMemorySize() {
        long blockSize;
        long availableBlocks;
        StatFs statFs = new StatFs(Environment.getDownloadCacheDirectory().getPath());
        if (Build.VERSION.SDK_INT >= 18) {
            blockSize = statFs.getBlockSizeLong();
            availableBlocks = statFs.getAvailableBlocksLong();
        } else {
            blockSize = statFs.getBlockSize();
            availableBlocks = statFs.getAvailableBlocks();
        }
        return availableBlocks * blockSize;
    }

    private long getAvailableExternalMemorySize() {
        long blockSize;
        long availableBlocks;
        if (isSDCardExist) {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            if (Build.VERSION.SDK_INT >= 18) {
                blockSize = statFs.getBlockSizeLong();
                availableBlocks = statFs.getAvailableBlocksLong();
            } else {
                blockSize = statFs.getBlockSize();
                availableBlocks = statFs.getAvailableBlocks();
            }
            return availableBlocks * blockSize;
        }
        return 0L;
    }
}
