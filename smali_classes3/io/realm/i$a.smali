.class Lio/realm/i$a;
.super Lio/realm/internal/Collection$c;
.source "OrderedRealmCollectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/Collection$c",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/realm/i;


# direct methods
.method constructor <init>(Lio/realm/i;)V
    .locals 1

    .prologue
    .line 519
    iput-object p1, p0, Lio/realm/i$a;->a:Lio/realm/i;

    .line 520
    iget-object v0, p1, Lio/realm/i;->d:Lio/realm/internal/Collection;

    invoke-direct {p0, v0}, Lio/realm/internal/Collection$c;-><init>(Lio/realm/internal/Collection;)V

    .line 521
    return-void
.end method


# virtual methods
.method protected a(Lio/realm/internal/UncheckedRow;)Lio/realm/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lio/realm/i$a;->a:Lio/realm/i;

    iget-object v0, v0, Lio/realm/i;->a:Lio/realm/b;

    iget-object v1, p0, Lio/realm/i$a;->a:Lio/realm/i;

    iget-object v1, v1, Lio/realm/i;->b:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/i$a;->a:Lio/realm/i;

    iget-object v2, v2, Lio/realm/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/b;->a(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lio/realm/i$a;->a(Lio/realm/internal/UncheckedRow;)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method
