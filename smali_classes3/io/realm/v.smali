.class public Lio/realm/v;
.super Ljava/lang/Object;
.source "RealmQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/t;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lio/realm/b;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lio/realm/internal/Table;

.field private e:Lio/realm/RealmObjectSchema;

.field private f:Lio/realm/internal/LinkView;

.field private g:Lio/realm/internal/TableQuery;


# direct methods
.method private constructor <init>(Lio/realm/l;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lio/realm/v;->a:Lio/realm/b;

    .line 123
    iput-object p2, p0, Lio/realm/v;->b:Ljava/lang/Class;

    .line 124
    iget-object v0, p1, Lio/realm/l;->f:Lio/realm/RealmSchema;

    invoke-virtual {v0, p2}, Lio/realm/RealmSchema;->c(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    iput-object v0, p0, Lio/realm/v;->e:Lio/realm/RealmObjectSchema;

    .line 125
    iget-object v0, p0, Lio/realm/v;->e:Lio/realm/RealmObjectSchema;

    iget-object v0, v0, Lio/realm/RealmObjectSchema;->a:Lio/realm/internal/Table;

    iput-object v0, p0, Lio/realm/v;->d:Lio/realm/internal/Table;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/v;->f:Lio/realm/internal/LinkView;

    .line 127
    iget-object v0, p0, Lio/realm/v;->d:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->g()Lio/realm/internal/TableQuery;

    move-result-object v0

    iput-object v0, p0, Lio/realm/v;->g:Lio/realm/internal/TableQuery;

    .line 128
    return-void
.end method

.method public static a(Lio/realm/l;Ljava/lang/Class;)Lio/realm/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(",
            "Lio/realm/l;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lio/realm/v",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lio/realm/v;

    invoke-direct {v0, p0, p1}, Lio/realm/v;-><init>(Lio/realm/l;Ljava/lang/Class;)V

    return-object v0
.end method

.method private a(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;Z)Lio/realm/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/TableQuery;",
            "Lio/realm/internal/SortDescriptor;",
            "Lio/realm/internal/SortDescriptor;",
            "Z)",
            "Lio/realm/w",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1968
    new-instance v1, Lio/realm/internal/Collection;

    iget-object v0, p0, Lio/realm/v;->a:Lio/realm/b;

    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-direct {v1, v0, p1, p2, p3}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)V

    .line 1969
    invoke-direct {p0}, Lio/realm/v;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1970
    new-instance v0, Lio/realm/w;

    iget-object v2, p0, Lio/realm/v;->a:Lio/realm/b;

    iget-object v3, p0, Lio/realm/v;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Lio/realm/w;-><init>(Lio/realm/b;Lio/realm/internal/Collection;Ljava/lang/String;)V

    .line 1974
    :goto_0
    if-eqz p4, :cond_0

    .line 1975
    invoke-virtual {v0}, Lio/realm/w;->b()Z

    .line 1977
    :cond_0
    return-object v0

    .line 1972
    :cond_1
    new-instance v0, Lio/realm/w;

    iget-object v2, p0, Lio/realm/v;->a:Lio/realm/b;

    iget-object v3, p0, Lio/realm/v;->b:Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v3}, Lio/realm/w;-><init>(Lio/realm/b;Lio/realm/internal/Collection;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/v",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lio/realm/v;->e:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->a(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 443
    if-nez p2, :cond_0

    .line 444
    iget-object v1, p0, Lio/realm/v;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0}, Lio/realm/internal/TableQuery;->a([J)Lio/realm/internal/TableQuery;

    .line 448
    :goto_0
    return-object p0

    .line 446
    :cond_0
    iget-object v1, p0, Lio/realm/v;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lio/realm/internal/TableQuery;->a([JZ)Lio/realm/internal/TableQuery;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/v",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lio/realm/v;->e:Lio/realm/RealmObjectSchema;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    const/4 v2, 0x0

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/realm/RealmObjectSchema;->a(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J

    move-result-object v0

    .line 347
    if-nez p2, :cond_0

    .line 348
    iget-object v1, p0, Lio/realm/v;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v1, v0}, Lio/realm/internal/TableQuery;->a([J)Lio/realm/internal/TableQuery;

    .line 352
    :goto_0
    return-object p0

    .line 350
    :cond_0
    iget-object v1, p0, Lio/realm/v;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lio/realm/internal/TableQuery;->a([JJ)Lio/realm/internal/TableQuery;

    goto :goto_0
.end method

.method private d()Lio/realm/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/v",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1472
    iget-object v0, p0, Lio/realm/v;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->c()Lio/realm/internal/TableQuery;

    .line 1473
    return-object p0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 1842
    iget-object v0, p0, Lio/realm/v;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()J
    .locals 2

    .prologue
    .line 1981
    iget-object v0, p0, Lio/realm/v;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->d()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()Lio/realm/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/v",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1466
    iget-object v0, p0, Lio/realm/v;->a:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 1468
    invoke-direct {p0}, Lio/realm/v;->d()Lio/realm/v;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/v",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lio/realm/v;->a:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 438
    invoke-direct {p0, p1, p2}, Lio/realm/v;->b(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/v;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/v",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lio/realm/v;->a:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 342
    invoke-direct {p0, p1, p2}, Lio/realm/v;->b(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/w",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1768
    iget-object v0, p0, Lio/realm/v;->a:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 1770
    iget-object v0, p0, Lio/realm/v;->g:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->a()Lio/realm/internal/Table;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/realm/internal/SortDescriptor;->a(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/internal/SortDescriptor;

    move-result-object v0

    .line 1771
    iget-object v1, p0, Lio/realm/v;->g:Lio/realm/internal/TableQuery;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lio/realm/v;->a(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;Z)Lio/realm/w;

    move-result-object v0

    return-object v0
.end method

.method public b()Lio/realm/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/w",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1733
    iget-object v0, p0, Lio/realm/v;->a:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 1735
    iget-object v0, p0, Lio/realm/v;->g:Lio/realm/internal/TableQuery;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lio/realm/v;->a(Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;Z)Lio/realm/w;

    move-result-object v0

    return-object v0
.end method

.method public c()Lio/realm/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1905
    iget-object v0, p0, Lio/realm/v;->a:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 1907
    invoke-direct {p0}, Lio/realm/v;->f()J

    move-result-wide v0

    .line 1908
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1909
    iget-object v2, p0, Lio/realm/v;->a:Lio/realm/b;

    iget-object v3, p0, Lio/realm/v;->b:Ljava/lang/Class;

    iget-object v4, p0, Lio/realm/v;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lio/realm/b;->a(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/t;

    move-result-object v0

    .line 1912
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
