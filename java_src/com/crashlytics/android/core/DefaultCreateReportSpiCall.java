package com.crashlytics.android.core;

import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.common.p;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.c;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DefaultCreateReportSpiCall extends a implements CreateReportSpiCall {
    static final String FILE_CONTENT_TYPE = "application/octet-stream";
    static final String FILE_PARAM = "report[file]";
    static final String IDENTIFIER_PARAM = "report[identifier]";
    static final String MULTI_FILE_PARAM = "report[file";

    public DefaultCreateReportSpiCall(h hVar, String str, String str2, c cVar) {
        super(hVar, str, str2, cVar, HttpMethod.POST);
    }

    DefaultCreateReportSpiCall(h hVar, String str, String str2, c cVar, HttpMethod httpMethod) {
        super(hVar, str, str2, cVar, httpMethod);
    }

    @Override // com.crashlytics.android.core.CreateReportSpiCall
    public boolean invoke(CreateReportRequest createReportRequest) {
        HttpRequest applyMultipartDataTo = applyMultipartDataTo(applyHeadersTo(getHttpRequest(), createReportRequest), createReportRequest.report);
        io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Sending report to: " + getUrl());
        int b = applyMultipartDataTo.b();
        io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Create report request ID: " + applyMultipartDataTo.b(a.HEADER_REQUEST_ID));
        io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Result was: " + b);
        return p.a(b) == 0;
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, CreateReportRequest createReportRequest) {
        HttpRequest a2 = httpRequest.a(a.HEADER_API_KEY, createReportRequest.apiKey).a(a.HEADER_CLIENT_TYPE, a.ANDROID_CLIENT_TYPE).a(a.HEADER_CLIENT_VERSION, this.kit.getVersion());
        Iterator<Map.Entry<String, String>> it = createReportRequest.report.getCustomHeaders().entrySet().iterator();
        while (true) {
            HttpRequest httpRequest2 = a2;
            if (it.hasNext()) {
                a2 = httpRequest2.a(it.next());
            } else {
                return httpRequest2;
            }
        }
    }

    private HttpRequest applyMultipartDataTo(HttpRequest httpRequest, Report report) {
        File[] files;
        httpRequest.e(IDENTIFIER_PARAM, report.getIdentifier());
        if (report.getFiles().length == 1) {
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Adding single file " + report.getFileName() + " to report " + report.getIdentifier());
            return httpRequest.a(FILE_PARAM, report.getFileName(), FILE_CONTENT_TYPE, report.getFile());
        }
        int i = 0;
        for (File file : report.getFiles()) {
            io.fabric.sdk.android.c.h().a(CrashlyticsCore.TAG, "Adding file " + file.getName() + " to report " + report.getIdentifier());
            httpRequest.a(MULTI_FILE_PARAM + i + "]", file.getName(), FILE_CONTENT_TYPE, file);
            i++;
        }
        return httpRequest;
    }
}
