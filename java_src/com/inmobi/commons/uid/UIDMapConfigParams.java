package com.inmobi.commons.uid;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;
/* loaded from: classes2.dex */
public class UIDMapConfigParams {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Boolean> f3828a;
    private boolean b = true;
    private boolean c = true;
    private boolean d = false;
    private boolean e = true;
    private boolean f = true;
    private boolean g = true;
    private boolean h = true;
    private boolean i = true;
    private boolean j = true;

    public Map<String, Boolean> getMap() {
        return this.f3828a;
    }

    public void setMap(Object obj) {
        Map map = (Map) obj;
        this.b = InternalSDKUtil.getBooleanFromMap(map, UID.KEY_LOGIN_ID);
        this.c = InternalSDKUtil.getBooleanFromMap(map, UID.KEY_SESSION_ID);
        this.d = InternalSDKUtil.getBooleanFromMap(map, UID.KEY_FACEBOOK_ID);
        this.e = InternalSDKUtil.getBooleanFromMap(map, UID.KEY_ODIN1);
        this.f = InternalSDKUtil.getBooleanFromMap(map, UID.KEY_UM5_ID);
        this.g = InternalSDKUtil.getBooleanFromMap(map, UID.KEY_LTVID);
        this.h = InternalSDKUtil.getBooleanFromMap(map, UID.KEY_GPID);
        this.i = InternalSDKUtil.getBooleanFromMap(map, UID.KEY_IMID);
        this.j = InternalSDKUtil.getBooleanFromMap(map, UID.KEY_APPENDED_ID);
        this.f3828a = (Map) obj;
    }

    public boolean getLoginID() {
        return this.b;
    }

    public void setLoginID(boolean z) {
        this.b = z;
    }

    public boolean getSessionID() {
        return this.c;
    }

    public void setSessionID(boolean z) {
        this.c = z;
    }

    public boolean getFacebookID() {
        return this.d;
    }

    public void setFacebookID(boolean z) {
        this.d = z;
    }

    public boolean getODIN1() {
        return this.e;
    }

    public void setODIN1(boolean z) {
        this.e = z;
    }

    public boolean getUM5() {
        return this.f;
    }

    public void setUM5(boolean z) {
        this.f = z;
    }

    public boolean getLTVID() {
        return this.g;
    }

    public void setLTVID(boolean z) {
        this.g = z;
    }

    public boolean getGPID() {
        return this.h;
    }

    public void setGPID(boolean z) {
        this.h = z;
    }

    public boolean getIMID() {
        return this.i;
    }

    public void setIMID(boolean z) {
        this.i = z;
    }

    public boolean getAIDL() {
        return this.j;
    }

    public void setAIDL(boolean z) {
        this.j = z;
    }
}
