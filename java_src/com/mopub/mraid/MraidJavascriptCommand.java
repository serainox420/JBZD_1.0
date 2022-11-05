package com.mopub.mraid;

import com.openx.view.mraid.JSInterface;
/* loaded from: classes3.dex */
public enum MraidJavascriptCommand {
    CLOSE("close"),
    EXPAND("expand") { // from class: com.mopub.mraid.MraidJavascriptCommand.1
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean a(PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    },
    USE_CUSTOM_CLOSE("usecustomclose"),
    OPEN("open") { // from class: com.mopub.mraid.MraidJavascriptCommand.2
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean a(PlacementType placementType) {
            return true;
        }
    },
    RESIZE("resize") { // from class: com.mopub.mraid.MraidJavascriptCommand.3
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean a(PlacementType placementType) {
            return true;
        }
    },
    SET_ORIENTATION_PROPERTIES("setOrientationProperties"),
    PLAY_VIDEO(JSInterface.ACTION_PLAY_VIDEO) { // from class: com.mopub.mraid.MraidJavascriptCommand.4
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean a(PlacementType placementType) {
            return placementType == PlacementType.INLINE;
        }
    },
    STORE_PICTURE("storePicture") { // from class: com.mopub.mraid.MraidJavascriptCommand.5
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean a(PlacementType placementType) {
            return true;
        }
    },
    CREATE_CALENDAR_EVENT(JSInterface.ACTION_CREATE_CALENDAR_EVENT) { // from class: com.mopub.mraid.MraidJavascriptCommand.6
        @Override // com.mopub.mraid.MraidJavascriptCommand
        boolean a(PlacementType placementType) {
            return true;
        }
    },
    UNSPECIFIED("");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f4561a;

    MraidJavascriptCommand(String str) {
        this.f4561a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MraidJavascriptCommand a(String str) {
        MraidJavascriptCommand[] values;
        for (MraidJavascriptCommand mraidJavascriptCommand : values()) {
            if (mraidJavascriptCommand.f4561a.equals(str)) {
                return mraidJavascriptCommand;
            }
        }
        return UNSPECIFIED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.f4561a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(PlacementType placementType) {
        return false;
    }
}
