.class public final Lcom/google/gson/internal/a/a;
.super Lcom/google/gson/o;
.source "ArrayTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/o",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/gson/p;


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/gson/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/o",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/gson/internal/a/a$1;

    invoke-direct {v0}, Lcom/google/gson/internal/a/a$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/a/a;->a:Lcom/google/gson/p;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/d;Lcom/google/gson/o;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/d;",
            "Lcom/google/gson/o",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/gson/o;-><init>()V

    .line 58
    new-instance v0, Lcom/google/gson/internal/a/m;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/gson/internal/a/m;-><init>(Lcom/google/gson/d;Lcom/google/gson/o;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/gson/internal/a/a;->c:Lcom/google/gson/o;

    .line 60
    iput-object p3, p0, Lcom/google/gson/internal/a/a;->b:Ljava/lang/Class;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/b;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/google/gson/stream/b;->f()Lcom/google/gson/stream/b;

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/b;->b()Lcom/google/gson/stream/b;

    .line 91
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 92
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/google/gson/internal/a/a;->c:Lcom/google/gson/o;

    invoke-virtual {v3, p1, v2}, Lcom/google/gson/o;->a(Lcom/google/gson/stream/b;Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/b;->c()Lcom/google/gson/stream/b;

    goto :goto_0
.end method

.method public b(Lcom/google/gson/stream/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->f()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->j()V

    .line 66
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 69
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->a()V

    .line 71
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/google/gson/internal/a/a;->c:Lcom/google/gson/o;

    invoke-virtual {v0, p1}, Lcom/google/gson/o;->b(Lcom/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->b()V

    .line 76
    iget-object v0, p0, Lcom/google/gson/internal/a/a;->b:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 77
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 78
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 80
    goto :goto_0
.end method
