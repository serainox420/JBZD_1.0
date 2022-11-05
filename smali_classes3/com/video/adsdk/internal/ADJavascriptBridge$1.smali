.class Lcom/video/adsdk/internal/ADJavascriptBridge$1;
.super Ljava/lang/Object;
.source "ADJavascriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADJavascriptBridge;->executeThroughLoad(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

.field final synthetic val$fullString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADJavascriptBridge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$1;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iput-object p2, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$1;->val$fullString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$1;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$1;->val$fullString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$1;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    new-instance v1, Lcom/video/adsdk/internal/ADJavascriptBridge$1$1;

    invoke-direct {v1, p0}, Lcom/video/adsdk/internal/ADJavascriptBridge$1$1;-><init>(Lcom/video/adsdk/internal/ADJavascriptBridge$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
