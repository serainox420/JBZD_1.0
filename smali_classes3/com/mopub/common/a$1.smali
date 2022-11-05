.class Lcom/mopub/common/a$1;
.super Ljava/lang/Object;
.source "BrowserWebViewClient.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/a;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/a;


# direct methods
.method constructor <init>(Lcom/mopub/common/a;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mopub/common/a$1;->a:Lcom/mopub/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    invoke-virtual {p2, v0}, Lcom/mopub/common/UrlAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mopub/common/a$1;->a:Lcom/mopub/common/a;

    invoke-static {v0}, Lcom/mopub/common/a;->a(Lcom/mopub/common/a;)Lcom/mopub/common/MoPubBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/MoPubBrowser;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/a$1;->a:Lcom/mopub/common/a;

    invoke-static {v0}, Lcom/mopub/common/a;->a(Lcom/mopub/common/a;)Lcom/mopub/common/MoPubBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/MoPubBrowser;->finish()V

    goto :goto_0
.end method
