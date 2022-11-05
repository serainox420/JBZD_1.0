.class final Lcom/amazon/device/ads/Settings$SettingsStatics;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SettingsStatics"
.end annotation


# static fields
.field static final IU_SERVICE_LAST_CHECKIN:Ljava/lang/String; = "amzn-ad-iu-last-checkin"

.field static final IU_SERVICE_LAST_CHECKIN_USING_SESSIONID:Ljava/lang/String; = "amzn-ad-iu-last-checkin-using-sessionid"

.field static final VIEWABLE_JS_SETTINGS_NAME:Ljava/lang/String; = "viewableJSSettingsNameAmazonAdSDK"

.field static final VIEWABLE_JS_VERSION_STORED:Ljava/lang/String; = "viewableJSVersionStored"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
