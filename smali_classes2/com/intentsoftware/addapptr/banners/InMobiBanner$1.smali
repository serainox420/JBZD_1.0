.class Lcom/intentsoftware/addapptr/banners/InMobiBanner$1;
.super Ljava/lang/Object;
.source "InMobiBanner.java"

# interfaces
.implements Lcom/inmobi/monetization/IMBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/InMobiBanner;->createAdListener()Lcom/inmobi/monetization/IMBannerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/InMobiBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/InMobiBanner;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/InMobiBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerInteraction(Lcom/inmobi/monetization/IMBanner;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/InMobiBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->access$000(Lcom/intentsoftware/addapptr/banners/InMobiBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/InMobiBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->access$100(Lcom/intentsoftware/addapptr/banners/InMobiBanner;)V

    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/InMobiBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->access$002(Lcom/intentsoftware/addapptr/banners/InMobiBanner;Z)Z

    .line 82
    :cond_0
    return-void
.end method

.method public onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/InMobiBanner;

    invoke-virtual {p2}, Lcom/inmobi/monetization/IMErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->access$200(Lcom/intentsoftware/addapptr/banners/InMobiBanner;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onBannerRequestSucceeded(Lcom/inmobi/monetization/IMBanner;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/InMobiBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->access$300(Lcom/intentsoftware/addapptr/banners/InMobiBanner;)V

    .line 92
    return-void
.end method

.method public onDismissBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMBanner;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/InMobiBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->access$000(Lcom/intentsoftware/addapptr/banners/InMobiBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/InMobiBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->access$400(Lcom/intentsoftware/addapptr/banners/InMobiBanner;)V

    .line 102
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/InMobiBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/InMobiBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/InMobiBanner;->access$002(Lcom/intentsoftware/addapptr/banners/InMobiBanner;Z)Z

    .line 104
    :cond_0
    return-void
.end method

.method public onShowBannerScreen(Lcom/inmobi/monetization/IMBanner;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method
