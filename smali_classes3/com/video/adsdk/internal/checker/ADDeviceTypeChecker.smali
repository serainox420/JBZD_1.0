.class public Lcom/video/adsdk/internal/checker/ADDeviceTypeChecker;
.super Ljava/lang/Object;
.source "ADDeviceTypeChecker.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker;


# instance fields
.field context:Landroid/content/Context;

.field currentType:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADDeviceTypeChecker;->context:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceTypeChecker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceTypeChecker;->currentType:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    invoke-virtual {v0}, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readCurrentValues()Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/video/adsdk/internal/checker/ADDeviceTypeChecker;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;->TABLET:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    :goto_0
    iput-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceTypeChecker;->currentType:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    .line 29
    const/4 v0, 0x1

    return v0

    .line 28
    :cond_0
    sget-object v0, Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;->SMARTPHONE:Lcom/video/adsdk/interfaces/checker/DeviceTypeChecker$DeviceType;

    goto :goto_0
.end method
