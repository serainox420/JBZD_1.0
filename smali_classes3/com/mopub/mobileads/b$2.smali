.class Lcom/mopub/mobileads/b$2;
.super Ljava/lang/Object;
.source "HtmlWebViewClient.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


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
    .line 58
    iput-object p1, p0, Lcom/mopub/mobileads/b$2;->a:Lcom/mopub/mobileads/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/b$2;->a:Lcom/mopub/mobileads/b;

    invoke-static {v0}, Lcom/mopub/mobileads/b;->a(Lcom/mopub/mobileads/b;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->wasClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/b$2;->a:Lcom/mopub/mobileads/b;

    invoke-static {v0}, Lcom/mopub/mobileads/b;->b(Lcom/mopub/mobileads/b;)Lcom/mopub/mobileads/HtmlWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/HtmlWebViewListener;->onClicked()V

    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/b$2;->a:Lcom/mopub/mobileads/b;

    invoke-static {v0}, Lcom/mopub/mobileads/b;->a(Lcom/mopub/mobileads/b;)Lcom/mopub/mobileads/BaseHtmlWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->onResetUserClick()V

    .line 66
    :cond_0
    return-void
.end method
