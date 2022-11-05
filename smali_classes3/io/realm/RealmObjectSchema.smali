.class public Lio/realm/RealmObjectSchema;
.super Ljava/lang/Object;
.source "RealmObjectSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmObjectSchema$a;,
        Lio/realm/RealmObjectSchema$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/realm/RealmObjectSchema$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/realm/RealmObjectSchema$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lio/realm/internal/Table;

.field private final d:Lio/realm/b;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    .line 41
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/Byte;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    const-class v1, [B

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lio/realm/RealmObjectSchema;->b:Ljava/util/Map;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v4}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/realm/RealmObjectSchema;->c:Ljava/util/Map;

    .line 63
    sget-object v0, Lio/realm/RealmObjectSchema;->c:Ljava/util/Map;

    const-class v1, Lio/realm/u;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lio/realm/RealmObjectSchema;->c:Ljava/util/Map;

    const-class v1, Lio/realm/q;

    new-instance v2, Lio/realm/RealmObjectSchema$b;

    sget-object v3, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    invoke-direct {v2, v3, v5}, Lio/realm/RealmObjectSchema$b;-><init>(Lio/realm/RealmFieldType;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v0, p0, Lio/realm/RealmObjectSchema;->d:Lio/realm/b;

    .line 102
    iput-object v0, p0, Lio/realm/RealmObjectSchema;->a:Lio/realm/internal/Table;

    .line 103
    iput-object v0, p0, Lio/realm/RealmObjectSchema;->e:Ljava/util/Map;

    .line 104
    iput-wide p1, p0, Lio/realm/RealmObjectSchema;->f:J

    .line 105
    return-void
.end method

.method constructor <init>(Lio/realm/b;Lio/realm/internal/Table;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/b;",
            "Lio/realm/internal/Table;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lio/realm/RealmObjectSchema;->d:Lio/realm/b;

    .line 81
    iput-object p2, p0, Lio/realm/RealmObjectSchema;->a:Lio/realm/internal/Table;

    .line 82
    iput-object p3, p0, Lio/realm/RealmObjectSchema;->e:Ljava/util/Map;

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/RealmObjectSchema;->f:J

    .line 84
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v0, p0, Lio/realm/RealmObjectSchema;->d:Lio/realm/b;

    .line 95
    iput-object v0, p0, Lio/realm/RealmObjectSchema;->a:Lio/realm/internal/Table;

    .line 96
    iput-object v0, p0, Lio/realm/RealmObjectSchema;->e:Ljava/util/Map;

    .line 97
    invoke-static {p1}, Lio/realm/RealmObjectSchema;->nativeCreateRealmObjectSchema(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmObjectSchema;->f:J

    .line 98
    return-void
.end method

.method private a(Lio/realm/RealmFieldType;[Lio/realm/RealmFieldType;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 728
    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 729
    aget-object v2, p2, v0

    if-ne v2, p1, :cond_1

    .line 730
    const/4 v1, 0x1

    .line 733
    :cond_0
    return v1

    .line 728
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private d()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lio/realm/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->d:Lio/realm/b;

    if-nez v0, :cond_0

    .line 275
    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->f:J

    invoke-static {v0, v1}, Lio/realm/RealmObjectSchema;->nativeGetProperties(J)[J

    move-result-object v1

    .line 276
    new-instance v2, Ljava/util/LinkedHashSet;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 277
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 278
    new-instance v3, Lio/realm/Property;

    aget-wide v4, v1, v0

    invoke-direct {v3, v4, v5}, Lio/realm/Property;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not possible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_1
    return-object v2
.end method

.method static native nativeAddProperty(JJ)V
.end method

.method static native nativeClose(J)V
.end method

.method static native nativeCreateRealmObjectSchema(Ljava/lang/String;)J
.end method

.method static native nativeGetClassName(J)Ljava/lang/String;
.end method

.method static native nativeGetProperties(J)[J
.end method


# virtual methods
.method protected a(Lio/realm/Property;)Lio/realm/RealmObjectSchema;
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->d:Lio/realm/b;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Don\'t use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->f:J

    invoke-virtual {p1}, Lio/realm/Property;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/RealmObjectSchema;->nativeAddProperty(JJ)V

    .line 270
    return-object p0
.end method

.method a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 112
    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0}, Lio/realm/RealmObjectSchema;->d()Ljava/util/Set;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/Property;

    .line 115
    invoke-virtual {v0}, Lio/realm/Property;->b()V

    goto :goto_0

    .line 117
    :cond_0
    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->f:J

    invoke-static {v0, v1}, Lio/realm/RealmObjectSchema;->nativeClose(J)V

    .line 119
    :cond_1
    return-void
.end method

.method varargs a(Ljava/lang/String;[Lio/realm/RealmFieldType;)[J
    .locals 10

    .prologue
    .line 676
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty fieldname must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 680
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal field name. It cannot start or end with a \'.\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_3
    iget-object v2, p0, Lio/realm/RealmObjectSchema;->a:Lio/realm/internal/Table;

    .line 683
    if-eqz p2, :cond_4

    array-length v0, p2

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 684
    :goto_0
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 686
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 687
    array-length v1, v4

    new-array v3, v1, [J

    .line 688
    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_8

    .line 689
    aget-object v5, v4, v1

    invoke-virtual {v2, v5}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 690
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    .line 691
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v4, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not refer to a class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 693
    :cond_5
    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v5

    .line 694
    sget-object v8, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v5, v8, :cond_6

    sget-object v8, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-ne v5, v8, :cond_7

    .line 695
    :cond_6
    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->e(J)Lio/realm/internal/Table;

    move-result-object v2

    .line 696
    aput-wide v6, v3, v1

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 698
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v4, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not refer to a class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_8
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v4, v1

    .line 704
    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 705
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aput-wide v6, v3, v5

    .line 706
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_9

    .line 707
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a field name in class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/realm/RealmObjectSchema;->a(Lio/realm/RealmFieldType;[Lio/realm/RealmFieldType;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field \'%s\': type mismatch."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v0, v3

    .line 723
    :goto_2
    return-object v0

    .line 714
    :cond_b
    invoke-virtual {p0, p1}, Lio/realm/RealmObjectSchema;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 715
    if-nez v1, :cond_c

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field \'%s\' does not exist."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 719
    if-eqz v0, :cond_d

    invoke-direct {p0, v2, p2}, Lio/realm/RealmObjectSchema;->a(Lio/realm/RealmFieldType;[Lio/realm/RealmFieldType;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 720
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field \'%s\': type mismatch. Was %s, expected %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    .line 721
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 720
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    goto :goto_2
.end method

.method protected b()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->f:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->d:Lio/realm/b;

    if-nez v0, :cond_0

    .line 138
    iget-wide v0, p0, Lio/realm/RealmObjectSchema;->f:J

    invoke-static {v0, v1}, Lio/realm/RealmObjectSchema;->nativeGetClassName(J)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/RealmObjectSchema;->a:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
