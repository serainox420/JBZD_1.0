.class Lcom/openx/view/mraid/methods/Open$1;
.super Ljava/lang/Object;
.source "Open.java"

# interfaces
.implements Lcom/openx/view/mraid/network/RedirectURLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/Open;->open(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/mraid/methods/Open;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/Open;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Open$1;->this$0:Lcom/openx/view/mraid/methods/Open;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "Open"

    const-string v1, "Open: redirection failed"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-static {p1}, Lcom/openx/common/utils/helpers/Utils;->isRecognizedUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "Open"

    const-string v1, "Open: redirection succeeded"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "check_perm_to_launch_ext_app"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    const-string v0, "perm_granted"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/openx/view/mraid/methods/Open$1;->this$0:Lcom/openx/view/mraid/methods/Open;

    invoke-static {v1}, Lcom/openx/view/mraid/methods/Open;->access$000(Lcom/openx/view/mraid/methods/Open;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 56
    const-string v0, "could_not_handle_intent"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    if-eqz p1, :cond_3

    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    :cond_1
    invoke-static {p2}, Lcom/openx/common/utils/helpers/Utils;->isVideoContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Open$1;->this$0:Lcom/openx/view/mraid/methods/Open;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Open;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-virtual {v0, p1}, Lcom/openx/view/mraid/BaseJSInterface;->playVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Open$1;->this$0:Lcom/openx/view/mraid/methods/Open;

    iget-object v1, p0, Lcom/openx/view/mraid/methods/Open$1;->this$0:Lcom/openx/view/mraid/methods/Open;

    invoke-static {v1}, Lcom/openx/view/mraid/methods/Open;->access$000(Lcom/openx/view/mraid/methods/Open;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/openx/view/mraid/methods/Open;->showModalAd(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_3
    const-string v0, "could_not_handle_intent"

    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->getLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
