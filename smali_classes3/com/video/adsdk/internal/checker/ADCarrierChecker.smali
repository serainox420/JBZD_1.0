.class public Lcom/video/adsdk/internal/checker/ADCarrierChecker;
.super Ljava/lang/Object;
.source "ADCarrierChecker.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/checker/CarrierChecker;


# instance fields
.field private carrierName:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/video/adsdk/internal/checker/ADCarrierChecker;->carrierName:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADCarrierChecker;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADCarrierChecker;->carrierName:Ljava/lang/String;

    return-object v0
.end method

.method public readCurrentValues()Z
    .locals 2

    .prologue
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADCarrierChecker;->context:Landroid/content/Context;

    const-string v1, "phone"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 21
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/checker/ADCarrierChecker;->carrierName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    const/4 v0, 0x0

    goto :goto_0
.end method
