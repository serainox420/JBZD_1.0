.class public Lio/realm/internal/LinkView;
.super Ljava/lang/Object;
.source "LinkView.java"

# interfaces
.implements Lio/realm/internal/g;


# static fields
.field private static final e:J


# instance fields
.field final a:Lio/realm/internal/Table;

.field final b:J

.field private final c:Lio/realm/internal/d;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lio/realm/internal/LinkView;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/LinkView;->e:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/d;Lio/realm/internal/Table;JJ)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/realm/internal/LinkView;->c:Lio/realm/internal/d;

    .line 34
    iput-object p2, p0, Lio/realm/internal/LinkView;->a:Lio/realm/internal/Table;

    .line 35
    iput-wide p3, p0, Lio/realm/internal/LinkView;->b:J

    .line 36
    iput-wide p5, p0, Lio/realm/internal/LinkView;->d:J

    .line 38
    invoke-virtual {p1, p0}, Lio/realm/internal/d;->a(Lio/realm/internal/g;)V

    .line 39
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lio/realm/internal/LinkView;->a:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changing Realm data can only be done from inside a write transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    return-void
.end method

.method public static native nativeAdd(JJ)V
.end method

.method public static native nativeClear(J)V
.end method

.method private native nativeFind(JJ)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeGetTargetRowIndex(JJ)J
.end method

.method private native nativeGetTargetTable(J)J
.end method

.method private native nativeInsert(JJJ)V
.end method

.method private native nativeIsAttached(J)Z
.end method

.method private native nativeIsEmpty(J)Z
.end method

.method private native nativeMove(JJJ)V
.end method

.method private native nativeRemove(JJ)V
.end method

.method private native nativeRemoveAllTargetRows(J)V
.end method

.method private native nativeRemoveTargetRow(JJ)V
.end method

.method private native nativeSet(JJJ)V
.end method

.method private native nativeSize(J)J
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .prologue
    .line 81
    iget-wide v0, p0, Lio/realm/internal/LinkView;->d:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeGetTargetRowIndex(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lio/realm/internal/LinkView;->f()V

    .line 111
    iget-wide v0, p0, Lio/realm/internal/LinkView;->d:J

    invoke-static {v0, v1}, Lio/realm/internal/LinkView;->nativeClear(J)V

    .line 112
    return-void
.end method

.method public a(JJ)V
    .locals 9

    .prologue
    .line 90
    invoke-direct {p0}, Lio/realm/internal/LinkView;->f()V

    .line 91
    iget-wide v2, p0, Lio/realm/internal/LinkView;->d:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/LinkView;->nativeInsert(JJJ)V

    .line 92
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lio/realm/internal/LinkView;->d:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/LinkView;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 85
    invoke-direct {p0}, Lio/realm/internal/LinkView;->f()V

    .line 86
    iget-wide v0, p0, Lio/realm/internal/LinkView;->d:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeAdd(JJ)V

    .line 87
    return-void
.end method

.method public b(JJ)V
    .locals 9

    .prologue
    .line 95
    invoke-direct {p0}, Lio/realm/internal/LinkView;->f()V

    .line 96
    iget-wide v2, p0, Lio/realm/internal/LinkView;->d:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lio/realm/internal/LinkView;->nativeSet(JJJ)V

    .line 97
    return-void
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 105
    invoke-direct {p0}, Lio/realm/internal/LinkView;->f()V

    .line 106
    iget-wide v0, p0, Lio/realm/internal/LinkView;->d:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeRemove(JJ)V

    .line 107
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lio/realm/internal/LinkView;->d:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/LinkView;->nativeIsAttached(J)Z

    move-result v0

    return v0
.end method

.method public d()Lio/realm/internal/Table;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lio/realm/internal/LinkView;->a:Lio/realm/internal/Table;

    return-object v0
.end method

.method public e()Lio/realm/internal/Table;
    .locals 4

    .prologue
    .line 160
    iget-wide v0, p0, Lio/realm/internal/LinkView;->d:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/LinkView;->nativeGetTargetTable(J)J

    move-result-wide v0

    .line 161
    new-instance v2, Lio/realm/internal/Table;

    iget-object v3, p0, Lio/realm/internal/LinkView;->a:Lio/realm/internal/Table;

    invoke-direct {v2, v3, v0, v1}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/Table;J)V

    .line 162
    return-object v2
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .prologue
    .line 49
    sget-wide v0, Lio/realm/internal/LinkView;->e:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lio/realm/internal/LinkView;->d:J

    return-wide v0
.end method

.method native nativeGetRow(JJ)J
.end method

.method protected native nativeWhere(J)J
.end method
