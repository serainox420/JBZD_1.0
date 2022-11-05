.class public Lio/realm/RealmSchema;
.super Ljava/lang/Object;
.source "RealmSchema.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lio/realm/internal/b;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/realm/internal/Table;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Lio/realm/internal/Table;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Lio/realm/RealmObjectSchema;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/realm/RealmObjectSchema;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lio/realm/b;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lio/realm/internal/Table;->a:Ljava/lang/String;

    sput-object v0, Lio/realm/RealmSchema;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->c:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->d:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->e:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->f:Ljava/util/Map;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/RealmSchema;->h:J

    .line 74
    return-void
.end method

.method constructor <init>(Lio/realm/b;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->c:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->d:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->e:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->f:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/RealmSchema;->h:J

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lio/realm/RealmObjectSchema;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->c:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->d:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->e:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/RealmSchema;->f:Ljava/util/Map;

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 79
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 80
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    invoke-virtual {v0}, Lio/realm/RealmObjectSchema;->b()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {v2}, Lio/realm/RealmSchema;->nativeCreateFromList([J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmSchema;->h:J

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    .line 84
    return-void
.end method

.method static a(Lio/realm/internal/Table;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 253
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 329
    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static native nativeClose(J)V
.end method

.method static native nativeCreateFromList([J)J
.end method

.method static native nativeGetAll(J)[J
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lio/realm/RealmSchema;->h:J

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 107
    const-string v1, "Null or empty class names are not allowed"

    invoke-direct {p0, p1, v1}, Lio/realm/RealmSchema;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    if-nez v1, :cond_1

    .line 109
    invoke-virtual {p0, p1}, Lio/realm/RealmSchema;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v0, p0, Lio/realm/RealmSchema;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/realm/RealmSchema;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v2, v2, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v2, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v0, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 118
    new-instance v2, Lio/realm/RealmObjectSchema$a;

    invoke-direct {v2, v1}, Lio/realm/RealmObjectSchema$a;-><init>(Lio/realm/internal/Table;)V

    .line 119
    new-instance v0, Lio/realm/RealmObjectSchema;

    iget-object v3, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/b;Lio/realm/internal/Table;Ljava/util/Map;)V

    goto :goto_0
.end method

.method a(Ljava/lang/Class;)Lio/realm/internal/c;
    .locals 3
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
    .line 266
    iget-object v0, p0, Lio/realm/RealmSchema;->a:Lio/realm/internal/b;

    invoke-virtual {v0, p1}, Lio/realm/internal/b;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    .line 267
    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No validated schema information found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v2, v2, Lio/realm/b;->d:Lio/realm/p;

    invoke-virtual {v2}, Lio/realm/p;->h()Lio/realm/internal/m;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/realm/internal/m;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .locals 4

    .prologue
    .line 163
    const-string v0, "Null or empty class names are not allowed"

    invoke-direct {p0, p1, v0}, Lio/realm/RealmSchema;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lio/realm/RealmObjectSchema;

    invoke-direct {v0, p1}, Lio/realm/RealmObjectSchema;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lio/realm/RealmSchema;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :goto_0
    return-object v0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/realm/RealmSchema;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x38

    if-le v1, v2, :cond_1

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class name is too long. Limit is 56 characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    iget-object v1, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v1, v1, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v1, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2
    iget-object v1, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v1, v1, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v1, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 177
    new-instance v2, Lio/realm/RealmObjectSchema$a;

    invoke-direct {v2, v1}, Lio/realm/RealmObjectSchema$a;-><init>(Lio/realm/internal/Table;)V

    .line 178
    new-instance v0, Lio/realm/RealmObjectSchema;

    iget-object v3, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    invoke-direct {v0, v3, v1, v2}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/b;Lio/realm/internal/Table;Ljava/util/Map;)V

    goto :goto_0
.end method

.method b(Ljava/lang/Class;)Lio/realm/internal/Table;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;)",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lio/realm/RealmSchema;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    .line 288
    if-nez v0, :cond_2

    .line 289
    invoke-static {p1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 290
    invoke-static {v1, p1}, Lio/realm/RealmSchema;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    iget-object v0, p0, Lio/realm/RealmSchema;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    .line 294
    :cond_0
    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    iget-object v2, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v2, v2, Lio/realm/b;->d:Lio/realm/p;

    invoke-virtual {v2}, Lio/realm/p;->h()Lio/realm/internal/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/internal/m;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 296
    iget-object v2, p0, Lio/realm/RealmSchema;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_1
    invoke-static {v1, p1}, Lio/realm/RealmSchema;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    iget-object v1, p0, Lio/realm/RealmSchema;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p0, Lio/realm/RealmSchema;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lio/realm/RealmSchema;->c()Ljava/util/Set;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    .line 94
    invoke-virtual {v0}, Lio/realm/RealmObjectSchema;->a()V

    goto :goto_0

    .line 96
    :cond_0
    iget-wide v0, p0, Lio/realm/RealmSchema;->h:J

    invoke-static {v0, v1}, Lio/realm/RealmSchema;->nativeClose(J)V

    .line 98
    :cond_1
    return-void
.end method

.method c(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;)",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lio/realm/RealmSchema;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    .line 308
    if-nez v0, :cond_2

    .line 309
    invoke-static {p1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 310
    invoke-static {v1, p1}, Lio/realm/RealmSchema;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    iget-object v0, p0, Lio/realm/RealmSchema;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema;

    .line 314
    :cond_0
    if-nez v0, :cond_1

    .line 315
    invoke-virtual {p0, p1}, Lio/realm/RealmSchema;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 316
    new-instance v0, Lio/realm/RealmObjectSchema;

    iget-object v3, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v4, p0, Lio/realm/RealmSchema;->a:Lio/realm/internal/b;

    invoke-virtual {v4, v1}, Lio/realm/internal/b;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/internal/c;->c()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/b;Lio/realm/internal/Table;Ljava/util/Map;)V

    .line 317
    iget-object v2, p0, Lio/realm/RealmSchema;->e:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_1
    invoke-static {v1, p1}, Lio/realm/RealmSchema;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p0, Lio/realm/RealmSchema;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_2
    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lio/realm/RealmObjectSchema;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    if-nez v1, :cond_1

    .line 133
    iget-wide v2, p0, Lio/realm/RealmSchema;->h:J

    invoke-static {v2, v3}, Lio/realm/RealmSchema;->nativeGetAll(J)[J

    move-result-object v2

    .line 134
    new-instance v1, Ljava/util/LinkedHashSet;

    array-length v3, v2

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 135
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 136
    new-instance v3, Lio/realm/RealmObjectSchema;

    aget-wide v4, v2, v0

    invoke-direct {v3, v4, v5}, Lio/realm/RealmObjectSchema;-><init>(J)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 151
    :goto_1
    return-object v0

    .line 140
    :cond_1
    iget-object v1, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v1, v1, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/SharedRealm;->g()J

    move-result-wide v2

    long-to-int v2, v2

    .line 141
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 142
    :goto_2
    if-ge v0, v2, :cond_3

    .line 143
    iget-object v3, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v3, v3, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v3, v0}, Lio/realm/internal/SharedRealm;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-static {v3}, Lio/realm/internal/Table;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 142
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 147
    :cond_2
    iget-object v4, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v4, v4, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v4, v3}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    .line 148
    new-instance v4, Lio/realm/RealmObjectSchema$a;

    invoke-direct {v4, v3}, Lio/realm/RealmObjectSchema$a;-><init>(Lio/realm/internal/Table;)V

    .line 149
    new-instance v5, Lio/realm/RealmObjectSchema;

    iget-object v6, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    invoke-direct {v5, v6, v3, v4}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/b;Lio/realm/internal/Table;Ljava/util/Map;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object v0, v1

    .line 151
    goto :goto_1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lio/realm/RealmSchema;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method d(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 4

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    iget-object v0, p0, Lio/realm/RealmSchema;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    .line 276
    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist in this Realm."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    iget-object v0, p0, Lio/realm/RealmSchema;->g:Lio/realm/b;

    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 281
    iget-object v2, p0, Lio/realm/RealmSchema;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_1
    return-object v0
.end method
