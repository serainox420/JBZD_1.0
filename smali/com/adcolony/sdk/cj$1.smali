.class Lcom/adcolony/sdk/cj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/cj;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cj;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/adcolony/sdk/cj$1;->a:Lcom/adcolony/sdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adcolony/sdk/cj$1;->a:Lcom/adcolony/sdk/cj;

    invoke-static {v0}, Lcom/adcolony/sdk/cj;->a(Lcom/adcolony/sdk/cj;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timerRoutine started"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->J()V

    .line 106
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->t()Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_INVISIBLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-ne v0, v1, :cond_0

    .line 107
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    const-string v1, "InvisibleReinitAttempt"

    .line 108
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bz;->f(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/cj$1;->a:Lcom/adcolony/sdk/cj;

    iget-object v0, v0, Lcom/adcolony/sdk/cj;->l:Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/cj$1;->a:Lcom/adcolony/sdk/cj;

    iget-object v1, v1, Lcom/adcolony/sdk/cj;->m:Lcom/adcolony/sdk/bv;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bm;->o()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;J)V

    .line 117
    return-void

    .line 110
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    const-string v1, "InternetAvailableFromTimer"

    .line 113
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bz;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
