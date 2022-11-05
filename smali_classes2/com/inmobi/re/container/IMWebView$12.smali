.class Lcom/inmobi/re/container/IMWebView$12;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/IMWebView;->broadcastEventIMraid(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/inmobi/re/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2209
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView$12;->c:Lcom/inmobi/re/container/IMWebView;

    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView$12;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/inmobi/re/container/IMWebView$12;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$12;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$12;->c:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.imraid.broadcastEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$12;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$12;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 2217
    :goto_0
    return-void

    .line 2216
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$12;->c:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.imraid.broadcastEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$12;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto :goto_0
.end method
