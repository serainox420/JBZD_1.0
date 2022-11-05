.class public Lio/realm/internal/j;
.super Ljava/lang/Object;
.source "PendingRow.java"

# interfaces
.implements Lio/realm/internal/n;


# instance fields
.field private a:Lio/realm/internal/Collection;

.field private b:Lio/realm/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/o",
            "<",
            "Lio/realm/internal/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lio/realm/internal/j;->a:Lio/realm/internal/Collection;

    iget-object v1, p0, Lio/realm/internal/j;->b:Lio/realm/o;

    invoke-virtual {v0, p0, v1}, Lio/realm/internal/Collection;->removeListener(Ljava/lang/Object;Lio/realm/o;)V

    .line 225
    iput-object v2, p0, Lio/realm/internal/j;->a:Lio/realm/internal/Collection;

    .line 226
    iput-object v2, p0, Lio/realm/internal/j;->b:Lio/realm/o;

    .line 227
    return-void
.end method


# virtual methods
.method public a()Lio/realm/internal/n;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lio/realm/internal/j;->a:Lio/realm/internal/Collection;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The query has been executed. This \'PendingRow\' is not valid anymore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Lio/realm/internal/j;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The \'frontEnd\' has not been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    iget-object v0, p0, Lio/realm/internal/j;->a:Lio/realm/internal/Collection;

    invoke-virtual {v0}, Lio/realm/internal/Collection;->firstUncheckedRow()Lio/realm/internal/UncheckedRow;

    move-result-object v0

    .line 238
    invoke-direct {p0}, Lio/realm/internal/j;->b()V

    .line 240
    if-nez v0, :cond_3

    .line 241
    sget-object v0, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    .line 243
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-boolean v1, p0, Lio/realm/internal/j;->d:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lio/realm/internal/CheckedRow;->a(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;

    move-result-object v0

    goto :goto_0
.end method

.method public getBinaryByteArray(J)[B
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(J)Z
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()J
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnName(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDate(J)Ljava/util/Date;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDouble(J)D
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloat(J)F
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLink(J)J
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLinkList(J)Lio/realm/internal/LinkView;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(J)J
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public isNull(J)Z
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNullLink(J)Z
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullifyLink(J)V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBoolean(JZ)V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDate(JLjava/util/Date;)V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFloat(JF)V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLink(JJ)V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLong(JJ)V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNull(J)V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setString(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The pending query has not been executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
