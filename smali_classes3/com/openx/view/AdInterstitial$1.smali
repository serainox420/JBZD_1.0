.class Lcom/openx/view/AdInterstitial$1;
.super Ljava/lang/Object;
.source "AdInterstitial.java"

# interfaces
.implements Lcom/openx/view/video/AdVideoView$AdVideoPreloadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/AdInterstitial;->initVideo(Lcom/openx/core/network/OXAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/AdInterstitial;


# direct methods
.method constructor <init>(Lcom/openx/view/AdInterstitial;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/openx/view/AdInterstitial$1;->this$0:Lcom/openx/view/AdInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preloaded()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/openx/view/AdInterstitial$1;->this$0:Lcom/openx/view/AdInterstitial;

    invoke-static {v0}, Lcom/openx/view/AdInterstitial;->access$000(Lcom/openx/view/AdInterstitial;)V

    .line 314
    return-void
.end method

.method public preloadedError()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/openx/view/AdInterstitial$1;->this$0:Lcom/openx/view/AdInterstitial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openx/view/AdInterstitial;->access$102(Lcom/openx/view/AdInterstitial;Z)Z

    .line 328
    iget-object v0, p0, Lcom/openx/view/AdInterstitial$1;->this$0:Lcom/openx/view/AdInterstitial;

    invoke-static {v0}, Lcom/openx/view/AdInterstitial;->access$200(Lcom/openx/view/AdInterstitial;)V

    .line 330
    return-void
.end method
