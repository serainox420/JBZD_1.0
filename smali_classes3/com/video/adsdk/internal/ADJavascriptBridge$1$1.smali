.class Lcom/video/adsdk/internal/ADJavascriptBridge$1$1;
.super Ljava/lang/Object;
.source "ADJavascriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADJavascriptBridge$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/video/adsdk/internal/ADJavascriptBridge$1;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADJavascriptBridge$1;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$1$1;->this$1:Lcom/video/adsdk/internal/ADJavascriptBridge$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$1$1;->this$1:Lcom/video/adsdk/internal/ADJavascriptBridge$1;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge$1;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$1$1;->this$1:Lcom/video/adsdk/internal/ADJavascriptBridge$1;

    iget-object v1, v1, Lcom/video/adsdk/internal/ADJavascriptBridge$1;->val$fullString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 161
    return-void
.end method
