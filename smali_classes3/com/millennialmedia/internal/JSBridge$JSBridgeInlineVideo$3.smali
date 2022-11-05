.class Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->reposition(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Ljava/lang/String;IIII)V
    .locals 0

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->f:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->a:Ljava/lang/String;

    iput p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->b:I

    iput p4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->c:I

    iput p5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->d:I

    iput p6, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->f:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->a(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1913
    if-eqz v0, :cond_0

    .line 1914
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1915
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/MMWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .line 1916
    if-eqz v0, :cond_0

    .line 1917
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->f:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->b:I

    int-to-float v3, v3

    .line 1918
    invoke-static {v2, v1, v3}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->a(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v2

    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->f:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->c:I

    int-to-float v4, v4

    invoke-static {v3, v1, v4}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->a(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v3

    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->f:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->d:I

    int-to-float v5, v5

    .line 1919
    invoke-static {v4, v1, v5}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->a(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v4

    iget-object v5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->f:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v6, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->e:I

    int-to-float v6, v6

    invoke-static {v5, v1, v6}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->a(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v1

    .line 1918
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->reposition(IIII)V

    .line 1922
    :cond_0
    return-void
.end method
