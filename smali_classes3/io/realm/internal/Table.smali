.class public Lio/realm/internal/Table;
.super Ljava/lang/Object;
.source "Table.java"

# interfaces
.implements Lio/realm/internal/g;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final d:J


# instance fields
.field final b:Lio/realm/internal/d;

.field private c:J

.field private final e:Lio/realm/internal/SharedRealm;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lio/realm/internal/Util;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/realm/internal/Table;->a:Ljava/lang/String;

    .line 62
    invoke-static {}, Lio/realm/internal/Table;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/Table;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/internal/Table;->f:J

    .line 72
    new-instance v0, Lio/realm/internal/d;

    invoke-direct {v0}, Lio/realm/internal/d;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Table;->b:Lio/realm/internal/d;

    .line 76
    invoke-virtual {p0}, Lio/realm/internal/Table;->createNative()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Table;->c:J

    .line 77
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Out of native memory."

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/SharedRealm;

    .line 81
    iget-object v0, p0, Lio/realm/internal/Table;->b:Lio/realm/internal/d;

    invoke-virtual {v0, p0}, Lio/realm/internal/d;->a(Lio/realm/internal/g;)V

    .line 82
    return-void
.end method

.method constructor <init>(Lio/realm/internal/SharedRealm;J)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/internal/Table;->f:J

    .line 89
    iget-object v0, p1, Lio/realm/internal/SharedRealm;->f:Lio/realm/internal/d;

    iput-object v0, p0, Lio/realm/internal/Table;->b:Lio/realm/internal/d;

    .line 90
    iput-object p1, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/SharedRealm;

    .line 91
    iput-wide p2, p0, Lio/realm/internal/Table;->c:J

    .line 92
    iget-object v0, p0, Lio/realm/internal/Table;->b:Lio/realm/internal/d;

    invoke-virtual {v0, p0}, Lio/realm/internal/d;->a(Lio/realm/internal/g;)V

    .line 93
    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;J)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p1, Lio/realm/internal/Table;->e:Lio/realm/internal/SharedRealm;

    invoke-direct {p0, v0, p2, p3}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/SharedRealm;J)V

    .line 86
    return-void
.end method

.method public static a(Lio/realm/internal/SharedRealm;)Z
    .locals 4

    .prologue
    .line 889
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    :cond_0
    invoke-static {}, Lio/realm/internal/Table;->l()V

    .line 892
    :cond_1
    const-string v0, "pk"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 893
    const/4 v0, 0x0

    .line 896
    :goto_0
    return v0

    .line 895
    :cond_2
    const-string v0, "pk"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 896
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->f()J

    move-result-wide v2

    iget-wide v0, v0, Lio/realm/internal/Table;->c:J

    invoke-static {v2, v3, v0, v1}, Lio/realm/internal/Table;->nativeMigratePrimaryKeyTableIfNeeded(JJ)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 669
    new-instance v0, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lio/realm/internal/SharedRealm;)Z
    .locals 2

    .prologue
    .line 900
    const-string v0, "pk"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    const/4 v0, 0x0

    .line 904
    :goto_0
    return v0

    .line 903
    :cond_0
    const-string v0, "pk"

    invoke-virtual {p0, v0}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 904
    iget-wide v0, v0, Lio/realm/internal/Table;->c:J

    invoke-static {v0, v1}, Lio/realm/internal/Table;->nativePrimaryKeyTableNeedsMigration(J)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1156
    sget-object v0, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1171
    sget-object v0, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1174
    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lio/realm/internal/Table;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Column names are currently limited to max 63 characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    return-void
.end method

.method private j()Lio/realm/internal/Table;
    .locals 6

    .prologue
    .line 858
    iget-object v0, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/SharedRealm;

    if-nez v0, :cond_1

    .line 859
    const/4 v0, 0x0

    .line 869
    :cond_0
    :goto_0
    return-object v0

    .line 861
    :cond_1
    iget-object v0, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/SharedRealm;

    const-string v1, "pk"

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm;->b(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Lio/realm/internal/Table;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 863
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()V

    .line 864
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "pk_table"

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;)J

    move-result-wide v2

    .line 865
    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->i(J)V

    .line 866
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "pk_property"

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;)J

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 931
    invoke-virtual {p0}, Lio/realm/internal/Table;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no primary key defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_0
    return-void
.end method

