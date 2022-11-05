.class Lcom/mopub/mobileads/b$1;
.super Ljava/lang/Object;
.source "HtmlWebViewClient.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$MoPubSchemeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/b;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/b;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mopub/mobileads/b$1;->a:Lcom/mopub/mobileads/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/b$1;->a:Lcom/mopub/mobileads/b;

    invoke-static {v0}, Lcom/mopub/mobileads/b;->b(Lcom/mopub/mobileads/b;)Lcom/mopub/mobileads/HtmlWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/HtmlWebViewListener;->onCollapsed()V

    .line 82
    return-void
.end method

.method public onFailLoad()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/b$1;->a:Lcom/mopub/mobileads/b;

    invoke-static {v0}, Lcom/mopub/mobileads/b;->b(Lcom/mopub/mobileads/b;)Lcom/mopub/mobileads/HtmlWebViewListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/HtmlWebViewListener;->onFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 87
    return-void
.end method

.method public onFinishLoad()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/b$1;->a:Lcom/mopub/mobileads/b;

    invoke-static {v0}, Lcom/mopub/mobileads/b;->b(Lcom/mopub/mobileads/b;)Lcom/mopub/mobileads/HtmlWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/b$1;->a:Lcom/mopub/mobileads/b;

    invoke-static {v1}, Lcom/mopub/mobileads/b;->a(Lcom/mopub/mobileads/b;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/HtmlWebViewListener;->onLoaded(Lcom/mopub/mobileads/BaseHtmlWebView;)V

    .line 77
    return-void
.end method
