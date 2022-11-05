.class Lcom/madsdk/BrowserActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madsdk/BrowserActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madsdk/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/madsdk/BrowserActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/madsdk/BrowserActivity$2;->this$0:Lcom/madsdk/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/madsdk/BrowserActivity$2;->this$0:Lcom/madsdk/BrowserActivity;

    invoke-static {v0}, Lcom/madsdk/BrowserActivity;->access$000(Lcom/madsdk/BrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 85
    return-void
.end method
