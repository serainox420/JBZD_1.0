.class public interface abstract Lcom/video/adsdk/interfaces/checker/ConnectivityChecker;
.super Ljava/lang/Object;
.source "ConnectivityChecker.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/checker/SystemParameterChecker;


# static fields
.field public static final EDGE:I = 0x1

.field public static final G3:I = 0x3

.field public static final LTE:I = 0x6

.field public static final MOBILE_DATA:I = 0x2

.field public static final OFFLINE:I = 0x0

.field public static final WIFI:I = 0x9


# virtual methods
.method public abstract getConnectionType()I
.end method

.method public abstract isWifiEnabled()Z
.end method
