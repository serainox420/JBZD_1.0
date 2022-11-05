.class Lcom/apprupt/sdk/MRAIDView$14;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apprupt/sdk/MRAIDView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$14;->b:Lcom/apprupt/sdk/MRAIDView;

    iput-object p2, p0, Lcom/apprupt/sdk/MRAIDView$14;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$14;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->f(Lcom/apprupt/sdk/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$14;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->g(Lcom/apprupt/sdk/MRAIDView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$14;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->e(Lcom/apprupt/sdk/MRAIDView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$14;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->c(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/MRAIDView$MraidState;

    move-result-object v0

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->d:Lcom/apprupt/sdk/MRAIDView$MraidState;

    if-eq v0, v1, :cond_0

    .line 596
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$14;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->r()V

    .line 597
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$14;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$14;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$14;->a:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$14;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$14;->b:Lcom/apprupt/sdk/MRAIDView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/MRAIDView;->d(Lcom/apprupt/sdk/MRAIDView;Z)Z

    .line 599
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$14;->b:Lcom/apprupt/sdk/MRAIDView;

    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView$14;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/MRAIDView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_3
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$14;->b:Lcom/apprupt/sdk/MRAIDView;

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->d:Lcom/apprupt/sdk/MRAIDView$MraidState;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/MRAIDView;->a(Lcom/apprupt/sdk/MRAIDView;Lcom/apprupt/sdk/MRAIDView$MraidState;)V

    goto :goto_0
.end method
