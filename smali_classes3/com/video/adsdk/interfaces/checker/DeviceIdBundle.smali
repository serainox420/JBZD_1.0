.class public interface abstract Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;
.super Ljava/lang/Object;
.source "DeviceIdBundle.java"


# static fields
.field public static final IDENTIFICATION_TYPE_ADVERTISING_ID:I = 0x3


# virtual methods
.method public abstract getAdvertisingId()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
.end method

.method public abstract getAndroidId()Ljava/lang/String;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getIdentificationType()I
.end method

.method public abstract getMAC()Ljava/lang/String;
.end method

.method public abstract getMacSHA1()Ljava/lang/String;
.end method

.method public abstract getOpenUDID()Ljava/lang/String;
.end method

.method public abstract hasDeviceId()Z
.end method
