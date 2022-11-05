.class final Lcom/flurry/sdk/g$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/r;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Lcom/flurry/sdk/r;

.field final synthetic e:Z

.field final synthetic f:Lcom/flurry/sdk/g;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/g;Ljava/lang/String;Landroid/content/Context;ZLcom/flurry/sdk/r;Z)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/flurry/sdk/g$1;->f:Lcom/flurry/sdk/g;

    iput-object p2, p0, Lcom/flurry/sdk/g$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/flurry/sdk/g$1;->c:Z

    iput-object p5, p0, Lcom/flurry/sdk/g$1;->d:Lcom/flurry/sdk/r;

    iput-boolean p6, p0, Lcom/flurry/sdk/g$1;->e:Z

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 706
    iget-object v0, p0, Lcom/flurry/sdk/g$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 707
    iget-object v0, p0, Lcom/flurry/sdk/g$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/mc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 710
    const/4 v0, 0x0

    .line 713
    invoke-static {v1}, Lcom/flurry/sdk/mc;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    iget-object v0, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 718
    :cond_0
    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/flurry/sdk/mc;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 719
    iget-object v0, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fo;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 723
    :cond_1
    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/flurry/sdk/mc;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 724
    iget-object v0, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fo;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 727
    :cond_2
    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/flurry/sdk/g$1;->c:Z

    if-eqz v2, :cond_4

    .line 729
    iget-object v0, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/sdk/g$1;->d:Lcom/flurry/sdk/r;

    invoke-static {v0, v1}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Lcom/flurry/sdk/r;)V

    .line 750
    :cond_3
    :goto_0
    return-void

    .line 733
    :cond_4
    iget-object v2, p0, Lcom/flurry/sdk/g$1;->d:Lcom/flurry/sdk/r;

    invoke-interface {v2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v2

    .line 734
    if-nez v0, :cond_5

    .line 2078
    iget-object v2, v2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 2262
    iget-boolean v2, v2, Lcom/flurry/sdk/ay;->g:Z

    .line 734
    if-eqz v2, :cond_5

    .line 735
    iget-object v0, p0, Lcom/flurry/sdk/g$1;->d:Lcom/flurry/sdk/r;

    iget-boolean v2, p0, Lcom/flurry/sdk/g$1;->c:Z

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V

    goto :goto_0

    .line 740
    :cond_5
    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/flurry/sdk/g$1;->e:Z

    if-eqz v0, :cond_6

    .line 741
    iget-object v0, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/g$1;->d:Lcom/flurry/sdk/r;

    iget-boolean v3, p0, Lcom/flurry/sdk/g$1;->c:Z

    invoke-static {v0, v2, v1, v3}, Lcom/flurry/sdk/fo;->a(Landroid/content/Context;Lcom/flurry/sdk/r;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 743
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fo;->d(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 748
    :cond_7
    const/4 v0, 0x6

    invoke-static {}, Lcom/flurry/sdk/g;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to launch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/g$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
