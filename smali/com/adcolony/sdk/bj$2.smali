.class Lcom/adcolony/sdk/bj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bj;->a(Ljava/lang/String;ZZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/adcolony/sdk/bj;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bj;Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/adcolony/sdk/bj$2;->f:Lcom/adcolony/sdk/bj;

    iput-object p2, p0, Lcom/adcolony/sdk/bj$2;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/adcolony/sdk/bj$2;->b:Z

    iput-boolean p4, p0, Lcom/adcolony/sdk/bj$2;->c:Z

    iput p5, p0, Lcom/adcolony/sdk/bj$2;->d:I

    iput-object p6, p0, Lcom/adcolony/sdk/bj$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Lcom/adcolony/sdk/co;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bj$2;->f:Lcom/adcolony/sdk/bj;

    invoke-static {v0}, Lcom/adcolony/sdk/bj;->a(Lcom/adcolony/sdk/bj;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/adcolony/sdk/bj$2;->f:Lcom/adcolony/sdk/bj;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bj;->a()Z

    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bj$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bz;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/adcolony/sdk/bj$2;->f:Lcom/adcolony/sdk/bj;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v2, "catalogPage"

    iget-object v3, p0, Lcom/adcolony/sdk/bj$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "close"

    iget-boolean v3, p0, Lcom/adcolony/sdk/bj$2;->b:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    const-string v2, "openedFromToast"

    iget-boolean v3, p0, Lcom/adcolony/sdk/bj$2;->c:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    const-string v2, "display_type"

    iget v3, p0, Lcom/adcolony/sdk/bj$2;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v2, "source_id"

    iget-object v3, p0, Lcom/adcolony/sdk/bj$2;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/adcolony/sdk/bj$2;->f:Lcom/adcolony/sdk/bj;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bj;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
