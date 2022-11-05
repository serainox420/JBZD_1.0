.class public Lio/realm/a/a;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/a/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lio/realm/a/a$a",
            "<",
            "Lio/realm/w;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lio/realm/a/a$a",
            "<",
            "Lio/realm/q;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lio/realm/a/a$a",
            "<",
            "Lio/realm/t;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lio/realm/a/a$1;

    invoke-direct {v0, p0}, Lio/realm/a/a$1;-><init>(Lio/realm/a/a;)V

    iput-object v0, p0, Lio/realm/a/a;->a:Ljava/lang/ThreadLocal;

    .line 57
    new-instance v0, Lio/realm/a/a$4;

    invoke-direct {v0, p0}, Lio/realm/a/a$4;-><init>(Lio/realm/a/a;)V

    iput-object v0, p0, Lio/realm/a/a;->b:Ljava/lang/ThreadLocal;

    .line 63
    new-instance v0, Lio/realm/a/a$5;

    invoke-direct {v0, p0}, Lio/realm/a/a$5;-><init>(Lio/realm/a/a;)V

    iput-object v0, p0, Lio/realm/a/a;->c:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public a(Lio/realm/d;Lio/realm/e;)La/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/d;",
            "Lio/realm/e;",
            ")",
            "La/a",
            "<",
            "Lio/realm/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p1}, Lio/realm/d;->g()Lio/realm/p;

    move-result-object v0

    .line 316
    new-instance v1, Lio/realm/a/a$3;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/a/a$3;-><init>(Lio/realm/a/a;Lio/realm/p;Lio/realm/e;)V

    invoke-static {v1}, La/a;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/realm/l;Lio/realm/t;)La/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(",
            "Lio/realm/l;",
            "TE;)",
            "La/a",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p1}, Lio/realm/l;->g()Lio/realm/p;

    move-result-object v0

    .line 280
    new-instance v1, Lio/realm/a/a$2;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/a/a$2;-><init>(Lio/realm/a/a;Lio/realm/p;Lio/realm/t;)V

    invoke-static {v1}, La/a;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 361
    instance-of v0, p1, Lio/realm/a/a;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 366
    const/16 v0, 0x25

    return v0
.end method
