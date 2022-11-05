.class Lio/realm/internal/RealmNotifier$a;
.super Lio/realm/internal/i$b;
.source "RealmNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/RealmNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/internal/i$b",
        "<TT;",
        "Lio/realm/o",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/realm/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lio/realm/internal/i$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lio/realm/internal/RealmNotifier$a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lio/realm/internal/RealmNotifier$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lio/realm/internal/RealmNotifier$a;->c:Ljava/lang/Object;

    check-cast v0, Lio/realm/o;

    invoke-interface {v0, p1}, Lio/realm/o;->a(Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-void
.end method
