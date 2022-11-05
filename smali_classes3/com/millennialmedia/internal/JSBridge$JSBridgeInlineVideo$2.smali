.class Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$2;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->updateVideoURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$2;->c:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$2;->c:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->a(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1882
    if-eqz v0, :cond_0

    .line 1883
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .line 1884
    if-eqz v0, :cond_0

    .line 1885
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$2;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 1888
    :cond_0
    return-void
.end method
