.class Lcom/mdotm/android/view/MdotMXhtmlView$1;
.super Landroid/webkit/WebViewClient;
.source "MdotMXhtmlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMXhtmlView;-><init>(Landroid/content/Context;Lcom/mdotm/android/model/MdotMAdResponse;Lcom/mdotm/android/listener/MdotMAdActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field run:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

.field timeout:Z


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMXhtmlView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    .line 85
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 88
    new-instance v0, Lcom/mdotm/android/view/MdotMXhtmlView$1$1;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMXhtmlView$1$1;-><init>(Lcom/mdotm/android/view/MdotMXhtmlView$1;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->run:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMXhtmlView$1;)Lcom/mdotm/android/view/MdotMXhtmlView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->timeout:Z

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Click page finished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->access$1(Lcom/mdotm/android/view/MdotMXhtmlView;)V

    .line 145
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "started Loading url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->access$2(Lcom/mdotm/android/view/MdotMXhtmlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->timeout:Z

    .line 107
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMXhtmlView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->run:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMXhtmlView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->run:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 111
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->timeout:Z

    .line 153
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->access$2(Lcom/mdotm/android/view/MdotMXhtmlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load landing url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->access$1(Lcom/mdotm/android/view/MdotMXhtmlView;)V

    .line 163
    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to report impression : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "returned url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    if-eqz p2, :cond_0

    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->access$3(Lcom/mdotm/android/view/MdotMXhtmlView;)Lcom/mdotm/android/listener/MdotMAdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdActionListener;->leaveApplication()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->timeout:Z

    .line 130
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$1;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->access$1(Lcom/mdotm/android/view/MdotMXhtmlView;)V

    .line 131
    const/4 v0, 0x1

    .line 134
    :goto_1
    return v0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "Google Play store app is not installed"

    .line 123
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loading other url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
