.class final Lcom/flurry/sdk/dv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;ILcom/flurry/sdk/fr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ks$a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/fr;

.field final synthetic c:I

.field final synthetic d:Lcom/flurry/sdk/au;

.field final synthetic e:Lcom/flurry/sdk/dv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dv;Ljava/lang/String;Lcom/flurry/sdk/fr;ILcom/flurry/sdk/au;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/flurry/sdk/dv$2;->e:Lcom/flurry/sdk/dv;

    iput-object p2, p0, Lcom/flurry/sdk/dv$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/dv$2;->b:Lcom/flurry/sdk/fr;

    iput p4, p0, Lcom/flurry/sdk/dv$2;->c:I

    iput-object p5, p0, Lcom/flurry/sdk/dv$2;->d:Lcom/flurry/sdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 668
    check-cast p2, Ljava/lang/String;

    .line 2220
    iget v0, p1, Lcom/flurry/sdk/ku;->p:I

    .line 1672
    invoke-static {}, Lcom/flurry/sdk/dv;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VAST resolver: HTTP status code is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/dv$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1674
    const/4 v0, 0x0

    .line 1675
    invoke-virtual {p1}, Lcom/flurry/sdk/ks;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1676
    invoke-static {}, Lcom/flurry/sdk/dv;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VAST resolver response:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/dv$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Lcom/flurry/sdk/dv$2;->b:Lcom/flurry/sdk/fr;

    invoke-static {p2}, Lcom/flurry/sdk/ft;->a(Ljava/lang/String;)Lcom/flurry/sdk/fr;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/fr;->a(Lcom/flurry/sdk/fr;Lcom/flurry/sdk/fr;)Lcom/flurry/sdk/fr;

    move-result-object v0

    .line 1682
    :cond_0
    if-nez v0, :cond_1

    .line 1683
    invoke-static {}, Lcom/flurry/sdk/dv;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VAST resolver failed for frame: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/flurry/sdk/dv$2;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1686
    iget-object v0, p0, Lcom/flurry/sdk/dv$2;->d:Lcom/flurry/sdk/au;

    iget v1, p0, Lcom/flurry/sdk/dv$2;->c:I

    new-instance v2, Lcom/flurry/sdk/fr$a;

    invoke-direct {v2}, Lcom/flurry/sdk/fr$a;-><init>()V

    invoke-virtual {v2}, Lcom/flurry/sdk/fr$a;->a()Lcom/flurry/sdk/fr$a;

    move-result-object v2

    .line 3218
    iget-object v2, v2, Lcom/flurry/sdk/fr$a;->a:Lcom/flurry/sdk/fr;

    .line 1686
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/au;->a(ILcom/flurry/sdk/fr;)V

    .line 1695
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$2$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$2$1;-><init>(Lcom/flurry/sdk/dv$2;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 668
    return-void

    .line 1688
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/dv;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VAST resolver successful for frame: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/flurry/sdk/dv$2;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget-object v1, p0, Lcom/flurry/sdk/dv$2;->d:Lcom/flurry/sdk/au;

    iget v2, p0, Lcom/flurry/sdk/dv$2;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/au;->a(ILcom/flurry/sdk/fr;)V

    goto :goto_0
.end method
