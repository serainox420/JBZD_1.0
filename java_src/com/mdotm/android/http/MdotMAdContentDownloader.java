package com.mdotm.android.http;

import android.content.Context;
import android.os.Environment;
import com.mdotm.android.database.MdotMCacheHandler;
import com.mdotm.android.model.MdotMAdResponse;
import com.mdotm.android.utils.MdotMLogger;
import com.mdotm.android.utils.MdotMUtils;
import com.mdotm.android.vast.AdResource;
import com.mdotm.android.vast.BaseVastAd;
import com.mdotm.android.vast.Companion;
import com.mdotm.android.vast.LinearAd;
import com.mdotm.android.vast.VastAd;
import com.mopub.common.AdType;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class MdotMAdContentDownloader {
    protected static boolean isVastDownloadError = false;

    public void downloadResources(VastAd vastAd, MdotMAdResponse mdotMAdResponse, int i, Context context, boolean z) {
        boolean z2;
        AdResource adResource;
        String str;
        String str2;
        File file;
        boolean z3;
        AdResource adResource2 = null;
        String str3 = null;
        if (vastAd == null) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (!z2) {
            adResource = null;
            str = mdotMAdResponse.getImageUrl();
        } else {
            ArrayList<BaseVastAd> vastAds = vastAd.getVastAds();
            MdotMLogger.d(this, "isVast size = " + vastAds.size());
            if (vastAds == null || vastAds.size() <= 0) {
                adResource = null;
                str = null;
            } else {
                MdotMLogger.d(this, "inside content downlader");
                switch (vastAds.get(0).getAdType()) {
                    case 1:
                        adResource2 = ((LinearAd) vastAds.get(0)).getAdResource();
                        break;
                    case 3:
                        String hTMLResource = ((Companion) vastAds.get(0)).getHTMLResource();
                        MdotMLogger.d(this, AdType.HTML + hTMLResource);
                        MdotMAdResponse mdotMAdResponse2 = new MdotMAdResponse();
                        mdotMAdResponse2.setStatus(1);
                        mdotMAdResponse2.setResourceType(MdotMNetworkManager.htmlResource);
                        mdotMAdResponse2.setImageUrl(hTMLResource);
                        mdotMAdResponse2.setAdType(MdotMUtils.AD_WITH_BANNER_OR_XHTML_OR_VIDEO);
                        str3 = hTMLResource;
                        break;
                }
                if (adResource2 == null || adResource2.getDelivery() != 1) {
                    str2 = null;
                } else {
                    str2 = adResource2.getUrl();
                }
                if (str3 != null) {
                    return;
                }
                adResource = adResource2;
                str = str2;
            }
        }
        if (str != null && !str.equalsIgnoreCase("null") && str.trim().length() > 0) {
            try {
                int mimeType = setMimeType(str.substring(str.lastIndexOf(".") + 1));
                if (z2) {
                    adResource.setResourceType(mimeType);
                } else {
                    mdotMAdResponse.setResourceType(mimeType);
                }
                if (mimeType == MdotMNetworkManager.imageResource || mimeType == MdotMNetworkManager.videoResource || mimeType == MdotMNetworkManager.gifImageResource) {
                    MdotMLogger.d(this, "image/video/gifimage resource");
                    String fileName = getFileName(str, z);
                    if (i != 0 && z) {
                        if (i == 2) {
                            File file2 = new File(context.getCacheDir() + "/" + MdotMNetworkManager.MdotM_CACHE_FOLDER + "/" + MdotMNetworkManager.MdotM_PermanentCaching);
                            if (!file2.exists()) {
                                file2.mkdirs();
                            }
                            file = new File(file2, fileName);
                        } else {
                            File file3 = new File(Environment.getExternalStorageDirectory() + "/" + MdotMNetworkManager.MdotM_CACHE_FOLDER + "/" + MdotMNetworkManager.MdotM_PermanentCaching);
                            if (!file3.exists()) {
                                file3.mkdirs();
                            }
                            file = new File(file3, fileName);
                        }
                    } else {
                        MdotMLogger.i(this, "cache is not enabled");
                        if (i == 1) {
                            File file4 = new File(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + "/" + MdotMNetworkManager.MdotM_CACHE_FOLDER + "/" + MdotMNetworkManager.MdotM_Interstitial_Temp);
                            if (!file4.exists()) {
                                file4.mkdirs();
                            }
                            file = new File(file4, fileName);
                        } else {
                            File file5 = new File(context.getCacheDir() + "/" + MdotMNetworkManager.MdotM_CACHE_FOLDER + "/" + MdotMNetworkManager.MdotM_Interstitial_Temp);
                            if (!file5.exists()) {
                                file5.mkdirs();
                            }
                            file = new File(file5, fileName);
                        }
                    }
                    if (file.exists()) {
                        if (z2 && adResource != null) {
                            adResource.setUrl(file.getAbsolutePath());
                            adResource.setCachedLocally(true);
                            return;
                        }
                        mdotMAdResponse.setImageUrl(file.getAbsolutePath());
                        mdotMAdResponse.setCachedLocally(true);
                        return;
                    }
                    if (z) {
                        MdotMLogger.i(this, "cache does not exist");
                        MdotMCacheHandler.getInstance(context).deleteFileFromCacheTable(fileName);
                    }
                    if (z) {
                        InputStream downloadFile = new MdotMFileDownloader().downloadFile(context, str);
                        if (downloadFile == null) {
                            MdotMLogger.i(this, "unable to download file");
                            if (z2) {
                                MdotMLogger.d(this, "unable to download vast file" + vastAd.getError().get(0));
                                adResource.setCachedLocally(false);
                                vastAd.setStatus(0);
                                return;
                            }
                            mdotMAdResponse.setStatus(0);
                            mdotMAdResponse.setCachedLocally(false);
                            return;
                        } else if (i == 2 && mdotMAdResponse.getResourceType() == MdotMNetworkManager.videoResource) {
                            if (z2) {
                                vastAd.setStatus(0);
                                adResource.setCachedLocally(false);
                                return;
                            }
                            mdotMAdResponse.setStatus(0);
                            mdotMAdResponse.setCachedLocally(false);
                            return;
                        } else {
                            MdotMLogger.d(this, "inserting file neme to ad cache1");
                            file.createNewFile();
                            if (new MdotMFileDownloader().writeStreamToFile(downloadFile, file)) {
                                if (z2 && adResource != null) {
                                    adResource.setUrl(file.getAbsolutePath());
                                    adResource.setCachedLocally(true);
                                } else {
                                    mdotMAdResponse.setImageUrl(file.getAbsolutePath());
                                    mdotMAdResponse.setCachedLocally(true);
                                }
                                MdotMLogger.d(this, "inserting file neme to ad cache");
                                MdotMCacheHandler.getInstance(context).insertCache(fileName, MdotMCacheHandler.TABLE_NAME_AD_CACHE);
                                return;
                            } else if (z2 && adResource != null) {
                                mdotMAdResponse.setCachedLocally(false);
                                vastAd.setStatus(0);
                                return;
                            } else {
                                mdotMAdResponse.setStatus(0);
                                mdotMAdResponse.setCachedLocally(false);
                                return;
                            }
                        }
                    }
                    if (z2) {
                        z3 = i == 2;
                    } else {
                        z3 = mimeType == MdotMNetworkManager.videoResource && i == 2;
                    }
                    if (!z3) {
                        InputStream downloadFile2 = new MdotMFileDownloader().downloadFile(context, str);
                        if (downloadFile2 == null) {
                            if (z2) {
                                adResource.setCachedLocally(false);
                                vastAd.setStatus(0);
                                return;
                            }
                            mdotMAdResponse.setStatus(0);
                            mdotMAdResponse.setCachedLocally(false);
                            return;
                        }
                        file.createNewFile();
                        if (new MdotMFileDownloader().writeStreamToFile(downloadFile2, file)) {
                            if (z2) {
                                adResource.setUrl(file.getAbsolutePath());
                                adResource.setCachedLocally(true);
                                return;
                            }
                            mdotMAdResponse.setImageUrl(file.getAbsolutePath());
                            mdotMAdResponse.setCachedLocally(true);
                        } else if (z2) {
                            adResource.setCachedLocally(false);
                            vastAd.setStatus(0);
                        } else {
                            mdotMAdResponse.setStatus(0);
                            mdotMAdResponse.setCachedLocally(false);
                        }
                    } else if (z2) {
                        vastAd.setStatus(0);
                    } else {
                        mdotMAdResponse.setStatus(0);
                        mdotMAdResponse.setCachedLocally(false);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (z2) {
                    vastAd.setStatus(0);
                    return;
                }
                mdotMAdResponse.setStatus(0);
                mdotMAdResponse.setCachedLocally(false);
            }
        } else if (z2) {
            vastAd.setStatus(0);
        } else {
            mdotMAdResponse.setStatus(0);
        }
    }

    private int setMimeType(String str) {
        if (str.equalsIgnoreCase("jpg") || str.equalsIgnoreCase("png") || str.equalsIgnoreCase("jpeg")) {
            return MdotMNetworkManager.imageResource;
        }
        if (str.equalsIgnoreCase("mp4") || str.equalsIgnoreCase("m4v") || str.equalsIgnoreCase("avi") || str.equalsIgnoreCase("3gp") || str.equalsIgnoreCase("mpeg") || str.equalsIgnoreCase("mpg") || str.equalsIgnoreCase("webm")) {
            return MdotMNetworkManager.videoResource;
        }
        if (str.equalsIgnoreCase("gif")) {
            return MdotMNetworkManager.gifImageResource;
        }
        if (!str.contains("webarchive")) {
            return MdotMNetworkManager.htmlResource;
        }
        return 0;
    }

    private String getFileName(String str, boolean z) {
        String replace = str.replace("\\", "").replace("/", "").replace(".", "").replace(":", "").replace("?", "");
        if (!z) {
            return String.valueOf(replace) + "-" + System.currentTimeMillis();
        }
        return replace;
    }
}
