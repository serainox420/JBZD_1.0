.class Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$4;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->remove(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1936
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$4;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$4;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->a:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->a(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1941
    if-eqz v0, :cond_0

    .line 1942
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .line 1943
    if-eqz v0, :cond_0

    .line 1944
    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->remove()V

    .line 1947
    :cond_0
    return-void
.end method
