.class Lcom/smaato/soma/bannerutilities/a$b$2;
.super Lcom/smaato/soma/l;
.source "AbstractBannerPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/a$b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/smaato/soma/bannerutilities/a$b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/a$b;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a$b$2;->b:Lcom/smaato/soma/bannerutilities/a$b;

    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/a$b$2;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 883
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Banner_Package"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Page Finished Loading... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/bannerutilities/a$b$2;->b:Lcom/smaato/soma/bannerutilities/a$b;

    iget-object v3, v3, Lcom/smaato/soma/bannerutilities/a$b;->a:Lcom/smaato/soma/internal/statemachine/LoadingState;

    .line 884
    invoke-virtual {v3}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a()Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    .line 883
    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 887
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$b$2;->b:Lcom/smaato/soma/bannerutilities/a$b;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/a$b;->b:Lcom/smaato/soma/bannerutilities/a;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/a;->b:Lcom/smaato/soma/j;

    instance-of v0, v0, Lcom/smaato/soma/BannerView;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$b$2;->b:Lcom/smaato/soma/bannerutilities/a$b;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/a$b;->b:Lcom/smaato/soma/bannerutilities/a;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/a;->b:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->e()Z

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$b$2;->b:Lcom/smaato/soma/bannerutilities/a$b;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/a$b;->a:Lcom/smaato/soma/internal/statemachine/LoadingState;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a()Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BANNERLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$b$2;->b:Lcom/smaato/soma/bannerutilities/a$b;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/a$b;->b:Lcom/smaato/soma/bannerutilities/a;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/a;->b:Lcom/smaato/soma/j;

    instance-of v0, v0, Lcom/smaato/soma/interstitial/b;

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$b$2;->b:Lcom/smaato/soma/bannerutilities/a$b;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/a$b;->a:Lcom/smaato/soma/internal/statemachine/LoadingState;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->f()Z

    .line 896
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$b$2;->a:Landroid/webkit/WebView;

    const-string v1, "javascript:(function() {  var metaTags = document.getElementsByTagName(\'meta\');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute(\'property\');    if (property && property.substring(0, \'al:\'.length) === \'al:\') {      var tag = { \"property\": metaTags[i].getAttribute(\'property\') };      if (metaTags[i].hasAttribute(\'content\')) {        tag[\'content\'] = metaTags[i].getAttribute(\'content\');      }      results.push(tag);    }  }  window.HTMLOUT.processJSON(JSON.stringify(results));})()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 912
    const/4 v0, 0x0

    return-object v0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$b$2;->b:Lcom/smaato/soma/bannerutilities/a$b;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/a$b;->b:Lcom/smaato/soma/bannerutilities/a;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/a;->b:Lcom/smaato/soma/j;

    instance-of v0, v0, Lcom/smaato/soma/interstitial/b;

    if-nez v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$b$2;->b:Lcom/smaato/soma/bannerutilities/a$b;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/a$b;->a:Lcom/smaato/soma/internal/statemachine/LoadingState;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->f()Z

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a$b$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
