.class public Lcom/video/adsdk/internal/checker/ADAndroidDeviceIdChecker;
.super Ljava/lang/Object;
.source "ADAndroidDeviceIdChecker.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/checker/AndroidDeviceIdChecker;


# instance fields
.field private context:Landroid/content/Context;

.field private deviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADAndroidDeviceIdChecker;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getAndroidDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADAndroidDeviceIdChecker;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public readCurrentValues()Z
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADAndroidDeviceIdChecker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/checker/ADAndroidDeviceIdChecker;->deviceId:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    return v0
.end method
