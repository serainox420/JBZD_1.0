.class Lio/realm/internal/Collection$e;
.super Ljava/lang/Object;
.source "Collection.java"

# interfaces
.implements Lio/realm/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/realm/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/realm/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/o",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lio/realm/internal/Collection$e;->a:Lio/realm/o;

    .line 57
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lio/realm/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lio/realm/internal/Collection$e;->a:Lio/realm/o;

    invoke-interface {v0, p1}, Lio/realm/o;->a(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 66
    instance-of v0, p1, Lio/realm/internal/Collection$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/Collection$e;->a:Lio/realm/o;

    check-cast p1, Lio/realm/internal/Collection$e;

    iget-object v1, p1, Lio/realm/internal/Collection$e;->a:Lio/realm/o;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lio/realm/internal/Collection$e;->a:Lio/realm/o;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
