.class public final enum Lio/realm/internal/InvalidRow;
.super Ljava/lang/Enum;
.source "InvalidRow.java"

# interfaces
.implements Lio/realm/internal/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/internal/InvalidRow;",
        ">;",
        "Lio/realm/internal/n;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lio/realm/internal/InvalidRow;

.field private static final synthetic a:[Lio/realm/internal/InvalidRow;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lio/realm/internal/InvalidRow;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lio/realm/internal/InvalidRow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Lio/realm/internal/InvalidRow;

    sget-object v1, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    aput-object v1, v0, v2

    sput-object v0, Lio/realm/internal/InvalidRow;->a:[Lio/realm/internal/InvalidRow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private a()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object is no longer managed by Realm. Has it been deleted?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/InvalidRow;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lio/realm/internal/InvalidRow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/InvalidRow;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/InvalidRow;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lio/realm/internal/InvalidRow;->a:[Lio/realm/internal/InvalidRow;

    invoke-virtual {v0}, [Lio/realm/internal/InvalidRow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/InvalidRow;

    return-object v0
.end method


# virtual methods
.method public getBinaryByteArray(J)[B
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getBoolean(J)Z
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getColumnCount()J
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)J
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getColumnName(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getColumnType(J)Lio/realm/RealmFieldType;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getDate(J)Ljava/util/Date;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getDouble(J)D
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getFloat(J)F
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getIndex()J
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getLink(J)J
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getLinkList(J)Lio/realm/internal/LinkView;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getLong(J)J
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getString(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isNull(J)Z
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isNullLink(J)Z
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public nullifyLink(J)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setBinaryByteArray(J[B)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setBoolean(JZ)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setDate(JLjava/util/Date;)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setDouble(JD)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setFloat(JF)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setLink(JJ)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setLong(JJ)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setNull(J)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setString(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lio/realm/internal/InvalidRow;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
