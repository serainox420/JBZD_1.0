.class Lcom/amazon/device/ads/AAXParameter$TestParameter;
.super Lcom/amazon/device/ads/AAXParameter$BooleanParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TestParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 480
    const-string v0, "isTest"

    const-string v1, "debug.test"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$BooleanParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method


# virtual methods
.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 486
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "testingEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$TestParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
