.class Lcom/adcolony/sdk/bi$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bi;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bi;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/adcolony/sdk/bi$e;->a:Lcom/adcolony/sdk/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 609
    iget-object v0, p0, Lcom/adcolony/sdk/bi$e;->a:Lcom/adcolony/sdk/bi;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adcolony/sdk/bi;->o:Z

    .line 610
    iget-object v0, p0, Lcom/adcolony/sdk/bi$e;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->H:Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$e;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->G:Lcom/adcolony/sdk/bi$e;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    .line 611
    iget-object v0, p0, Lcom/adcolony/sdk/bi$e;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "overlay timeout"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 612
    iget-object v0, p0, Lcom/adcolony/sdk/bi$e;->a:Lcom/adcolony/sdk/bi;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->J:Ljava/lang/Boolean;

    .line 613
    iget-object v0, p0, Lcom/adcolony/sdk/bi$e;->a:Lcom/adcolony/sdk/bi;

    sget-object v1, Lcom/adcolony/sdk/bi$f;->f:Lcom/adcolony/sdk/bi$f;

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->F:Lcom/adcolony/sdk/bi$f;

    .line 614
    iget-object v0, p0, Lcom/adcolony/sdk/bi$e;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/adcolony/sdk/bi$e;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bi$e;->a:Lcom/adcolony/sdk/bi;

    const/16 v1, 0x1f7

    invoke-static {v0, v1}, Lcom/adcolony/sdk/bi;->a(Lcom/adcolony/sdk/bi;I)V

    .line 619
    return-void
.end method
