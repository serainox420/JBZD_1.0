package com.video.adsdk.interfaces.checker;
/* loaded from: classes3.dex */
public interface DeviceTypeChecker extends SystemParameterChecker {
    String getDeviceType();

    /* loaded from: classes3.dex */
    public enum DeviceType {
        TABLET("tablet"),
        SMARTPHONE("smartphone");
        
        private String identifier;

        DeviceType(String str) {
            this.identifier = str;
        }

        public String getIdentifier() {
            return this.identifier;
        }
    }
}
