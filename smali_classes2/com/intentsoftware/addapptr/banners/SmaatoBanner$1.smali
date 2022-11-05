.class Lcom/intentsoftware/addapptr/banners/SmaatoBanner$1;
.super Ljava/lang/Object;
.source "SmaatoBanner.java"

# interfaces
.implements Lcom/smaato/soma/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->createBannerStateListener()Lcom/smaato/soma/g;
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
    .line 87
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/SmaatoBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWillCloseLandingPage(Lcom/smaato/soma/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ClosingLandingPageFailed;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/SmaatoBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->access$000(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/SmaatoBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->access$002(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;Z)Z

    .line 98
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/SmaatoBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->access$200(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onWillOpenLandingPage(Lcom/smaato/soma/j;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/SmaatoBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->access$002(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;Z)Z

    .line 91
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmaatoBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/SmaatoBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;->access$100(Lcom/intentsoftware/addapptr/banners/SmaatoBanner;)V

    .line 92
    return-void
.end method
