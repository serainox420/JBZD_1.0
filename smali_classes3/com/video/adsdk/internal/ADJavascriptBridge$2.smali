.class Lcom/video/adsdk/internal/ADJavascriptBridge$2;
.super Ljava/lang/Object;
.source "ADJavascriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADJavascriptBridge;->executeThroughEvaluate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

.field final synthetic val$finalString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADJavascriptBridge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$2;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iput-object p2, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$2;->val$finalString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$2;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADJavascriptBridge;->m_view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$2;->val$finalString:Ljava/lang/String;

    iget-object v2, p0, Lcom/video/adsdk/internal/ADJavascriptBridge$2;->this$0:Lcom/video/adsdk/internal/ADJavascriptBridge;

    invoke-static {v2}, Lcom/video/adsdk/internal/ADJavascriptBridge;->access$100(Lcom/video/adsdk/internal/ADJavascriptBridge;)Landroid/webkit/ValueCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 184
    return-void
.end method
