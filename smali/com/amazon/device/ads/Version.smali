.class Lcom/amazon/device/ads/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static buildVersion:Ljava/lang/String;

.field private static devBuild:Ljava/lang/String;

.field private static prefixVersion:Ljava/lang/String;

.field private static sdkVersion:Ljava/lang/String;

.field private static userAgentPrefixVersion:Ljava/lang/String;

.field private static userAgentSDKVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    const-string v0, "5.8.1.1"

    sput-object v0, Lcom/amazon/device/ads/Version;->buildVersion:Ljava/lang/String;

    .line 12
    const-string v0, "amznAdSDK-android-"

    sput-object v0, Lcom/amazon/device/ads/Version;->prefixVersion:Ljava/lang/String;

    .line 13
    sput-object v1, Lcom/amazon/device/ads/Version;->sdkVersion:Ljava/lang/String;

    .line 14
    const-string v0, "AmazonAdSDK-Android/"

    sput-object v0, Lcom/amazon/device/ads/Version;->userAgentPrefixVersion:Ljava/lang/String;

    .line 15
    sput-object v1, Lcom/amazon/device/ads/Version;->userAgentSDKVersion:Ljava/lang/String;

    .line 16
    const-string v0, "(DEV)"

    sput-object v0, Lcom/amazon/device/ads/Version;->devBuild:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRawSDKVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/amazon/device/ads/Version;->buildVersion:Ljava/lang/String;

    .line 21
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/Version;->devBuild:Ljava/lang/String;

    .line 26
    :cond_1
    :goto_0
    return-object v0

    .line 23
    :cond_2
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Version;->devBuild:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/amazon/device/ads/Version;->sdkVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/Version;->prefixVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/Version;->getRawSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/Version;->sdkVersion:Ljava/lang/String;

    .line 32
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/Version;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgentSDKVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/amazon/device/ads/Version;->userAgentSDKVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/Version;->userAgentPrefixVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/Version;->getRawSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/Version;->userAgentSDKVersion:Ljava/lang/String;

    .line 44
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/Version;->userAgentSDKVersion:Ljava/lang/String;

    return-object v0
.end method

.method static setSDKVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    sput-object p0, Lcom/amazon/device/ads/Version;->sdkVersion:Ljava/lang/String;

    .line 39
    return-void
.end method