.method private static l()V
    .locals 2

    .prologue
    .line 1136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changing Realm data can only be done from inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l(J)Z
    .locals 3

    .prologue
    .line 576
    invoke-virtual {p0}, Lio/realm/internal/Table;->c()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m(J)Z
    .locals 3

    .prologue
    .line 613
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lio/realm/internal/Table;->c()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAddColumn(JILjava/lang/String;Z)J
.end method

.method private native nativeAddColumnLink(JILjava/lang/String;J)J
.end method

.method public static native nativeAddEmptyRow(JJ)J
.end method

.method private native nativeAddSearchIndex(JJ)V
.end method

.method private native nativeAverageDouble(JJ)D
.end method

.method private native nativeAverageFloat(JJ)D
.end method

.method private native nativeAverageInt(JJ)D
.end method

.method private native nativeClear(J)V
.end method

.method private native nativeConvertColumnToNotNullable(JJ)V
.end method

.method private native nativeConvertColumnToNullable(JJ)V
.end method

.method private native nativeCountDouble(JJD)J
.end method

.method private native nativeCountFloat(JJF)J
.end method

.method private native nativeCountLong(JJJ)J
.end method

.method private native nativeCountString(JJLjava/lang/String;)J
.end method

.method private native nativeFindFirstBool(JJZ)J
.end method

.method private native nativeFindFirstDouble(JJD)J
.end method

.method private native nativeFindFirstFloat(JJF)J
.end method

.method public static native nativeFindFirstInt(JJJ)J
.end method

.method public static native nativeFindFirstNull(JJ)J
.end method

.method public static native nativeFindFirstString(JJLjava/lang/String;)J
.end method

.method private native nativeFindFirstTimestamp(JJJ)J
.end method

.method private native nativeGetBoolean(JJJ)Z
.end method

