.class Lcom/apprupt/sdk/MRAIDView$2;
.super Landroid/webkit/WebViewClient;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;-><init>(Landroid/content/Context;Lcom/apprupt/sdk/CvAdWrapper;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/apprupt/sdk/CvAdWrapper;

.field final synthetic c:Lcom/apprupt/sdk/MRAIDView;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/Runnable;Lcom/apprupt/sdk/CvAdWrapper;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    iput-object p2, p0, Lcom/apprupt/sdk/MRAIDView$2;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/apprupt/sdk/MRAIDView$2;->b:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView$2;->d:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 156
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->b(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mraid view / page finished:"

    aput-object v3, v1, v2

    aput-object p2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 157
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "about:blank"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$2$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$2$1;-><init>(Lcom/apprupt/sdk/MRAIDView$2;)V

    invoke-static {v0, v4}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 173
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->f(Lcom/apprupt/sdk/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v6

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->b(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "mraid view / should load url:"

    aput-object v2, v1, v8

    aput-object p2, v1, v6

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 175
    const-string v0, "mraid://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 178
    const-string v2, "params"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    const-string v3, "asyncId"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v3, p0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v3}, Lcom/apprupt/sdk/MRAIDView;->b(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Request from legacy bridge: "

    aput-object v5, v4, v8

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-interface {v3, v4}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 181
    iget-object v3, p0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    :goto_1
    invoke-static {v3, v1, v2, v0}, Lcom/apprupt/sdk/MRAIDView;->a(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvContext;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/apprupt/sdk/CvLauncher;

    invoke-direct {v1, v0}, Lcom/apprupt/sdk/CvLauncher;-><init>(Landroid/content/Context;)V

    .line 187
    sget-object v0, Lcom/apprupt/sdk/CvAdType;->a:Lcom/apprupt/sdk/CvAdType;

    invoke-virtual {v1, p2, v0}, Lcom/apprupt/sdk/CvLauncher;->a(Ljava/lang/String;Lcom/apprupt/sdk/CvAdType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0, p2}, Lcom/apprupt/sdk/MRAIDView;->loadUrl(Ljava/lang/String;)V

    .line 191
    :cond_4
    invoke-virtual {v1}, Lcom/apprupt/sdk/CvLauncher;->a()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 192
    invoke-virtual {v1}, Lcom/apprupt/sdk/CvLauncher;->b()Lcom/apprupt/sdk/CvLauncher$ResizeProperties;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/apprupt/sdk/MRAIDView$2$2;

    invoke-direct {v1, p0, v0}, Lcom/apprupt/sdk/MRAIDView$2$2;-><init>(Lcom/apprupt/sdk/MRAIDView$2;Lcom/apprupt/sdk/CvLauncher$ResizeProperties;)V

    invoke-static {v1, v6}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0
.end method
