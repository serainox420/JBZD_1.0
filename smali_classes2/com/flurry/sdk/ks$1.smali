.class final Lcom/flurry/sdk/ks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ku$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ks;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ks;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/flurry/sdk/ks$1;->a:Lcom/flurry/sdk/ks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/ku;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flurry/sdk/ks$1;->a:Lcom/flurry/sdk/ks;

    invoke-static {v0}, Lcom/flurry/sdk/ks;->d(Lcom/flurry/sdk/ks;)V

    .line 90
    return-void
.end method

.method public final a(Lcom/flurry/sdk/ku;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/flurry/sdk/ku;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ks$1;->a:Lcom/flurry/sdk/ks;

    invoke-static {v0}, Lcom/flurry/sdk/ks;->c(Lcom/flurry/sdk/ks;)Lcom/flurry/sdk/lg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/flurry/sdk/ks$1;->a:Lcom/flurry/sdk/ks;

    iget-object v1, p0, Lcom/flurry/sdk/ks$1;->a:Lcom/flurry/sdk/ks;

    invoke-static {v1}, Lcom/flurry/sdk/ks;->c(Lcom/flurry/sdk/ks;)Lcom/flurry/sdk/lg;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/flurry/sdk/lg;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flurry/sdk/ks$1;->a:Lcom/flurry/sdk/ks;

    invoke-static {v0}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ks$1;->a:Lcom/flurry/sdk/ks;

    invoke-static {v0}, Lcom/flurry/sdk/ks;->b(Lcom/flurry/sdk/ks;)Lcom/flurry/sdk/lg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/ks$1;->a:Lcom/flurry/sdk/ks;

    invoke-static {v0}, Lcom/flurry/sdk/ks;->b(Lcom/flurry/sdk/ks;)Lcom/flurry/sdk/lg;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ks$1;->a:Lcom/flurry/sdk/ks;

    invoke-static {v1}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/flurry/sdk/lg;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method
