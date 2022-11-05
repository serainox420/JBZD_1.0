.class public Lcom/flurry/sdk/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ac;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/be;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/sdk/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/y;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/flurry/sdk/y$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/y$1;-><init>(Lcom/flurry/sdk/y;)V

    iput-object v0, p0, Lcom/flurry/sdk/y;->b:Lcom/flurry/sdk/kh;

    .line 36
    new-instance v0, Lcom/flurry/sdk/y$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/y$2;-><init>(Lcom/flurry/sdk/y;)V

    iput-object v0, p0, Lcom/flurry/sdk/y;->c:Lcom/flurry/sdk/kh;

    .line 43
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/y;->d:Ljava/util/TreeSet;

    .line 47
    iput-object p1, p0, Lcom/flurry/sdk/y;->e:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.AssetCacheManagerStatusEvent"

    iget-object v2, p0, Lcom/flurry/sdk/y;->b:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 50
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.FreqCapEvent"

    iget-object v2, p0, Lcom/flurry/sdk/y;->c:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 51
    return-void
.end method

.method private declared-synchronized d()V
    .locals 6

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/y;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    .line 11078
    iget-object v2, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 12058
    iget-object v2, v2, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 178
    iget-wide v2, v2, Lcom/flurry/sdk/cs;->d:J

    invoke-static {v2, v3}, Lcom/flurry/sdk/ly;->a(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/y;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removed expired ad unit -- adspace: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 183
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/y;->d()V

    .line 77
    iget-object v0, p0, Lcom/flurry/sdk/y;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/bf;)V
    .locals 7

    .prologue
    .line 151
    monitor-enter p0

    if-nez p1, :cond_1

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/y;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 156
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    .line 8078
    iget-object v1, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 9058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 160
    iget-object v1, v1, Lcom/flurry/sdk/cs;->g:Ljava/util/List;

    .line 161
    if-eqz v1, :cond_2

    .line 162
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/cz;

    .line 9175
    iget-object v4, p1, Lcom/flurry/sdk/bf;->a:Lcom/flurry/sdk/da;

    .line 163
    iget-object v5, v1, Lcom/flurry/sdk/cz;->a:Lcom/flurry/sdk/da;

    invoke-virtual {v4, v5}, Lcom/flurry/sdk/da;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9179
    iget-object v4, p1, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    .line 163
    iget-object v1, v1, Lcom/flurry/sdk/cz;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    const/4 v1, 0x3

    sget-object v4, Lcom/flurry/sdk/y;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removed frequency capped ad unit -- adspace: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    monitor-exit p0

    return-void

    .line 139
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/y;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    .line 6078
    iget-object v2, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 7058
    iget-object v2, v2, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 143
    iget-object v2, v2, Lcom/flurry/sdk/cs;->i:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/y;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removed grouped ad unit -- adspace: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    if-nez p1, :cond_0

    .line 94
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/y;->d:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/y;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 3058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 102
    iget-object v2, v0, Lcom/flurry/sdk/cs;->i:Ljava/lang/String;

    .line 103
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/y;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 105
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    .line 4078
    iget-object v4, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 5058
    iget-object v4, v4, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 107
    iget-object v4, v4, Lcom/flurry/sdk/cs;->i:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :cond_0
    monitor-exit p0

    return-object v1
.end method

.method public final declared-synchronized c()V
    .locals 3

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/sdk/y;->d:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/y$3;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/y$3;-><init>(Lcom/flurry/sdk/y;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
