.class Lio/realm/internal/Collection$b;
.super Lio/realm/internal/i$b;
.source "Collection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/internal/i$b",
        "<TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/realm/internal/Collection;


# direct methods
.method public constructor <init>(Lio/realm/internal/Collection;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lio/realm/internal/Collection$b;->a:Lio/realm/internal/Collection;

    .line 36
    invoke-direct {p0, p2, p3}, Lio/realm/internal/i$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lio/realm/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lio/realm/internal/Collection$b;->c:Ljava/lang/Object;

    instance-of v0, v0, Lio/realm/h;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lio/realm/internal/Collection$b;->c:Ljava/lang/Object;

    check-cast v0, Lio/realm/h;

    invoke-interface {v0, p1, p2}, Lio/realm/h;->a(Ljava/lang/Object;Lio/realm/g;)V

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lio/realm/internal/Collection$b;->c:Ljava/lang/Object;

    instance-of v0, v0, Lio/realm/o;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lio/realm/internal/Collection$b;->c:Ljava/lang/Object;

    check-cast v0, Lio/realm/o;

    invoke-interface {v0, p1}, Lio/realm/o;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported listener type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/internal/Collection$b;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
