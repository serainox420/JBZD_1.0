.class final Lcom/apprupt/sdk/CvInterstitialActivity$DummyListener;
.super Ljava/lang/Object;
.source "CvInterstitialActivity.java"

# interfaces
.implements Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummyListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/CvInterstitialActivity$1;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/apprupt/sdk/CvInterstitialActivity$DummyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cvInterstitialDidAppear(I)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public cvInterstitialDidDisappear(I)V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public cvInterstitialDidFail(ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public cvInterstitialFirstTap()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public cvInterstitialWillAppear(I)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public cvInterstitialWillDisappear(I)V
    .locals 0

    .prologue
    .line 259
    return-void
.end method
