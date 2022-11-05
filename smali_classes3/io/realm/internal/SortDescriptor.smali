.class public Lio/realm/internal/SortDescriptor;
.super Ljava/lang/Object;
.source "SortDescriptor.java"


# annotations
.annotation build Lio/realm/internal/KeepMember;
.end annotation


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:[[J

.field private final d:[Z

.field private final e:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Lio/realm/RealmFieldType;

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    aput-object v1, v0, v6

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/internal/SortDescriptor;->a:Ljava/util/List;

    .line 43
    new-array v0, v7, [Lio/realm/RealmFieldType;

    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/internal/SortDescriptor;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lio/realm/internal/Table;[[J[Lio/realm/Sort;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p3, :cond_0

    .line 53
    array-length v0, p3

    new-array v0, v0, [Z

    iput-object v0, p0, Lio/realm/internal/SortDescriptor;->d:[Z

    .line 54
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 55
    iget-object v1, p0, Lio/realm/internal/SortDescriptor;->d:[Z

    aget-object v2, p3, v0

    invoke-virtual {v2}, Lio/realm/Sort;->getValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/SortDescriptor;->d:[Z

    .line 61
    :cond_1
    iput-object p2, p0, Lio/realm/internal/SortDescriptor;->c:[[J

    .line 62
    iput-object p1, p0, Lio/realm/internal/SortDescriptor;->e:Lio/realm/internal/Table;

    .line 63
    return-void
.end method

.method public static a(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/internal/SortDescriptor;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [Lio/realm/Sort;

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lio/realm/internal/SortDescriptor;->a(Lio/realm/internal/Table;[Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/internal/SortDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lio/realm/internal/Table;[Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/internal/SortDescriptor;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 70
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must provide at least one field name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must provide at least one sort order."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_3
    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_4

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of fields and sort orders do not match."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_4
    array-length v0, p1

    new-array v2, v0, [[J

    move v0, v1

    .line 81
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_5

    .line 82
    new-instance v3, Lio/realm/internal/e;

    aget-object v4, p1, v0

    const/4 v5, 0x1

    invoke-direct {v3, p0, v4, v5, v1}, Lio/realm/internal/e;-><init>(Lio/realm/internal/Table;Ljava/lang/String;ZZ)V

    .line 83
    aget-object v4, p1, v0

    invoke-static {v3, v4}, Lio/realm/internal/SortDescriptor;->a(Lio/realm/internal/e;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3}, Lio/realm/internal/e;->a()[J

    move-result-object v3

    aput-object v3, v2, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_5
    new-instance v0, Lio/realm/internal/SortDescriptor;

    invoke-direct {v0, p0, v2, p2}, Lio/realm/internal/SortDescriptor;-><init>(Lio/realm/internal/Table;[[J[Lio/realm/Sort;)V

    return-object v0
.end method

.method private static a(Lio/realm/internal/e;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 110
    sget-object v0, Lio/realm/internal/SortDescriptor;->a:Ljava/util/List;

    invoke-virtual {p0}, Lio/realm/internal/e;->b()Lio/realm/RealmFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sort is not supported on \'%s\' field \'%s\' in \'%s\'."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lio/realm/internal/e;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 111
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    return-void
.end method

.method private getTablePtr()J
    .locals 2
    .annotation build Lio/realm/internal/KeepMember;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lio/realm/internal/SortDescriptor;->e:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method getAscendings()[Z
    .locals 1
    .annotation build Lio/realm/internal/KeepMember;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lio/realm/internal/SortDescriptor;->d:[Z

    return-object v0
.end method

.method getColumnIndices()[[J
    .locals 1
    .annotation build Lio/realm/internal/KeepMember;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lio/realm/internal/SortDescriptor;->c:[[J

    return-object v0
.end method
