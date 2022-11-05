.class Lcom/adcolony/sdk/bj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bj;->a(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/adcolony/sdk/bj;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bj;Ljava/util/List;IZ)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/adcolony/sdk/bj$3;->d:Lcom/adcolony/sdk/bj;

    iput-object p2, p0, Lcom/adcolony/sdk/bj$3;->a:Ljava/util/List;

    iput p3, p0, Lcom/adcolony/sdk/bj$3;->b:I

    iput-boolean p4, p0, Lcom/adcolony/sdk/bj$3;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/adcolony/sdk/bj$3;->a:Ljava/util/List;

    if-nez v0, :cond_2

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    :goto_0
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/cp;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/cp;->c()Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/adcolony/sdk/cp;->c()Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    move-result-object v1

    iget v2, p0, Lcom/adcolony/sdk/bj$3;->b:I

    .line 126
    invoke-static {v0}, Lcom/adcolony/sdk/co;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;->injectCallbackResult(ILjava/lang/String;)V

    .line 133
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/adcolony/sdk/bj$3;->c:Z

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/adcolony/sdk/bj$3;->d:Lcom/adcolony/sdk/bj;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bj;->d()V

    .line 136
    :cond_1
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/bj$3;->a:Ljava/util/List;

    goto :goto_0

    .line 128
    :cond_3
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/cn;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v1

    iget v2, p0, Lcom/adcolony/sdk/bj$3;->b:I

    .line 131
    invoke-static {v0}, Lcom/adcolony/sdk/co;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/cn;->a(ILjava/lang/String;)V

    goto :goto_1
.end method
