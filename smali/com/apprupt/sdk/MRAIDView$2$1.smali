.class Lcom/apprupt/sdk/MRAIDView$2$1;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView$2;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/MRAIDView$2;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView$2;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$2$1;->a:Lcom/apprupt/sdk/MRAIDView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$1;->a:Lcom/apprupt/sdk/MRAIDView$2;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->c(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/MRAIDView$MraidState;

    move-result-object v0

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->a:Lcom/apprupt/sdk/MRAIDView$MraidState;

    if-ne v0, v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$1;->a:Lcom/apprupt/sdk/MRAIDView$2;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->d(Lcom/apprupt/sdk/MRAIDView;)V

    .line 163
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$1;->a:Lcom/apprupt/sdk/MRAIDView$2;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->e(Lcom/apprupt/sdk/MRAIDView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$1;->a:Lcom/apprupt/sdk/MRAIDView$2;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$2;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$1;->a:Lcom/apprupt/sdk/MRAIDView$2;

    iget-object v1, v0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$1;->a:Lcom/apprupt/sdk/MRAIDView$2;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->e(Lcom/apprupt/sdk/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/apprupt/sdk/MRAIDView$MraidState;->d:Lcom/apprupt/sdk/MRAIDView$MraidState;

    :goto_0
    invoke-static {v1, v0}, Lcom/apprupt/sdk/MRAIDView;->a(Lcom/apprupt/sdk/MRAIDView;Lcom/apprupt/sdk/MRAIDView$MraidState;)V

    .line 165
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$2$1;->a:Lcom/apprupt/sdk/MRAIDView$2;

    iget-object v0, v0, Lcom/apprupt/sdk/MRAIDView$2;->c:Lcom/apprupt/sdk/MRAIDView;

    const-string v1, "ready"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apprupt/sdk/MRAIDView;->a(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_1
    return-void

    .line 164
    :cond_2
    sget-object v0, Lcom/apprupt/sdk/MRAIDView$MraidState;->b:Lcom/apprupt/sdk/MRAIDView$MraidState;

    goto :goto_0
.end method
