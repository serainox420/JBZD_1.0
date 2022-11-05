package bolts;

import com.facebook.internal.AnalyticsEvents;
/* loaded from: classes.dex */
public class AppLinkNavigation {

    /* loaded from: classes.dex */
    public enum NavigationResult {
        FAILED("failed", false),
        WEB(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_WEB, true),
        APP("app", true);
        

        /* renamed from: a  reason: collision with root package name */
        private String f929a;
        private boolean b;

        public String getCode() {
            return this.f929a;
        }

        public boolean isSucceeded() {
            return this.b;
        }

        NavigationResult(String str, boolean z) {
            this.f929a = str;
            this.b = z;
        }
    }
}
