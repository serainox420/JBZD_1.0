.class public Lio/realm/p;
.super Ljava/lang/Object;
.source "RealmConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/p$a;
    }
.end annotation


# static fields
.field protected static final a:Lio/realm/internal/m;

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/lang/Boolean;


# instance fields
.field private final d:Ljava/io/File;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:[B

.field private final i:J

.field private final j:Lio/realm/s;

.field private final k:Z

.field private final l:Lio/realm/internal/SharedRealm$Durability;

.field private final m:Lio/realm/internal/m;

.field private final n:Lio/realm/a/b;

.field private final o:Lio/realm/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lio/realm/l;->l()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lio/realm/p;->b:Ljava/lang/Object;

    .line 74
    sget-object v0, Lio/realm/p;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lio/realm/p;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/p;->a(Ljava/lang/String;)Lio/realm/internal/m;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lio/realm/internal/m;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "RealmTransformer doesn\'t seem to be applied. Please update the project configuration to use the Realm Gradle plugin. See https://realm.io/news/android-installation-change/"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    sput-object v0, Lio/realm/p;->a:Lio/realm/internal/m;

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lio/realm/p;->a:Lio/realm/internal/m;

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/s;ZLio/realm/internal/SharedRealm$Durability;Lio/realm/internal/m;Lio/realm/a/b;Lio/realm/l$a;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lio/realm/p;->d:Ljava/io/File;

    .line 115
    iput-object p2, p0, Lio/realm/p;->e:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lio/realm/p;->f:Ljava/lang/String;

    .line 117
    iput-object p4, p0, Lio/realm/p;->g:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lio/realm/p;->h:[B

    .line 119
    iput-wide p6, p0, Lio/realm/p;->i:J

    .line 120
    iput-object p8, p0, Lio/realm/p;->j:Lio/realm/s;

    .line 121
    iput-boolean p9, p0, Lio/realm/p;->k:Z

    .line 122
    iput-object p10, p0, Lio/realm/p;->l:Lio/realm/internal/SharedRealm$Durability;

    .line 123
    iput-object p11, p0, Lio/realm/p;->m:Lio/realm/internal/m;

    .line 124
    iput-object p12, p0, Lio/realm/p;->n:Lio/realm/a/b;

    .line 125
    iput-object p13, p0, Lio/realm/p;->o:Lio/realm/l$a;

    .line 126
    return-void
.end method

.method private static a(Ljava/lang/String;)Lio/realm/internal/m;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 289
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 290
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 291
    const-string v1, "io.realm.%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "Mediator"

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 295
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 297
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 298
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/m;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 301
    :catch_1
    move-exception v0

    .line 302
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 303
    :catch_2
    move-exception v0

    .line 304
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 305
    :catch_3
    move-exception v0

    .line 306
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static a(Ljava/util/Set;Ljava/util/Set;)Lio/realm/internal/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;>;)",
            "Lio/realm/internal/m;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 269
    new-instance v0, Lio/realm/internal/a/b;

    sget-object v1, Lio/realm/p;->a:Lio/realm/internal/m;

    invoke-direct {v0, v1, p1}, Lio/realm/internal/a/b;-><init>(Lio/realm/internal/m;Ljava/util/Collection;)V

    .line 284
    :goto_0
    return-object v0

    .line 273
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 274
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/p;->a(Ljava/lang/String;)Lio/realm/internal/m;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [Lio/realm/internal/m;

    .line 279
    const/4 v0, 0x0

    .line 280
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 281
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/realm/p;->a(Ljava/lang/String;)Lio/realm/internal/m;

    move-result-object v3

    aput-object v3, v1, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    .line 283
    goto :goto_1

    .line 284
    :cond_2
    new-instance v0, Lio/realm/internal/a/a;

    invoke-direct {v0, v1}, Lio/realm/internal/a/a;-><init>([Lio/realm/internal/m;)V

    goto :goto_0
.end method

.method protected static a(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 355
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    new-instance v1, Lio/realm/exceptions/RealmFileException;

    sget-object v2, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not resolve the canonical path to the Realm file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 358
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static declared-synchronized n()Z
    .locals 2

    .prologue
    .line 341
    const-class v1, Lio/realm/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/realm/p;->c:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 343
    :try_start_1
    const-string v0, "a.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 344
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/realm/p;->c:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lio/realm/p;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/realm/p;->c:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic p()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lio/realm/p;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lio/realm/p;->d:Ljava/io/File;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lio/realm/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()[B
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lio/realm/p;->h:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/p;->h:[B

    iget-object v1, p0, Lio/realm/p;->h:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lio/realm/p;->i:J

    return-wide v0
.end method

.method public e()Lio/realm/s;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lio/realm/p;->j:Lio/realm/s;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 224
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 227
    check-cast p1, Lio/realm/p;

    .line 229
    iget-wide v2, p0, Lio/realm/p;->i:J

    iget-wide v4, p1, Lio/realm/p;->i:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 230
    iget-boolean v1, p0, Lio/realm/p;->k:Z

    iget-boolean v2, p1, Lio/realm/p;->k:Z

    if-ne v1, v2, :cond_0

    .line 231
    iget-object v1, p0, Lio/realm/p;->d:Ljava/io/File;

    iget-object v2, p1, Lio/realm/p;->d:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lio/realm/p;->e:Ljava/lang/String;

    iget-object v2, p1, Lio/realm/p;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lio/realm/p;->f:Ljava/lang/String;

    iget-object v2, p1, Lio/realm/p;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lio/realm/p;->h:[B

    iget-object v2, p1, Lio/realm/p;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lio/realm/p;->l:Lio/realm/internal/SharedRealm$Durability;

    iget-object v2, p1, Lio/realm/p;->l:Lio/realm/internal/SharedRealm$Durability;

    invoke-virtual {v1, v2}, Lio/realm/internal/SharedRealm$Durability;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lio/realm/p;->j:Lio/realm/s;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lio/realm/p;->j:Lio/realm/s;

    iget-object v2, p1, Lio/realm/p;->j:Lio/realm/s;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    :cond_2
    iget-object v1, p0, Lio/realm/p;->n:Lio/realm/a/b;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lio/realm/p;->n:Lio/realm/a/b;

    iget-object v2, p1, Lio/realm/p;->n:Lio/realm/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    :cond_3
    iget-object v1, p0, Lio/realm/p;->o:Lio/realm/l$a;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/realm/p;->o:Lio/realm/l$a;

    iget-object v2, p1, Lio/realm/p;->o:Lio/realm/l$a;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    :cond_4
    iget-object v0, p0, Lio/realm/p;->m:Lio/realm/internal/m;

    iget-object v1, p1, Lio/realm/p;->m:Lio/realm/internal/m;

    invoke-virtual {v0, v1}, Lio/realm/internal/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 236
    :cond_5
    iget-object v1, p1, Lio/realm/p;->j:Lio/realm/s;

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 238
    :cond_6
    iget-object v1, p1, Lio/realm/p;->n:Lio/realm/a/b;

    if-eqz v1, :cond_3

    goto/16 :goto_0

    .line 239
    :cond_7
    iget-object v1, p1, Lio/realm/p;->o:Lio/realm/l$a;

    if-eqz v1, :cond_4

    goto/16 :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lio/realm/p;->k:Z

    return v0
.end method

.method public g()Lio/realm/internal/SharedRealm$Durability;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lio/realm/p;->l:Lio/realm/internal/SharedRealm$Durability;

    return-object v0
.end method

.method h()Lio/realm/internal/m;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lio/realm/p;->m:Lio/realm/internal/m;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lio/realm/p;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    .line 249
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/realm/p;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 250
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/realm/p;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 251
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/realm/p;->h:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/p;->h:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 252
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lio/realm/p;->i:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 253
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/realm/p;->j:Lio/realm/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/realm/p;->j:Lio/realm/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 254
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lio/realm/p;->k:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v0, v2

    .line 255
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/realm/p;->m:Lio/realm/internal/m;

    invoke-virtual {v2}, Lio/realm/internal/m;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 256
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/realm/p;->l:Lio/realm/internal/SharedRealm$Durability;

    invoke-virtual {v2}, Lio/realm/internal/SharedRealm$Durability;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 257
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lio/realm/p;->n:Lio/realm/a/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/realm/p;->n:Lio/realm/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 258
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/realm/p;->o:Lio/realm/l$a;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lio/realm/p;->o:Lio/realm/l$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 260
    return v0

    :cond_1
    move v0, v1

    .line 251
    goto :goto_0

    :cond_2
    move v0, v1

    .line 253
    goto :goto_1

    :cond_3
    move v0, v1

    .line 254
    goto :goto_2

    :cond_4
    move v0, v1

    .line 257
    goto :goto_3
.end method

.method i()Lio/realm/l$a;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lio/realm/p;->o:Lio/realm/l$a;

    return-object v0
.end method

.method j()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lio/realm/p;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lio/realm/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lio/realm/p;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lio/realm/p;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lio/realm/a/b;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lio/realm/p;->n:Lio/realm/a/b;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RxJava seems to be missing from the classpath. Remember to add it as a compile dependency. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, Lio/realm/p;->n:Lio/realm/a/b;

    return-object v0
.end method

.method o()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    const-string v0, "realmDirectory: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/p;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v0, "realmFileName : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v0, "canonicalPath: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v0, "key: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lio/realm/p;->h:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v0, "schemaVersion: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/realm/p;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v0, "migration: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/p;->j:Lio/realm/s;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v0, "deleteRealmIfMigrationNeeded: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lio/realm/p;->k:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 327
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v0, "durability: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/p;->l:Lio/realm/internal/SharedRealm$Durability;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v0, "schemaMediator: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/realm/p;->m:Lio/realm/internal/m;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 320
    :cond_0
    const/16 v0, 0x40

    goto :goto_0
.end method
