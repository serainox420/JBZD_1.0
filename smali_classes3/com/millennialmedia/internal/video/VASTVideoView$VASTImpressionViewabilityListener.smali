.class Lcom/millennialmedia/internal/video/VASTVideoView$VASTImpressionViewabilityListener;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VASTImpressionViewabilityListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewableChanged(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 338
    check-cast p1, Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 339
    if-eqz p2, :cond_0

    .line 340
    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->h(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 342
    :cond_0
    return-void
.end method
