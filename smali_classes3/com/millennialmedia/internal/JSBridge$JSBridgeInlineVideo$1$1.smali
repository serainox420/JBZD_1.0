.class Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$1;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/MMWebView;

.field final synthetic b:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$1;->b:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$1;->a:Lcom/millennialmedia/internal/MMWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$1;->a:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->onNotifyClicked()V

    .line 1729
    return-void
.end method
