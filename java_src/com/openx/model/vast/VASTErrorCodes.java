package com.openx.model.vast;

import com.google.android.gms.wallet.WalletConstants;
import com.intentsoftware.addapptr.AATKit;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.NativeAd;
import java.util.Hashtable;
/* loaded from: classes3.dex */
public class VASTErrorCodes {
    public static Hashtable<Integer, String> VASTErrors;

    public VASTErrorCodes() {
        if (VASTErrors == null) {
            VASTErrors = new Hashtable<>();
            VASTErrors.put(100, "XML parsing error.");
            VASTErrors.put(101, "VAST schema validation error.");
            VASTErrors.put(102, "VAST version of response not supported.");
            VASTErrors.put(200, "Trafficking error. Video player received an Ad type that it was not expecting and/or cannot display.");
            VASTErrors.put(201, "Video player expecting different linearity.");
            VASTErrors.put(202, "Video player expecting different duration.");
            VASTErrors.put(Integer.valueOf((int) InterstitialAd.InterstitialErrorStatus.ALREADY_LOADED), "Video player expecting different size.");
            VASTErrors.put(300, "General Wrapper error.");
            VASTErrors.put(Integer.valueOf((int) NativeAd.NativeErrorStatus.EXPIRED), "Timeout of VAST URI provided in Wrapper element, or of VAST URI provided in a subsequent Wrapper element. (URI was either unavailable or reached a timeout as defined by the video player.)");
            VASTErrors.put(302, "Wrapper limit reached, as defined by the video player. Too many Wrapper responses have been received with no InLine response.");
            VASTErrors.put(303, "No Ads VAST response after one or more Wrappers.");
            VASTErrors.put(400, "General Linear error. Video player is unable to display the Linear Ad.");
            VASTErrors.put(401, "File not found. Unable to find Linear/MediaFile from URI.");
            VASTErrors.put(Integer.valueOf((int) WalletConstants.ERROR_CODE_SERVICE_UNAVAILABLE), "Timeout of MediaFile URI.");
            VASTErrors.put(403, "Couldnot find MediaFile that is supported by this video player, based on the attributes of the MediaFile element.");
            VASTErrors.put(Integer.valueOf((int) WalletConstants.ERROR_CODE_MERCHANT_ACCOUNT_ERROR), "Problem displaying MediaFile. Video player found a MediaFile with supported type but couldn�t display it. MediaFile may include: unsupported codecs, different MIME type than MediaFile@type, unsupported delivery method, etc.");
            VASTErrors.put(500, "General NonLinearAds error.");
            VASTErrors.put(501, "Unable to display NonLinear Ad because creative dimensions do not align with creative display area (i.e. creative dimension too large).");
            VASTErrors.put(502, "Unable to fetch NonLinearAds/NonLinear resource.");
            VASTErrors.put(503, "Couldnot find NonLinear resource with supported type.");
            VASTErrors.put(Integer.valueOf((int) AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS), "General CompanionAds error.");
            VASTErrors.put(601, "Unable to display Companion because creative dimensions do not fit within Companion display area (i.e., no available space).");
            VASTErrors.put(602, "Unable to display Required Companion.");
            VASTErrors.put(603, "Unable to fetch CompanionAds/Companion resource.");
            VASTErrors.put(604, "Couldnot find Companion resource with supported type.");
            VASTErrors.put(900, "Undefined Error.");
            VASTErrors.put(901, "General VPAID error.");
        }
    }
}
