.class public Lcom/madsdk/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openBrowser(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    if-eqz p0, :cond_0

    .line 14
    invoke-static {p1, p2}, Lcom/madsdk/Utils;->openNativeBrowser(Ljava/lang/String;Landroid/content/Context;)V

    .line 18
    :goto_0
    return-void

    .line 16
    :cond_0
    invoke-static {p1, p2}, Lcom/madsdk/Utils;->openInAppBrowser(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static openInAppBrowser(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/madsdk/BrowserActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    return-void
.end method

.method private static openNativeBrowser(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method
