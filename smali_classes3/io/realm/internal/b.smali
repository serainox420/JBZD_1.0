.class public final Lio/realm/internal/b;
.super Ljava/lang/Object;
.source "ColumnIndices.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:J

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Lio/realm/internal/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Lio/realm/internal/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lio/realm/internal/b;->a:J

    .line 33
    iput-object p3, p0, Lio/realm/internal/b;->b:Ljava/util/Map;

    .line 34
    return-void
.end method

.method private c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Lio/realm/internal/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    iget-object v0, p0, Lio/realm/internal/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/c;

    invoke-virtual {v0}, Lio/realm/internal/c;->b()Lio/realm/internal/c;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lio/realm/internal/b;->a:J

    return-wide v0
.end method

.method public a(Ljava/lang/Class;)Lio/realm/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;)",
            "Lio/realm/internal/c;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lio/realm/internal/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/c;

    return-object v0
.end method

.method public a(Lio/realm/internal/b;Lio/realm/internal/m;)V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lio/realm/internal/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lio/realm/internal/b;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v1

    .line 82
    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy ColumnIndices cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lio/realm/internal/m;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/c;

    invoke-virtual {v0, v1}, Lio/realm/internal/c;->a(Lio/realm/internal/c;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-wide v0, p1, Lio/realm/internal/b;->a:J

    iput-wide v0, p0, Lio/realm/internal/b;->a:J

    .line 89
    return-void
.end method

.method public b()Lio/realm/internal/b;
    .locals 2

    .prologue
    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/b;

    .line 64
    invoke-direct {p0}, Lio/realm/internal/b;->c()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lio/realm/internal/b;->b:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lio/realm/internal/b;->b()Lio/realm/internal/b;

    move-result-object v0

    return-object v0
.end method
