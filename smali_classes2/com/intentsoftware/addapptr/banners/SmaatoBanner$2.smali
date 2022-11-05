.class Lcom/intentsoftware/addapptr/banners/SmaatoBanner$2;
.super Ljava/lang/Object;
.source "SmaatoBanner.java"

# interfaces
.implements Lcom/smaato/soma/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->createAdListener()Lcom/smaato/soma/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/SmaatoBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmaatoBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/AdReceiveFailed;
        }
    .end annotation

    .prologue
    .line 108
    invoke-interface {p2}, Lcom/smaato/soma/p;->a()Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->ERROR:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmaatoBanner;

    invoke-interface {p2}, Lcom/smaato/soma/p;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->access$300(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/SmaatoBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->access$400(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;)V

    goto :goto_0
.end method
