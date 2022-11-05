.class final Lcom/flurry/sdk/dv$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;Ljava/lang/String;)V
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

.field final synthetic b:Lcom/flurry/sdk/au;

.field final synthetic c:Lcom/flurry/sdk/dv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dv;Ljava/lang/String;Lcom/flurry/sdk/au;)V
    .locals 0

    .prologue
    .line 897
    iput-object p1, p0, Lcom/flurry/sdk/dv$4;->c:Lcom/flurry/sdk/dv;

    iput-object p2, p0, Lcom/flurry/sdk/dv$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/dv$4;->b:Lcom/flurry/sdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 897
    check-cast p2, Ljava/lang/String;

    .line 2220
    iget v0, p1, Lcom/flurry/sdk/ku;->p:I

    .line 1901
    const/4 v1, 0x3

    invoke-static {}, Lcom/flurry/sdk/dv;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Prerender: HTTP status code is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for url: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/flurry/sdk/dv$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1903
    invoke-virtual {p1}, Lcom/flurry/sdk/ks;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/flurry/sdk/dv$4;->b:Lcom/flurry/sdk/au;

    .line 3078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 3316
    iput-object p2, v0, Lcom/flurry/sdk/ay;->i:Ljava/lang/String;

    .line 1908
    iget-object v0, p0, Lcom/flurry/sdk/dv$4;->c:Lcom/flurry/sdk/dv;

    invoke-static {v0}, Lcom/flurry/sdk/dv;->l(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/r;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;)V

    .line 1909
    iget-object v0, p0, Lcom/flurry/sdk/dv$4;->c:Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->d()V

    :goto_0
    return-void

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dv$4;->c:Lcom/flurry/sdk/dv;

    iget-object v1, p0, Lcom/flurry/sdk/dv$4;->b:Lcom/flurry/sdk/au;

    sget-object v2, Lcom/flurry/sdk/bb;->j:Lcom/flurry/sdk/bb;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv;Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V

    .line 1913
    iget-object v0, p0, Lcom/flurry/sdk/dv$4;->c:Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->d()V

    goto :goto_0
.end method
