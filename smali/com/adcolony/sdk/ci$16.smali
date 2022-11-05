.class Lcom/adcolony/sdk/ci$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ci;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/adcolony/sdk/ci$16;->a:Lcom/adcolony/sdk/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 827
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checking purchases"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 828
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "can attempt redemption"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 830
    new-instance v0, Lcom/adcolony/sdk/ci$16$1;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    iget-object v1, v1, Lcom/adcolony/sdk/bz;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/ci$16$1;-><init>(Lcom/adcolony/sdk/ci$16;Lcom/adcolony/sdk/bq;)V

    .line 875
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkForOldGooglePurchases event posted"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/ci;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "could nto attempt endpoint (checkForOlPurchases)"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
