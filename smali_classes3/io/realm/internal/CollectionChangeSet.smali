.class public Lio/realm/internal/CollectionChangeSet;
.super Ljava/lang/Object;
.source "CollectionChangeSet.java"

# interfaces
.implements Lio/realm/g;
.implements Lio/realm/internal/g;


# static fields
.field private static a:J


# instance fields
.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lio/realm/internal/CollectionChangeSet;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/CollectionChangeSet;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lio/realm/internal/CollectionChangeSet;->b:J

    .line 46
    sget-object v0, Lio/realm/internal/d;->a:Lio/realm/internal/d;

    invoke-virtual {v0, p0}, Lio/realm/internal/d;->a(Lio/realm/internal/g;)V

    .line 47
    return-void
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetIndices(JI)[I
.end method

.method private static native nativeGetRanges(JI)[I
.end method


# virtual methods
.method public getNativeFinalizerPtr()J
    .locals 2

    .prologue
    .line 107
    sget-wide v0, Lio/realm/internal/CollectionChangeSet;->a:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lio/realm/internal/CollectionChangeSet;->b:J

    return-wide v0
.end method
