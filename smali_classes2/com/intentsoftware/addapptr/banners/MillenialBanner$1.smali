.class Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;
.super Ljava/lang/Object;
.source "MillenialBanner.java"

# interfaces
.implements Lcom/millennialmedia/InlineAd$InlineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/MillenialBanner;->createListener()Lcom/millennialmedia/InlineAd$InlineListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/MillenialBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/MillenialBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication(Lcom/millennialmedia/InlineAd;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/MillenialBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->access$200(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/MillenialBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->access$500(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onClicked(Lcom/millennialmedia/InlineAd;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onCollapsed(Lcom/millennialmedia/InlineAd;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/MillenialBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->access$200(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/MillenialBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->access$400(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)V

    .line 89
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/MillenialBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->access$202(Lcom/intentsoftware/addapptr/banners/MillenialBanner;Z)Z

    .line 91
    :cond_0
    return-void
.end method

.method public onExpanded(Lcom/millennialmedia/InlineAd;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/MillenialBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->access$200(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/MillenialBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->access$300(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onRequestFailed(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineErrorStatus;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/MillenialBanner;

    invoke-virtual {p2}, Lcom/millennialmedia/InlineAd$InlineErrorStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->access$100(Lcom/intentsoftware/addapptr/banners/MillenialBanner;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onRequestSucceeded(Lcom/millennialmedia/InlineAd;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/MillenialBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/MillenialBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/MillenialBanner;->access$000(Lcom/intentsoftware/addapptr/banners/MillenialBanner;)V

    .line 71
    return-void
.end method

.method public onResize(Lcom/millennialmedia/InlineAd;II)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onResized(Lcom/millennialmedia/InlineAd;IIZ)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
