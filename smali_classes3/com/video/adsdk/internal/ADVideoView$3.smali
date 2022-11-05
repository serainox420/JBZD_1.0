.class Lcom/video/adsdk/internal/ADVideoView$3;
.super Ljava/lang/Object;
.source "ADVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADVideoView;->removeWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/ADVideoView;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADVideoView;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/video/adsdk/internal/ADVideoView$3;->this$0:Lcom/video/adsdk/internal/ADVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView$3;->this$0:Lcom/video/adsdk/internal/ADVideoView;

    sget v1, Lcom/video/adsdk/internal/Helper;->ID_WEBVIEWCONTAINER:I

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/ADVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 346
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 347
    return-void
.end method
