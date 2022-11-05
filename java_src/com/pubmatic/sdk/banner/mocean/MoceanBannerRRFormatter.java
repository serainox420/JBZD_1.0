package com.pubmatic.sdk.banner.mocean;

import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.pubmatic.sdk.banner.BannerAdDescriptor;
import com.pubmatic.sdk.common.AdRequest;
import com.pubmatic.sdk.common.AdResponse;
import com.pubmatic.sdk.common.CommonConstants;
import com.pubmatic.sdk.common.RRFormatter;
import com.pubmatic.sdk.common.network.HttpRequest;
import com.pubmatic.sdk.common.network.HttpResponse;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;
/* loaded from: classes3.dex */
public class MoceanBannerRRFormatter implements RRFormatter {
    private AdRequest mRequest;

    @Override // com.pubmatic.sdk.common.RRFormatter
    public HttpRequest formatRequest(AdRequest adRequest) {
        this.mRequest = adRequest;
        MoceanBannerAdRequest moceanBannerAdRequest = (MoceanBannerAdRequest) adRequest;
        HttpRequest httpRequest = new HttpRequest(CommonConstants.CONTENT_TYPE.URL_ENCODED);
        httpRequest.setUserAgent(moceanBannerAdRequest.getUserAgent());
        httpRequest.setConnection("close");
        httpRequest.setRequestUrl(adRequest.getAdServerURL());
        httpRequest.setPostData(moceanBannerAdRequest.getPostData());
        httpRequest.setRequestMethod("POST");
        return httpRequest;
    }

    @Override // com.pubmatic.sdk.common.RRFormatter
    public AdResponse formatResponse(HttpResponse httpResponse) {
        String str = null;
        AdResponse adResponse = new AdResponse();
        adResponse.setRequest(this.mRequest);
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            newInstance.setNamespaceAware(false);
            newInstance.setValidating(false);
            XmlPullParser newPullParser = newInstance.newPullParser();
            newPullParser.setInput(new StringReader(httpResponse.getResponseData()));
            int eventType = newPullParser.getEventType();
            while (true) {
                if (eventType == 1) {
                    break;
                }
                if (eventType == 2) {
                    String name = newPullParser.getName();
                    if ("error".equals(name)) {
                        String attributeValue = newPullParser.getAttributeValue(null, "code");
                        newPullParser.next();
                        if (newPullParser.getEventType() == 4) {
                            str = newPullParser.getText();
                        }
                        adResponse.setErrorCode(attributeValue);
                        adResponse.setErrorMessage(str);
                    } else if (AdDatabaseHelper.TABLE_AD.equals(name)) {
                        adResponse.setRenderable(BannerAdDescriptor.parseDescriptor(newPullParser));
                        break;
                    }
                }
                newPullParser.next();
                eventType = newPullParser.getEventType();
            }
        } catch (Exception e) {
            adResponse.setException(e);
        }
        return adResponse;
    }

    public AdRequest getAdRequest() {
        return this.mRequest;
    }

    public void setAdRequest(AdRequest adRequest) {
        this.mRequest = adRequest;
    }

    public AdRequest getRequest() {
        return this.mRequest;
    }

    public void setRequest(AdRequest adRequest) {
        this.mRequest = adRequest;
    }
}
