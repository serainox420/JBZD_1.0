.class Lcom/intentsoftware/addapptr/banners/RevMobBanner$2;
.super Lcom/revmob/RevMobAdsListener;
.source "RevMobBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/RevMobBanner;->createBannerListener()Lcom/revmob/RevMobAdsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/RevMobBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/RevMobBanner;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/RevMobBanner;

    invoke-direct {p0}, Lcom/revmob/RevMobAdsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRevMobAdClicked()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/RevMobBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->access$400(Lcom/intentsoftware/addapptr/banners/RevMobBanner;)V

    .line 95
    return-void
.end method

.method public onRevMobAdNotReceived(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/RevMobBanner;

    invoke-static {v0, p1}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->access$300(Lcom/intentsoftware/addapptr/banners/RevMobBanner;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onRevMobAdReceived()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/RevMobBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->access$200(Lcom/intentsoftware/addapptr/banners/RevMobBanner;)V

    .line 85
    return-void
.end method
