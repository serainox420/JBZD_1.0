.class Lcom/mdotm/android/view/MdotMWebView$1;
.super Landroid/webkit/WebViewClient;
.source "MdotMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMWebView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMWebView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMWebView$1;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    .line 149
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    const-string v0, "default"

    sput-object v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->mraidState:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$1;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    const-string v1, "stateChange"

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMWebView;->fireJSEvent(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->isViewable:Z

    .line 176
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$1;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    const-string v1, "viewableChange"

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMWebView;->fireJSEvent(Ljava/lang/String;)V

    .line 178
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$1;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    const-string v1, "ready"

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMWebView;->fireJSEvent(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 190
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$1;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMWebView;->fireJSEvent(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$1;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$6(Lcom/mdotm/android/view/MdotMWebView;)Lcom/mdotm/android/listener/MdotMAdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdActionListener;->adClicked()V

    .line 153
    const-string v0, "Redirecting play store"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$1;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$7(Lcom/mdotm/android/view/MdotMWebView;)Lcom/mdotm/android/model/MdotMAdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$1;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$7(Lcom/mdotm/android/view/MdotMWebView;)Lcom/mdotm/android/model/MdotMAdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/mdotm/android/vast/Companion;->vastHtmlClickTrack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 155
    if-lt v1, v0, :cond_1

    .line 165
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView$1;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMWebView;->access$5(Lcom/mdotm/android/view/MdotMWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_1
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v2

    .line 158
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$1;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$7(Lcom/mdotm/android/view/MdotMWebView;)Lcom/mdotm/android/model/MdotMAdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/Companion;->vastHtmlClickTrack()Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMWebView$1;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v3}, Lcom/mdotm/android/view/MdotMWebView;->access$5(Lcom/mdotm/android/view/MdotMWebView;)Landroid/content/Context;

    move-result-object v3

    .line 157
    invoke-virtual {v2, v0, v3}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "tracking urls"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView$1;->this$0:Lcom/mdotm/android/view/MdotMWebView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMWebView;->access$7(Lcom/mdotm/android/view/MdotMWebView;)Lcom/mdotm/android/model/MdotMAdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getCompanion()Lcom/mdotm/android/vast/Companion;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/mdotm/android/vast/Companion;->vastHtmlClickTrack()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
