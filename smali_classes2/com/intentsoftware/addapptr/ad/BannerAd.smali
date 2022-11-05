.class public abstract Lcom/intentsoftware/addapptr/ad/BannerAd;
.super Lcom/intentsoftware/addapptr/ad/a;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentsoftware/addapptr/ad/BannerAd$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/a;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public abstract getBannerView()Landroid/view/View;
.end method

.method public getCustomSize()Lcom/intentsoftware/addapptr/ad/BannerAd$a;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
