.class Lio/realm/k$1;
.super Ljava/lang/Object;
.source "ProxyState.java"

# interfaces
.implements Lio/realm/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/k;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/o",
        "<",
        "Lio/realm/k",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/realm/k;


# direct methods
.method constructor <init>(Lio/realm/k;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lio/realm/k$1;->a:Lio/realm/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/realm/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/k",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    const-wide/16 v0, -0x1

    .line 146
    iget-object v2, p0, Lio/realm/k$1;->a:Lio/realm/k;

    invoke-static {v2}, Lio/realm/k;->a(Lio/realm/k;)Lio/realm/internal/n;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/n;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v0, p0, Lio/realm/k$1;->a:Lio/realm/k;

    invoke-static {v0}, Lio/realm/k;->a(Lio/realm/k;)Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->i()J

    move-result-wide v0

    .line 150
    :cond_0
    iget-object v2, p0, Lio/realm/k$1;->a:Lio/realm/k;

    iget-wide v2, v2, Lio/realm/k;->a:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lio/realm/k$1;->a:Lio/realm/k;

    iput-wide v0, v2, Lio/realm/k;->a:J

    .line 152
    iget-object v0, p0, Lio/realm/k$1;->a:Lio/realm/k;

    invoke-static {v0}, Lio/realm/k;->b(Lio/realm/k;)V

    .line 154
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    check-cast p1, Lio/realm/k;

    invoke-virtual {p0, p1}, Lio/realm/k$1;->a(Lio/realm/k;)V

    return-void
.end method
