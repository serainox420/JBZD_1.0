.class Lcom/loopme/AdBrowserActivity$5;
.super Ljava/lang/Object;
.source "AdBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/AdBrowserActivity;->initButtonListeners(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/AdBrowserActivity;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/loopme/AdBrowserActivity;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/loopme/AdBrowserActivity$5;->this$0:Lcom/loopme/AdBrowserActivity;

    iput-object p2, p0, Lcom/loopme/AdBrowserActivity$5;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity$5;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 210
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity$5;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-virtual {v0}, Lcom/loopme/AdBrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 212
    :goto_0
    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity$5;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/loopme/AdBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity$5;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-static {v0}, Lcom/loopme/AdBrowserActivity;->access$400(Lcom/loopme/AdBrowserActivity;)Lcom/loopme/BaseAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->onAdLeaveApp()V

    .line 217
    :cond_0
    return-void

    .line 211
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
