.class public Lio/realm/internal/UncheckedRow;
.super Ljava/lang/Object;
.source "UncheckedRow.java"

# interfaces
.implements Lio/realm/internal/g;
.implements Lio/realm/internal/n;


# static fields
.field private static final d:J


# instance fields
.field final a:Lio/realm/internal/d;

.field private final b:Lio/realm/internal/Table;

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lio/realm/internal/UncheckedRow;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/UncheckedRow;->d:J

    return-void
.end method

.method constructor <init>(Lio/realm/internal/UncheckedRow;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lio/realm/internal/UncheckedRow;->a:Lio/realm/internal/d;

    iput-object v0, p0, Lio/realm/internal/UncheckedRow;->a:Lio/realm/internal/d;

    .line 50
    iget-object v0, p1, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    iput-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 51
    iget-wide v0, p1, Lio/realm/internal/UncheckedRow;->c:J

    iput-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    .line 53
    return-void
.end method

.method constructor <init>(Lio/realm/internal/d;Lio/realm/internal/Table;J)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/realm/internal/UncheckedRow;->a:Lio/realm/internal/d;

    .line 41
    iput-object p2, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    .line 42
    iput-wide p3, p0, Lio/realm/internal/UncheckedRow;->c:J

    .line 43
    invoke-virtual {p1, p0}, Lio/realm/internal/d;->a(Lio/realm/internal/g;)V

    .line 44
    return-void
.end method

.method static b(Lio/realm/internal/d;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2, p3}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    move-result-wide v0

    .line 75
    new-instance v2, Lio/realm/internal/UncheckedRow;

    invoke-direct {v2, p0, p1, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/d;Lio/realm/internal/Table;J)V

    return-object v2
.end method

.method static c(Lio/realm/internal/d;Lio/realm/internal/Table;J)Lio/realm/internal/UncheckedRow;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lio/realm/internal/UncheckedRow;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/d;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method private static native nativeGetFinalizerPtr()J
.end method


# virtual methods
.method public a(J[B)V
    .locals 7

    .prologue
    .line 247
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->f()V

    .line 248
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetByteArray(JJ[B)V

    .line 249
    return-void
.end method

.method public getBinaryByteArray(J)[B
    .locals 3

    .prologue
    .line 171
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetByteArray(JJ)[B

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(J)Z
    .locals 3

    .prologue
    .line 146
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetBoolean(JJ)Z

    move-result v0

    return v0
.end method

.method public getColumnCount()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeGetColumnCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColumnIndex(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Column name can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/UncheckedRow;->nativeGetColumnIndex(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColumnName(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetColumnName(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .locals 3

    .prologue
    .line 124
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetColumnType(JJ)I

    move-result v0

    invoke-static {v0}, Lio/realm/RealmFieldType;->fromNativeValue(I)Lio/realm/RealmFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getDate(J)Ljava/util/Date;
    .locals 5

    .prologue
    .line 161
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v2, v3, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetTimestamp(JJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDouble(J)D
    .locals 3

    .prologue
    .line 156
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetDouble(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(J)F
    .locals 3

    .prologue
    .line 151
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetFloat(JJ)F

    move-result v0

    return v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeGetIndex(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLink(J)J
    .locals 3

    .prologue
    .line 176
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetLink(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLinkList(J)Lio/realm/internal/LinkView;
    .locals 9

    .prologue
    .line 186
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetLinkView(JJ)J

    move-result-wide v6

    .line 187
    new-instance v1, Lio/realm/internal/LinkView;

    iget-object v2, p0, Lio/realm/internal/UncheckedRow;->a:Lio/realm/internal/d;

    iget-object v3, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/LinkView;-><init>(Lio/realm/internal/d;Lio/realm/internal/Table;JJ)V

    return-object v1
.end method

.method public getLong(J)J
    .locals 3

    .prologue
    .line 141
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .prologue
    .line 62
    sget-wide v0, Lio/realm/internal/UncheckedRow;->d:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    return-wide v0
.end method

.method public getString(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeGetString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    return-object v0
.end method

.method public isAttached()Z
    .locals 4

    .prologue
    .line 291
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1}, Lio/realm/internal/UncheckedRow;->nativeIsAttached(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(J)Z
    .locals 3

    .prologue
    .line 265
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNull(JJ)Z

    move-result v0

    return v0
.end method

.method public isNullLink(J)Z
    .locals 3

    .prologue
    .line 181
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeIsNullLink(JJ)Z

    move-result v0

    return v0
.end method

.method protected native nativeGetBoolean(JJ)Z
.end method

.method protected native nativeGetByteArray(JJ)[B
.end method

.method protected native nativeGetColumnCount(J)J
.end method

.method protected native nativeGetColumnIndex(JLjava/lang/String;)J
.end method

.method protected native nativeGetColumnName(JJ)Ljava/lang/String;
.end method

.method protected native nativeGetColumnType(JJ)I
.end method

.method protected native nativeGetDouble(JJ)D
.end method

.method protected native nativeGetFloat(JJ)F
.end method

.method protected native nativeGetIndex(J)J
.end method

.method protected native nativeGetLink(JJ)J
.end method

.method protected native nativeGetLinkView(JJ)J
.end method

.method protected native nativeGetLong(JJ)J
.end method

.method protected native nativeGetString(JJ)Ljava/lang/String;
.end method

.method protected native nativeGetTimestamp(JJ)J
.end method

.method protected native nativeHasColumn(JLjava/lang/String;)Z
.end method

.method protected native nativeIsAttached(J)Z
.end method

.method protected native nativeIsNull(JJ)Z
.end method

.method protected native nativeIsNullLink(JJ)Z
.end method

.method protected native nativeNullifyLink(JJ)V
.end method

.method protected native nativeSetBoolean(JJZ)V
.end method

.method protected native nativeSetByteArray(JJ[B)V
.end method

.method protected native nativeSetDouble(JJD)V
.end method

.method protected native nativeSetFloat(JJF)V
.end method

.method protected native nativeSetLink(JJJ)V
.end method

.method protected native nativeSetLong(JJJ)V
.end method

.method protected native nativeSetNull(JJ)V
.end method

.method protected native nativeSetString(JJLjava/lang/String;)V
.end method

.method protected native nativeSetTimestamp(JJJ)V
.end method

.method public nullifyLink(J)V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->f()V

    .line 260
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeNullifyLink(JJ)V

    .line 261
    return-void
.end method

.method public setBoolean(JZ)V
    .locals 7

    .prologue
    .line 201
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->f()V

    .line 202
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetBoolean(JJZ)V

    .line 203
    return-void
.end method

.method public setDate(JLjava/util/Date;)V
    .locals 9

    .prologue
    .line 219
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->f()V

    .line 220
    if-nez p3, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null Date is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 224
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetTimestamp(JJJ)V

    .line 225
    return-void
.end method

.method public setFloat(JF)V
    .locals 7

    .prologue
    .line 207
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->f()V

    .line 208
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetFloat(JJF)V

    .line 209
    return-void
.end method

.method public setLink(JJ)V
    .locals 9

    .prologue
    .line 253
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->f()V

    .line 254
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetLink(JJJ)V

    .line 255
    return-void
.end method

.method public setLong(JJ)V
    .locals 9

    .prologue
    .line 194
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->f()V

    .line 195
    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getIndex()J

    move-result-wide v4

    move-wide v2, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->a(JJJ)V

    .line 196
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/UncheckedRow;->nativeSetLong(JJJ)V

    .line 197
    return-void
.end method

.method public setNull(J)V
    .locals 5

    .prologue
    .line 275
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->f()V

    .line 276
    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getIndex()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lio/realm/internal/Table;->a(JJ)V

    .line 277
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeSetNull(JJ)V

    .line 278
    return-void
.end method

.method public setString(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 235
    iget-object v0, p0, Lio/realm/internal/UncheckedRow;->b:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->f()V

    .line 236
    if-nez p3, :cond_0

    .line 237
    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getIndex()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lio/realm/internal/Table;->a(JJ)V

    .line 238
    iget-wide v0, p0, Lio/realm/internal/UncheckedRow;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/realm/internal/UncheckedRow;->nativeSetNull(JJ)V

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/internal/UncheckedRow;->getIndex()J

    move-result-wide v4

    move-wide v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->a(JJLjava/lang/String;)V

    .line 241
    iget-wide v2, p0, Lio/realm/internal/UncheckedRow;->c:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/UncheckedRow;->nativeSetString(JJLjava/lang/String;)V

    goto :goto_0
.end method
