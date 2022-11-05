package com.amazon.device.ads;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.io.InputStream;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ResponseReader {
    private static final String LOGTAG = ResponseReader.class.getSimpleName();
    private final InputStream stream;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
    private boolean enableLog = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ResponseReader(InputStream inputStream) {
        this.stream = inputStream;
    }

    public InputStream getInputStream() {
        return this.stream;
    }

    public void enableLog(boolean z) {
        this.enableLog = z;
    }

    public void setExternalLogTag(String str) {
        if (str == null) {
            this.logger.mo33withLogTag(LOGTAG);
        } else {
            this.logger.mo33withLogTag(LOGTAG + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str);
        }
    }

    public String readAsString() {
        String readStringFromInputStream = StringUtils.readStringFromInputStream(this.stream);
        if (this.enableLog) {
            this.logger.d("Response Body: %s", readStringFromInputStream);
        }
        return readStringFromInputStream;
    }

    public JSONObject readAsJSON() {
        return JSONUtils.getJSONObjectFromString(readAsString());
    }
}
