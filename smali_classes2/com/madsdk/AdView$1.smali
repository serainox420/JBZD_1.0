.class Lcom/madsdk/AdView$1;
.super Landroid/webkit/WebViewClient;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madsdk/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madsdk/AdView;


# direct methods
.method constructor <init>(Lcom/madsdk/AdView;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/madsdk/AdView$1;->this$0:Lcom/madsdk/AdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/madsdk/AdView$1;->this$0:Lcom/madsdk/AdView;

    const-string v1, "default"

    invoke-static {v0, v1}, Lcom/madsdk/AdView;->access$002(Lcom/madsdk/AdView;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/madsdk/AdView$1;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$100(Lcom/madsdk/AdView;)Lcom/madsdk/AdWebView;

    move-result-object v0

    const-string v1, "javascript: mraid.fireEvent(\'ready\');"

    invoke-virtual {v0, v1}, Lcom/madsdk/AdWebView;->loadUrl(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/madsdk/AdView$1;->this$0:Lcom/madsdk/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/madsdk/AdView;->access$200(Lcom/madsdk/AdView;Z)V

    .line 81
    return-void
.end method
