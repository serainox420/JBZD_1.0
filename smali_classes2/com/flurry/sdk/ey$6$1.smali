.class final Lcom/flurry/sdk/ey$6$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ey$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ey$6;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ey$6;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/flurry/sdk/ey$6$1;->a:Lcom/flurry/sdk/ey$6;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 221
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ey;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load view in 10 seconds."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/flurry/sdk/ei;->n:Lcom/flurry/sdk/ei;

    iget-object v1, p0, Lcom/flurry/sdk/ey$6$1;->a:Lcom/flurry/sdk/ey$6;

    iget-object v1, v1, Lcom/flurry/sdk/ey$6;->a:Lcom/flurry/sdk/ey;

    invoke-static {v1}, Lcom/flurry/sdk/ey;->c(Lcom/flurry/sdk/ey;)I

    move-result v1

    const-string v2, "Request timed out"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/flurry/sdk/ey$6$1;->a:Lcom/flurry/sdk/ey$6;

    iget-object v0, v0, Lcom/flurry/sdk/ey$6;->a:Lcom/flurry/sdk/ey;

    invoke-static {v0}, Lcom/flurry/sdk/ey;->d(Lcom/flurry/sdk/ey;)V

    .line 224
    iget-object v0, p0, Lcom/flurry/sdk/ey$6$1;->a:Lcom/flurry/sdk/ey$6;

    iget-object v0, v0, Lcom/flurry/sdk/ey$6;->a:Lcom/flurry/sdk/ey;

    invoke-static {v0}, Lcom/flurry/sdk/ey;->e(Lcom/flurry/sdk/ey;)Lcom/flurry/sdk/eq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/flurry/sdk/ey$6$1;->a:Lcom/flurry/sdk/ey$6;

    iget-object v0, v0, Lcom/flurry/sdk/ey$6;->a:Lcom/flurry/sdk/ey;

    invoke-static {v0}, Lcom/flurry/sdk/ey;->e(Lcom/flurry/sdk/ey;)Lcom/flurry/sdk/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eq;->c()V

    .line 227
    :cond_0
    return-void
.end method