.method private native nativeGetByteArray(JJJ)[B
.end method

.method private native nativeGetColumnCount(J)J
.end method

.method private native nativeGetColumnIndex(JLjava/lang/String;)J
.end method

.method private native nativeGetColumnName(JJ)Ljava/lang/String;
.end method

.method private native nativeGetColumnType(JJ)I
.end method

.method private native nativeGetDouble(JJJ)D
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeGetFloat(JJJ)F
.end method

.method private native nativeGetLink(JJJ)J
.end method

.method private native nativeGetLinkTarget(JJ)J
.end method

.method public static native nativeGetLinkView(JJJ)J
.end method

.method private native nativeGetLong(JJJ)J
.end method

.method private native nativeGetName(J)Ljava/lang/String;
.end method

.method private native nativeGetSortedViewMulti(J[J[Z)J
.end method

.method private native nativeGetString(JJJ)Ljava/lang/String;
.end method

.method private native nativeGetTimestamp(JJJ)J
.end method

.method private native nativeHasSameSchema(JJ)Z
.end method

.method private native nativeHasSearchIndex(JJ)Z
.end method

.method private native nativeIsColumnNullable(JJ)Z
.end method

.method private native nativeIsNull(JJJ)Z
.end method

.method private native nativeIsNullLink(JJJ)Z
.end method

.method private native nativeIsValid(J)Z
.end method

.method private native nativeLowerBoundInt(JJJ)J
.end method

.method private native nativeMaximumDouble(JJ)D
.end method

.method private native nativeMaximumFloat(JJ)F
.end method

.method private native nativeMaximumInt(JJ)J
.end method

.method private native nativeMaximumTimestamp(JJ)J
.end method

.method private static native nativeMigratePrimaryKeyTableIfNeeded(JJ)Z
.end method

.method private native nativeMinimumDouble(JJ)D
.end method

.method private native nativeMinimumFloat(JJ)F
.end method

.method private native nativeMinimumInt(JJ)J
.end method

.method private native nativeMinimumTimestamp(JJ)J
.end method

.method private native nativeMoveLastOver(JJ)V
.end method

.method public static native nativeNullifyLink(JJJ)V
.end method

.method private native nativePivot(JJJIJ)V
.end method

.method private static native nativePrimaryKeyTableNeedsMigration(J)Z
.end method

.method private native nativeRemove(JJ)V
.end method

.method private native nativeRemoveColumn(JJ)V
.end method

.method private native nativeRemoveLast(J)V
.end method

.method private native nativeRemoveSearchIndex(JJ)V
.end method

.method private native nativeRenameColumn(JJLjava/lang/String;)V
.end method

.method public static native nativeSetBoolean(JJJZZ)V
.end method

.method public static native nativeSetByteArray(JJJ[BZ)V
.end method

.method public static native nativeSetDouble(JJJDZ)V
.end method

.method public static native nativeSetFloat(JJJFZ)V
.end method

.method public static native nativeSetLink(JJJJZ)V
.end method

.method public static native nativeSetLong(JJJJZ)V
.end method

.method public static native nativeSetLongUnique(JJJJ)V
.end method

.method public static native nativeSetNull(JJJZ)V
.end method

.method public static native nativeSetNullUnique(JJJ)V
.end method

.method private native nativeSetPrimaryKey(JJLjava/lang/String;)J
.end method

.method public static native nativeSetString(JJJLjava/lang/String;Z)V
.end method

.method public static native nativeSetStringUnique(JJJLjava/lang/String;)V
.end method

.method public static native nativeSetTimestamp(JJJJZ)V
.end method

.method private native nativeSize(J)J
.end method

.method private native nativeSumDouble(JJ)D
.end method

.method private native nativeSumFloat(JJ)D
.end method

.method private native nativeSumInt(JJ)J
.end method

.method private native nativeToJson(J)Ljava/lang/String;
.end method

.method private native nativeUpperBoundInt(JJJ)J
.end method

.method private native nativeVersion(J)J
.end method

.method private native nativeWhere(J)J
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JLjava/lang/String;)J
    .locals 3

    .prologue
    .line 1055
    if-nez p3, :cond_0

    .line 1056
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lio/realm/RealmFieldType;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J
    .locals 8

    .prologue
    .line 158
    invoke-direct {p0, p2}, Lio/realm/internal/Table;->e(Ljava/lang/String;)V

    .line 159
    iget-wide v2, p0, Lio/realm/internal/Table;->c:J

    invoke-virtual {p1}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v4

    iget-wide v6, p3, Lio/realm/internal/Table;->c:J

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/Table;->nativeAddColumnLink(JILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J
    .locals 7

    .prologue
    .line 138
    invoke-direct {p0, p2}, Lio/realm/internal/Table;->e(Ljava/lang/String;)V

    .line 139
    iget-wide v2, p0, Lio/realm/internal/Table;->c:J

    invoke-virtual {p1}, Lio/realm/RealmFieldType;->getNativeValue()I

    move-result v4

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/Table;->nativeAddColumn(JILjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 392
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/realm/internal/Table;->a(Ljava/lang/Object;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/Object;Z)J
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v8, -0x1

    .line 404
    if-eqz p2, :cond_0

    .line 405
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()V

    .line 406
    invoke-direct {p0}, Lio/realm/internal/Table;->k()V

    .line 409
    :cond_0
    invoke-virtual {p0}, Lio/realm/internal/Table;->c()J

    move-result-wide v2

    .line 410
    invoke-virtual {p0, v2, v3}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 414
    if-nez p1, :cond_3

    .line 415
    sget-object v1, Lio/realm/internal/Table$1;->a:[I

    invoke-virtual {v0}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 430
    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :pswitch_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v2, v3}, Lio/realm/internal/Table;->k(J)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    .line 419
    const-string v1, "null"

    invoke-static {v1}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    .line 421
    :cond_1
    iget-wide v4, p0, Lio/realm/internal/Table;->c:J

    invoke-static {v4, v5, v10, v11}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 422
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-ne v0, v1, :cond_2

    .line 423
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetStringUnique(JJJLjava/lang/String;)V

    .line 464
    :goto_0
    return-wide v4

    .line 425
    :cond_2
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNullUnique(JJJ)V

    goto :goto_0

    .line 434
    :cond_3
    sget-object v1, Lio/realm/internal/Table$1;->a:[I

    invoke-virtual {v0}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_1

    .line 461
    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot check for duplicate rows for unsupported primary key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :pswitch_1
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_4

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Primary key value is not a String: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_4
    if-eqz p2, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_5

    .line 440
    invoke-static {p1}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    .line 442
    :cond_5
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-static {v0, v1, v10, v11}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 443
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetStringUnique(JJJLjava/lang/String;)V

    goto :goto_0

    .line 449
    :pswitch_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 453
    if-eqz p2, :cond_6

    invoke-virtual {p0, v2, v3, v6, v7}, Lio/realm/internal/Table;->b(JJ)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_6

    .line 454
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    .line 456
    :cond_6
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-static {v0, v1, v10, v11}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 457
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLongUnique(JJJJ)V

    goto/16 :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Primary key value is not a long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 434
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Column name can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1, p1}, Lio/realm/internal/Table;->nativeGetColumnIndex(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method a(JJ)V
    .locals 5

    .prologue
    .line 645
    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->l(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/Table;->c(J)Lio/realm/RealmFieldType;

    move-result-object v0

    .line 647
    sget-object v1, Lio/realm/internal/Table$1;->a:[I

    invoke-virtual {v0}, Lio/realm/RealmFieldType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 650
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lio/realm/internal/Table;->k(J)J

    move-result-wide v0

    .line 651
    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 652
    const-string v0, "null"

    invoke-static {v0}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(JJFZ)V
    .locals 9

    .prologue
    .line 777
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()V

    .line 778
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetFloat(JJJFZ)V

    .line 779
    return-void
.end method

.method a(JJJ)V
    .locals 5

    .prologue
    .line 635
    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->l(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p0, p1, p2, p5, p6}, Lio/realm/internal/Table;->b(JJ)J

    move-result-wide v0

    .line 637
    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 638
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    .line 641
    :cond_0
    return-void
.end method

.method public a(JJJZ)V
    .locals 9

    .prologue
    .line 766
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()V

    .line 767
    invoke-virtual/range {p0 .. p6}, Lio/realm/internal/Table;->a(JJJ)V

    .line 768
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 769
    return-void
.end method

.method a(JJLjava/lang/String;)V
    .locals 5

    .prologue
    .line 626
    invoke-direct {p0, p1, p2}, Lio/realm/internal/Table;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p0, p1, p2, p5}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v0

    .line 628
    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 629
    invoke-static {p5}, Lio/realm/internal/Table;->b(Ljava/lang/Object;)V

    .line 632
    :cond_0
    return-void
.end method

.method public a(JJLjava/lang/String;Z)V
    .locals 9

    .prologue
    .line 801
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()V

    .line 802
    if-nez p5, :cond_0

    .line 803
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/realm/internal/Table;->a(JJ)V

    .line 804
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p6

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 809
    :goto_0
    return-void

    .line 806
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lio/realm/internal/Table;->a(JJLjava/lang/String;)V

    .line 807
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public a(JJLjava/util/Date;Z)V
    .locals 9

    .prologue
    .line 787
    if-nez p5, :cond_0

    .line 788
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null Date is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_0
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()V

    .line 790
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-wide v2, p1

    move-wide v4, p3

    move v8, p6

    invoke-static/range {v0 .. v8}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 791
    return-void
.end method

.method public a(JJZ)V
    .locals 7

    .prologue
    .line 822
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()V

    .line 823
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/realm/internal/Table;->a(JJ)V

    .line 824
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 825
    return-void
.end method

.method public a(JJZZ)V
    .locals 9

    .prologue
    .line 772
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()V

    .line 773
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 774
    return-void
.end method

.method public a(J)Z
    .locals 3

    .prologue
    .line 252
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeIsColumnNullable(JJ)Z

    move-result v0

    return v0
.end method

.method public a(Lio/realm/internal/Table;)Z
    .locals 4

    .prologue
    .line 1146
    if-nez p1, :cond_0

    .line 1147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    iget-wide v2, p1, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeHasSameSchema(JJ)Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 308
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeGetColumnCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(JJ)J
    .locals 7

    .prologue
    .line 1032
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(JJJZ)V
    .locals 9

    .prologue
    .line 817
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()V

    .line 818
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 819
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 846
    invoke-direct {p0}, Lio/realm/internal/Table;->j()Lio/realm/internal/Table;

    move-result-object v0

    .line 847
    if-nez v0, :cond_0

    .line 848
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Primary keys are only supported if Table is part of a Group"

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_0
    iget-wide v2, v0, Lio/realm/internal/Table;->c:J

    iget-wide v4, p0, Lio/realm/internal/Table;->c:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/Table;->nativeSetPrimaryKey(JJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Table;->f:J

    .line 851
    return-void
.end method

.method public c()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x2

    .line 585
    iget-wide v2, p0, Lio/realm/internal/Table;->f:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, p0, Lio/realm/internal/Table;->f:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 586
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/Table;->f:J

    .line 602
    :cond_1
    :goto_0
    return-wide v0

    .line 588
    :cond_2
    invoke-direct {p0}, Lio/realm/internal/Table;->j()Lio/realm/internal/Table;

    move-result-object v2

    .line 589
    if-eqz v2, :cond_1

    .line 593
    invoke-virtual {p0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/realm/internal/Table;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 594
    invoke-virtual {v2, v4, v5, v3}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v4

    .line 595
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 596
    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->f(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/UncheckedRow;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-virtual {p0, v0}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Table;->f:J

    .line 602
    :goto_1
    iget-wide v0, p0, Lio/realm/internal/Table;->f:J

    goto :goto_0

    .line 599
    :cond_3
    iput-wide v0, p0, Lio/realm/internal/Table;->f:J

    goto :goto_1
.end method

.method public c(J)Lio/realm/RealmFieldType;
    .locals 3

    .prologue
    .line 341
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetColumnType(JJ)I

    move-result v0

    invoke-static {v0}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object v0

    return-object v0
.end method

.method protected native createNative()J
.end method

.method public d(J)V
    .locals 3

    .prologue
    .line 367
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()V

    .line 368
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeMoveLastOver(JJ)V

    .line 369
    return-void
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 622
    invoke-virtual {p0}, Lio/realm/internal/Table;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(J)Lio/realm/internal/Table;
    .locals 5

    .prologue
    .line 716
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeGetLinkTarget(JJ)J

    move-result-wide v0

    .line 718
    new-instance v2, Lio/realm/internal/Table;

    iget-object v3, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/SharedRealm;

    invoke-direct {v2, v3, v0, v1}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/SharedRealm;J)V

    .line 719
    return-object v2
.end method

.method e()Z
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/Table;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(J)Lio/realm/internal/UncheckedRow;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lio/realm/internal/Table;->b:Lio/realm/internal/d;

    invoke-static {v0, p0, p1, p2}, Lio/realm/internal/UncheckedRow;->b(Lio/realm/internal/d;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 1

    .prologue
    .line 925
    invoke-virtual {p0}, Lio/realm/internal/Table;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    invoke-static {}, Lio/realm/internal/Table;->l()V

    .line 928
    :cond_0
    return-void
.end method

.method public g()Lio/realm/internal/TableQuery;
    .locals 4

    .prologue
    .line 1026
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeWhere(J)J

    move-result-wide v0

    .line 1028
    new-instance v2, Lio/realm/internal/TableQuery;

    iget-object v3, p0, Lio/realm/internal/Table;->b:Lio/realm/internal/d;

    invoke-direct {v2, v3, p0, v0, v1}, Lio/realm/internal/TableQuery;-><init>(Lio/realm/internal/d;Lio/realm/internal/Table;J)V

    return-object v2
.end method

.method public g(J)Lio/realm/internal/UncheckedRow;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lio/realm/internal/Table;->b:Lio/realm/internal/d;

    invoke-static {v0, p0, p1, p2}, Lio/realm/internal/UncheckedRow;->c(Lio/realm/internal/d;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .prologue
    .line 102
    sget-wide v0, Lio/realm/internal/Table;->d:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    return-wide v0
.end method

.method public h(J)Lio/realm/internal/CheckedRow;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lio/realm/internal/Table;->b:Lio/realm/internal/d;

    invoke-static {v0, p0, p1, p2}, Lio/realm/internal/CheckedRow;->a(Lio/realm/internal/d;Lio/realm/internal/Table;J)Lio/realm/internal/CheckedRow;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1097
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeGetName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 1167
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Table;->nativeVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i(J)V
    .locals 3

    .prologue
    .line 828
    invoke-virtual {p0}, Lio/realm/internal/Table;->f()V

    .line 829
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeAddSearchIndex(JJ)V

    .line 830
    return-void
.end method

.method public j(J)Z
    .locals 3

    .prologue
    .line 908
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeHasSearchIndex(JJ)Z

    move-result v0

    return v0
.end method

.method public k(J)J
    .locals 3

    .prologue
    .line 1068
    iget-wide v0, p0, Lio/realm/internal/Table;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method native nativeGetRowPtr(JJ)J
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1105
    invoke-virtual {p0}, Lio/realm/internal/Table;->b()J

    move-result-wide v2

    .line 1106
    invoke-virtual {p0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v0

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "The Table "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1108
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    invoke-virtual {p0}, Lio/realm/internal/Table;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    :cond_0
    invoke-virtual {p0}, Lio/realm/internal/Table;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    invoke-virtual {p0}, Lio/realm/internal/Table;->c()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lio/realm/internal/Table;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 1114
    const-string v4, "has \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' field as a PrimaryKey, and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    :cond_1
    const-string v0, "contains "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1118
    const-string v0, " columns: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    const/4 v0, 0x0

    :goto_0
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_3

    .line 1121
    if-eqz v0, :cond_2

    .line 1122
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    :cond_2
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lio/realm/internal/Table;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1126
    :cond_3
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    const-string v0, " And "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    invoke-virtual {p0}, Lio/realm/internal/Table;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1130
    const-string v0, " rows."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
