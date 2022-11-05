.class Lcom/inmobi/re/container/IMWebView$6;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/IMWebView;->saveFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/inmobi/re/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2998
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView$6;->c:Lcom/inmobi/re/container/IMWebView;

    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/re/container/IMWebView$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSaveContentResult(\"saveContent_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \'failure\', \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3003
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$6;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 3004
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$6;->c:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    if-eqz v0, :cond_0

    .line 3005
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$6;->c:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$b;->j:Lcom/inmobi/re/container/IMWebView$b;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView$b;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;->postFailed(I)V

    .line 3007
    :cond_0
    return-void
.end method
