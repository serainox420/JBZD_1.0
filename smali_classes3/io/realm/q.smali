.class public Lio/realm/q;
.super Ljava/util/AbstractList;
.source "RealmList.java"

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/q$b;,
        Lio/realm/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/t;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Lio/realm/OrderedRealmCollection",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field final c:Lio/realm/internal/LinkView;

.field protected d:Lio/realm/b;

.field private final e:Lio/realm/internal/Collection;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 74
    iput-object v0, p0, Lio/realm/q;->e:Lio/realm/internal/Collection;

    .line 75
    iput-object v0, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/q;->f:Ljava/util/List;

    .line 77
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lio/realm/internal/LinkView;Lio/realm/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lio/realm/internal/LinkView;",
            "Lio/realm/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 106
    new-instance v0, Lio/realm/internal/Collection;

    iget-object v1, p3, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/LinkView;Lio/realm/internal/SortDescriptor;)V

    iput-object v0, p0, Lio/realm/q;->e:Lio/realm/internal/Collection;

    .line 107
    iput-object p1, p0, Lio/realm/q;->a:Ljava/lang/Class;

    .line 108
    iput-object p2, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    .line 109
    iput-object p3, p0, Lio/realm/q;->d:Lio/realm/b;

    .line 110
    return-void
.end method

