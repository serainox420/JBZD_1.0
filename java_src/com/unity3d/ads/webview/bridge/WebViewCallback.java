package com.unity3d.ads.webview.bridge;

import android.os.Parcel;
import android.os.Parcelable;
import com.unity3d.ads.log.DeviceLog;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes3.dex */
public class WebViewCallback implements Parcelable {
    public static final Parcelable.Creator<WebViewCallback> CREATOR = new Parcelable.Creator<WebViewCallback>() { // from class: com.unity3d.ads.webview.bridge.WebViewCallback.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public WebViewCallback mo554createFromParcel(Parcel parcel) {
            return new WebViewCallback(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public WebViewCallback[] mo555newArray(int i) {
            return new WebViewCallback[i];
        }
    };
    private String _callbackId;
    private int _invocationId;
    private boolean _invoked;

    public WebViewCallback(String str, int i) {
        this._callbackId = str;
        this._invocationId = i;
    }

    public WebViewCallback(Parcel parcel) {
        this._callbackId = parcel.readString();
        this._invoked = parcel.readByte() != 0;
        this._invocationId = parcel.readInt();
    }

    public void invoke(Object... objArr) {
        invoke(CallbackStatus.OK, null, objArr);
    }

    private void invoke(CallbackStatus callbackStatus, Enum r5, Object... objArr) {
        if (!this._invoked && this._callbackId != null && this._callbackId.length() != 0) {
            this._invoked = true;
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(Arrays.asList(objArr));
            arrayList.add(0, this._callbackId);
            Invocation invocationById = Invocation.getInvocationById(this._invocationId);
            if (invocationById == null) {
                DeviceLog.error("Couldn't get batch with id: " + getInvocationId());
            } else {
                invocationById.setInvocationResponse(callbackStatus, r5, arrayList.toArray());
            }
        }
    }

    public void error(Enum r2, Object... objArr) {
        invoke(CallbackStatus.ERROR, r2, objArr);
    }

    public int getInvocationId() {
        return this._invocationId;
    }

    public String getCallbackId() {
        return this._callbackId;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 45678;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this._callbackId);
        parcel.writeByte((byte) (this._invoked ? 1 : 0));
        parcel.writeInt(this._invocationId);
    }
}
