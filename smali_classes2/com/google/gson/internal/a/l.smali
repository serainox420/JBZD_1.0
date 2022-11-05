.class public final Lcom/google/gson/internal/a/l;
.super Lcom/google/gson/o;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/a/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/o",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/n",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/gson/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/gson/d;

.field private final d:Lcom/google/gson/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/b/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/p;

.field private final f:Lcom/google/gson/internal/a/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/a/l",
            "<TT;>.a;"
        }
    .end annotation
.end field

.field private g:Lcom/google/gson/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/o",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/n;Lcom/google/gson/h;Lcom/google/gson/d;Lcom/google/gson/b/a;Lcom/google/gson/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/n",
            "<TT;>;",
            "Lcom/google/gson/h",
            "<TT;>;",
            "Lcom/google/gson/d;",
            "Lcom/google/gson/b/a",
            "<TT;>;",
            "Lcom/google/gson/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/gson/o;-><init>()V

    .line 47
    new-instance v0, Lcom/google/gson/internal/a/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/a/l$a;-><init>(Lcom/google/gson/internal/a/l;Lcom/google/gson/internal/a/l$1;)V

    iput-object v0, p0, Lcom/google/gson/internal/a/l;->f:Lcom/google/gson/internal/a/l$a;

    .line 54
    iput-object p1, p0, Lcom/google/gson/internal/a/l;->a:Lcom/google/gson/n;

    .line 55
    iput-object p2, p0, Lcom/google/gson/internal/a/l;->b:Lcom/google/gson/h;

    .line 56
    iput-object p3, p0, Lcom/google/gson/internal/a/l;->c:Lcom/google/gson/d;

    .line 57
    iput-object p4, p0, Lcom/google/gson/internal/a/l;->d:Lcom/google/gson/b/a;

    .line 58
    iput-object p5, p0, Lcom/google/gson/internal/a/l;->e:Lcom/google/gson/p;

    .line 59
    return-void
.end method

.method private b()Lcom/google/gson/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/gson/internal/a/l;->g:Lcom/google/gson/o;

    .line 87
    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/a/l;->c:Lcom/google/gson/d;

    iget-object v1, p0, Lcom/google/gson/internal/a/l;->e:Lcom/google/gson/p;

    iget-object v2, p0, Lcom/google/gson/internal/a/l;->d:Lcom/google/gson/b/a;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/d;->a(Lcom/google/gson/p;Lcom/google/gson/b/a;)Lcom/google/gson/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/a/l;->g:Lcom/google/gson/o;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/b;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/b;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/gson/internal/a/l;->a:Lcom/google/gson/n;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/google/gson/internal/a/l;->b()Lcom/google/gson/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/o;->a(Lcom/google/gson/stream/b;Ljava/lang/Object;)V

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/google/gson/stream/b;->f()Lcom/google/gson/stream/b;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/a/l;->a:Lcom/google/gson/n;

    iget-object v1, p0, Lcom/google/gson/internal/a/l;->d:Lcom/google/gson/b/a;

    invoke-virtual {v1}, Lcom/google/gson/b/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/internal/a/l;->f:Lcom/google/gson/internal/a/l$a;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/gson/n;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/m;)Lcom/google/gson/i;

    move-result-object v0

    .line 82
    invoke-static {v0, p1}, Lcom/google/gson/internal/h;->a(Lcom/google/gson/i;Lcom/google/gson/stream/b;)V

    goto :goto_0
.end method

.method public b(Lcom/google/gson/stream/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/gson/internal/a/l;->b:Lcom/google/gson/h;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/google/gson/internal/a/l;->b()Lcom/google/gson/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/o;->b(Lcom/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/google/gson/internal/h;->a(Lcom/google/gson/stream/a;)Lcom/google/gson/i;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/gson/i;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/google/gson/internal/a/l;->b:Lcom/google/gson/h;

    iget-object v2, p0, Lcom/google/gson/internal/a/l;->d:Lcom/google/gson/b/a;

    invoke-virtual {v2}, Lcom/google/gson/b/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/internal/a/l;->f:Lcom/google/gson/internal/a/l$a;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/gson/h;->a(Lcom/google/gson/i;Ljava/lang/reflect/Type;Lcom/google/gson/g;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