.method static synthetic a(Lio/realm/q;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lio/realm/q;->modCount:I

    return v0
.end method

.method static synthetic b(Lio/realm/q;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lio/realm/q;->modCount:I

    return v0
.end method

.method private b(Lio/realm/t;)Lio/realm/t;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 245
    instance-of v0, p1, Lio/realm/internal/l;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 246
    check-cast v0, Lio/realm/internal/l;

    .line 248
    instance-of v1, v0, Lio/realm/e;

    if-eqz v1, :cond_4

    .line 249
    iget-object v1, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    invoke-virtual {v1}, Lio/realm/internal/LinkView;->e()Lio/realm/internal/Table;

    move-result-object v1

    invoke-static {v1}, Lio/realm/RealmSchema;->a(Lio/realm/internal/Table;)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v2

    iget-object v3, p0, Lio/realm/q;->d:Lio/realm/b;

    if-ne v2, v3, :cond_2

    move-object v0, p1

    .line 251
    check-cast v0, Lio/realm/e;

    invoke-virtual {v0}, Lio/realm/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-object p1

    .line 257
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The object has a different type from list\'s. Type of the list is \'%s\', type of object is \'%s\'."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_2
    iget-object v1, p0, Lio/realm/q;->d:Lio/realm/b;

    iget-wide v2, v1, Lio/realm/b;->c:J

    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    iget-wide v0, v0, Lio/realm/b;->c:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot copy DynamicRealmObject between Realm instances."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot copy an object to a Realm instance created in another thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_4
    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/realm/q;->d:Lio/realm/b;

    invoke-virtual {v2}, Lio/realm/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 271
    iget-object v1, p0, Lio/realm/q;->d:Lio/realm/b;

    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    if-eq v1, v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot copy an object from another Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_5
    iget-object v0, p0, Lio/realm/q;->d:Lio/realm/b;

    check-cast v0, Lio/realm/l;

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/l;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 282
    invoke-virtual {v0, p1}, Lio/realm/l;->b(Lio/realm/t;)Lio/realm/t;

    move-result-object p1

    goto/16 :goto_0

    .line 284
    :cond_6
    invoke-virtual {v0, p1}, Lio/realm/l;->a(Lio/realm/t;)Lio/realm/t;

    move-result-object p1

    goto/16 :goto_0
.end method

.method static synthetic c(Lio/realm/q;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lio/realm/q;->modCount:I

    return v0
.end method

.method private c(Lio/realm/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 782
    if-nez p1, :cond_0

    .line 783
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RealmList does not accept null values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_0
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    invoke-virtual {v0}, Lio/realm/internal/LinkView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lio/realm/q;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lio/realm/q;->modCount:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lio/realm/q;->d:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 796
    iget-object v0, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    invoke-virtual {v0}, Lio/realm/internal/LinkView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm instance has been closed or this object or its parent has been deleted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_1
    return-void
.end method

.method static synthetic e(Lio/realm/q;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lio/realm/q;->modCount:I

    return v0
.end method


# virtual methods
.method public a(I)Lio/realm/t;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Lio/realm/q;->d()V

    .line 346
    invoke-virtual {p0, p1}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/LinkView;->c(J)V

    .line 351
    :goto_0
    iget v1, p0, Lio/realm/q;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/realm/q;->modCount:I

    .line 352
    return-object v0

    .line 349
    :cond_0
    iget-object v0, p0, Lio/realm/q;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    goto :goto_0
.end method

.method public a(ILio/realm/t;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0, p2}, Lio/realm/q;->c(Lio/realm/t;)V

    .line 166
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-direct {p0}, Lio/realm/q;->d()V

    .line 168
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lio/realm/q;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/q;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    invoke-direct {p0, p2}, Lio/realm/q;->b(Lio/realm/t;)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lio/realm/internal/l;

    .line 172
    iget-object v1, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    int-to-long v2, p1

    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/LinkView;->a(JJ)V

    .line 176
    :goto_0
    iget v0, p0, Lio/realm/q;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/q;->modCount:I

    .line 177
    return-void

    .line 174
    :cond_2
    iget-object v0, p0, Lio/realm/q;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lio/realm/t;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lio/realm/q;->c(Lio/realm/t;)V

    .line 198
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lio/realm/q;->d()V

    .line 200
    invoke-direct {p0, p1}, Lio/realm/q;->b(Lio/realm/t;)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lio/realm/internal/l;

    .line 201
    iget-object v1, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/LinkView;->b(J)V

    .line 205
    :goto_0
    iget v0, p0, Lio/realm/q;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/q;->modCount:I

    .line 206
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_0
    iget-object v0, p0, Lio/realm/q;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p2, Lio/realm/t;

    invoke-virtual {p0, p1, p2}, Lio/realm/q;->a(ILio/realm/t;)V

    return-void
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lio/realm/t;

    invoke-virtual {p0, p1}, Lio/realm/q;->a(Lio/realm/t;)Z

    move-result v0

    return v0
.end method

.method public b(I)Lio/realm/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-direct {p0}, Lio/realm/q;->d()V

    .line 452
    iget-object v0, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/LinkView;->a(J)J

    move-result-wide v0

    .line 453
    iget-object v2, p0, Lio/realm/q;->d:Lio/realm/b;

    iget-object v3, p0, Lio/realm/q;->a:Ljava/lang/Class;

    iget-object v4, p0, Lio/realm/q;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lio/realm/b;->a(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/t;

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/q;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    goto :goto_0
.end method

.method public b(ILio/realm/t;)Lio/realm/t;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0, p2}, Lio/realm/q;->c(Lio/realm/t;)V

    .line 231
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lio/realm/q;->d()V

    .line 233
    invoke-direct {p0, p2}, Lio/realm/q;->b(Lio/realm/t;)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lio/realm/internal/l;

    .line 234
    invoke-virtual {p0, p1}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    int-to-long v4, p1

    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lio/realm/internal/LinkView;->b(JJ)V

    move-object v0, v1

    .line 240
    :goto_0
    return-object v0

    .line 238
    :cond_0
    iget-object v0, p0, Lio/realm/q;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lio/realm/q;->d:Lio/realm/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-direct {p0}, Lio/realm/q;->d()V

    .line 326
    iget-object v0, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    invoke-virtual {v0}, Lio/realm/internal/LinkView;->a()V

    .line 330
    :goto_0
    iget v0, p0, Lio/realm/q;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/q;->modCount:I

    .line 331
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lio/realm/q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 727
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 728
    iget-object v0, p0, Lio/realm/q;->d:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 731
    instance-of v0, p1, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 732
    check-cast v0, Lio/realm/internal/l;

    .line 733
    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    sget-object v2, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 745
    :goto_0
    return v0

    .line 738
    :cond_0
    invoke-virtual {p0}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    .line 739
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 743
    goto :goto_0

    .line 745
    :cond_3
    iget-object v0, p0, Lio/realm/q;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 754
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    new-instance v0, Lio/realm/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/q$a;-><init>(Lio/realm/q;Lio/realm/q$1;)V

    .line 757
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 766
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/q;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    new-instance v0, Lio/realm/q$b;

    invoke-direct {v0, p0, p1}, Lio/realm/q$b;-><init>(Lio/realm/q;I)V

    .line 777
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lio/realm/q;->a(I)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/q;->d:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects can only be removed from inside a write transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/q;->d:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects can only be removed from inside a write transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    check-cast p2, Lio/realm/t;

    invoke-virtual {p0, p1, p2}, Lio/realm/q;->b(ILio/realm/t;)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 583
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    invoke-direct {p0}, Lio/realm/q;->d()V

    .line 585
    iget-object v0, p0, Lio/realm/q;->c:Lio/realm/internal/LinkView;

    invoke-virtual {v0}, Lio/realm/internal/LinkView;->b()J

    move-result-wide v0

    .line 586
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 588
    :goto_0
    return v0

    .line 586
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    .line 588
    :cond_1
    iget-object v0, p0, Lio/realm/q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    const-string v0, "@["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lio/realm/q;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 827
    const-string v0, "invalid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :cond_0
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 824
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 829
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lio/realm/q;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lio/realm/q;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 831
    invoke-virtual {p0, v1}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 835
    :goto_2
    invoke-virtual {p0}, Lio/realm/q;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    .line 836
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 829
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 833
    :cond_4
    invoke-virtual {p0, v1}, Lio/realm/q;->b(I)Lio/realm/t;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
