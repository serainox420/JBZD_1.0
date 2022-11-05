package com.amazon.device.ads;

import android.os.AsyncTask;
import com.amazon.device.ads.WebRequest;
/* compiled from: AdMetricsTasks.java */
/* loaded from: classes.dex */
class AdMetricsSubmitAaxTask extends AsyncTask<WebRequest, Void, Void> {
    private static final String LOGTAG = AdMetricsSubmitAaxTask.class.getSimpleName();
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);

    AdMetricsSubmitAaxTask() {
    }

    @Override // android.os.AsyncTask
    public Void doInBackground(WebRequest... webRequestArr) {
        for (WebRequest webRequest : webRequestArr) {
            try {
                webRequest.makeCall();
            } catch (WebRequest.WebRequestException e) {
                switch (e.getStatus()) {
                    case INVALID_CLIENT_PROTOCOL:
                        this.logger.e("Unable to submit metrics for ad due to an Invalid Client Protocol, msg: %s", e.getMessage());
                        break;
                    case NETWORK_FAILURE:
                        this.logger.e("Unable to submit metrics for ad due to Network Failure, msg: %s", e.getMessage());
                        break;
                    case MALFORMED_URL:
                        this.logger.e("Unable to submit metrics for ad due to a Malformed Pixel URL, msg: %s", e.getMessage());
                    case UNSUPPORTED_ENCODING:
                        this.logger.e("Unable to submit metrics for ad because of unsupported character encoding, msg: %s", e.getMessage());
                        break;
                }
            }
        }
        return null;
    }
}
