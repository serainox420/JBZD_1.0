.class Lcom/loopme/AdBrowserActivity$1;
.super Ljava/lang/Object;
.source "AdBrowserActivity.java"

# interfaces
.implements Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/AdBrowserActivity;->initAdBrowserClientListener()Lcom/loopme/adbrowser/AdBrowserWebViewClient$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/AdBrowserActivity;


# direct methods
.method constructor <init>(Lcom/loopme/AdBrowserActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/loopme/AdBrowserActivity$1;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeaveApp()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity$1;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-static {v0}, Lcom/loopme/AdBrowserActivity;->access$400(Lcom/loopme/AdBrowserActivity;)Lcom/loopme/BaseAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->onAdLeaveApp()V

    .line 163
    return-void
.end method

.method public onPageFinished(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity$1;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-static {v0}, Lcom/loopme/AdBrowserActivity;->access$000(Lcom/loopme/AdBrowserActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity$1;->this$0:Lcom/loopme/AdBrowserActivity;

    iget-object v1, p0, Lcom/loopme/AdBrowserActivity$1;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-static {v1}, Lcom/loopme/AdBrowserActivity;->access$100(Lcom/loopme/AdBrowserActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/loopme/AdBrowserActivity$1;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-static {v2}, Lcom/loopme/AdBrowserActivity;->access$200(Lcom/loopme/AdBrowserActivity;)Lcom/loopme/common/Base64Drawables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loopme/common/Base64Drawables;->getBackActive()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/loopme/AdBrowserActivity;->access$300(Lcom/loopme/AdBrowserActivity;Landroid/widget/Button;Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity$1;->this$0:Lcom/loopme/AdBrowserActivity;

    iget-object v1, p0, Lcom/loopme/AdBrowserActivity$1;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-static {v1}, Lcom/loopme/AdBrowserActivity;->access$100(Lcom/loopme/AdBrowserActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/loopme/AdBrowserActivity$1;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-static {v2}, Lcom/loopme/AdBrowserActivity;->access$200(Lcom/loopme/AdBrowserActivity;)Lcom/loopme/common/Base64Drawables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loopme/common/Base64Drawables;->getBackInactive()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/loopme/AdBrowserActivity;->access$300(Lcom/loopme/AdBrowserActivity;Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity$1;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-static {v0}, Lcom/loopme/AdBrowserActivity;->access$000(Lcom/loopme/AdBrowserActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public onReceiveError()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity$1;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-virtual {v0}, Lcom/loopme/AdBrowserActivity;->finish()V

    .line 142
    return-void
.end method
