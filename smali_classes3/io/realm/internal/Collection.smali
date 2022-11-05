.class public Lio/realm/internal/Collection;
.super Ljava/lang/Object;
.source "Collection.java"

# interfaces
.implements Lio/realm/internal/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/Collection$Mode;,
        Lio/realm/internal/Collection$Aggregate;,
        Lio/realm/internal/Collection$d;,
        Lio/realm/internal/Collection$c;,
        Lio/realm/internal/Collection$a;,
        Lio/realm/internal/Collection$e;,
        Lio/realm/internal/Collection$b;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field public static final AGGREGATE_FUNCTION_AVERAGE:B = 0x3t

.field public static final AGGREGATE_FUNCTION_MAXIMUM:B = 0x2t

.field public static final AGGREGATE_FUNCTION_MINIMUM:B = 0x1t

.field public static final AGGREGATE_FUNCTION_SUM:B = 0x4t

.field public static final MODE_EMPTY:B = 0x0t

.field public static final MODE_LINKVIEW:B = 0x3t

.field public static final MODE_QUERY:B = 0x2t

.field public static final MODE_TABLE:B = 0x1t

.field public static final MODE_TABLEVIEW:B = 0x4t

.field private static final nativeFinalizerPtr:J


# instance fields
.field private final context:Lio/realm/internal/d;

.field private isSnapshot:Z

.field private loaded:Z

.field private final nativePtr:J

.field private final observerPairs:Lio/realm/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/i",
            "<",
            "Lio/realm/internal/Collection$b;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedRealm:Lio/realm/internal/SharedRealm;

.field private final table:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 251
    invoke-static {}, Lio/realm/internal/Collection;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/Collection;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/LinkView;Lio/realm/internal/SortDescriptor;)V
    .locals 4

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/Collection;->isSnapshot:Z

    .line 257
    new-instance v0, Lio/realm/internal/i;

    invoke-direct {v0}, Lio/realm/internal/i;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/i;

    .line 345
    invoke-virtual {p1}, Lio/realm/internal/SharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p2}, Lio/realm/internal/LinkView;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Lio/realm/internal/Collection;->nativeCreateResultsFromLinkView(JJLio/realm/internal/SortDescriptor;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    .line 348
    iput-object p1, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 349
    iget-object v0, p1, Lio/realm/internal/SharedRealm;->f:Lio/realm/internal/d;

    iput-object v0, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/d;

    .line 350
    invoke-virtual {p2}, Lio/realm/internal/LinkView;->d()Lio/realm/internal/Table;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    .line 351
    iget-object v0, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/d;

    invoke-virtual {v0, p0}, Lio/realm/internal/d;->a(Lio/realm/internal/g;)V

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/Collection;->loaded:Z

    .line 355
    return-void
.end method

.method private constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Table;J)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-boolean v1, p0, Lio/realm/internal/Collection;->isSnapshot:Z

    .line 257
    new-instance v0, Lio/realm/internal/i;

    invoke-direct {v0}, Lio/realm/internal/i;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/i;

    .line 358
    iput-object p1, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 359
    iget-object v0, p1, Lio/realm/internal/SharedRealm;->f:Lio/realm/internal/d;

    iput-object v0, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/d;

    .line 360
    iput-object p2, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    .line 361
    iput-wide p3, p0, Lio/realm/internal/Collection;->nativePtr:J

    .line 362
    iget-object v0, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/d;

    invoke-virtual {v0, p0}, Lio/realm/internal/d;->a(Lio/realm/internal/g;)V

    .line 363
    iput-boolean v1, p0, Lio/realm/internal/Collection;->loaded:Z

    .line 364
    return-void
.end method

.method public constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/TableQuery;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 341
    invoke-direct {p0, p1, p2, v0, v0}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)V

    .line 342
    return-void
.end method

.method public constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;)V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)V

    .line 338
    return-void
.end method

.method public constructor <init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-boolean v6, p0, Lio/realm/internal/Collection;->isSnapshot:Z

    .line 257
    new-instance v0, Lio/realm/internal/i;

    invoke-direct {v0}, Lio/realm/internal/i;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/i;

    .line 323
    invoke-virtual {p2}, Lio/realm/internal/TableQuery;->b()V

    .line 325
    invoke-virtual {p1}, Lio/realm/internal/SharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p2}, Lio/realm/internal/TableQuery;->getNativePtr()J

    move-result-wide v2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Collection;->nativeCreateResults(JJLio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    .line 329
    iput-object p1, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 330
    iget-object v0, p1, Lio/realm/internal/SharedRealm;->f:Lio/realm/internal/d;

    iput-object v0, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/d;

    .line 331
    invoke-virtual {p2}, Lio/realm/internal/TableQuery;->a()Lio/realm/internal/Table;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    .line 332
    iget-object v0, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/d;

    invoke-virtual {v0, p0}, Lio/realm/internal/d;->a(Lio/realm/internal/g;)V

    .line 333
    iput-boolean v6, p0, Lio/realm/internal/Collection;->loaded:Z

    .line 334
    return-void
.end method

.method static synthetic access$000(Lio/realm/internal/Collection;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lio/realm/internal/Collection;->isSnapshot:Z

    return v0
.end method

.method static synthetic access$100(Lio/realm/internal/Collection;)Lio/realm/internal/SharedRealm;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    return-object v0
.end method

.method private static native nativeAggregate(JJB)Ljava/lang/Object;
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeContains(JJ)Z
.end method

.method private static native nativeCreateResults(JJLio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)J
.end method

.method private static native nativeCreateResultsFromLinkView(JJLio/realm/internal/SortDescriptor;)J
.end method

.method private static native nativeCreateSnapshot(J)J
.end method

.method private static native nativeDelete(JJ)V
.end method

.method private static native nativeDeleteFirst(J)Z
.end method

.method private static native nativeDeleteLast(J)Z
.end method

.method private static native nativeDistinct(JLio/realm/internal/SortDescriptor;)J
.end method

.method private static native nativeFirstRow(J)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetMode(J)B
.end method

.method private static native nativeGetRow(JI)J
.end method

.method private static native nativeIndexOf(JJ)J
.end method

.method private static native nativeIndexOfBySourceRowIndex(JJ)J
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeLastRow(J)J
.end method

.method private static native nativeSize(J)J
.end method

.method private static native nativeSort(JLio/realm/internal/SortDescriptor;)J
.end method

.method private native nativeStartListening(J)V
.end method

.method private native nativeStopListening(J)V
.end method

.method private static native nativeWhere(J)J
.end method

.method private notifyChangeListeners(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 499
    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/realm/internal/Collection;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-boolean v0, p0, Lio/realm/internal/Collection;->loaded:Z

    .line 503
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/realm/internal/Collection;->loaded:Z

    .line 507
    iget-object v1, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/i;

    new-instance v2, Lio/realm/internal/Collection$a;

    cmp-long v3, p1, v4

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {v2, v0}, Lio/realm/internal/Collection$a;-><init>(Lio/realm/g;)V

    invoke-virtual {v1, v2}, Lio/realm/internal/i;->a(Lio/realm/internal/i$a;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lio/realm/internal/CollectionChangeSet;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/CollectionChangeSet;-><init>(J)V

    goto :goto_1
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;Lio/realm/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/h",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/i;

    invoke-virtual {v0}, Lio/realm/internal/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Collection;->nativeStartListening(J)V

    .line 468
    :cond_0
    new-instance v0, Lio/realm/internal/Collection$b;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/Collection$b;-><init>(Lio/realm/internal/Collection;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    iget-object v1, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/i;

    invoke-virtual {v1, v0}, Lio/realm/internal/i;->a(Lio/realm/internal/i$b;)V

    .line 470
    return-void
.end method

.method public addListener(Ljava/lang/Object;Lio/realm/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, Lio/realm/internal/Collection$e;

    invoke-direct {v0, p2}, Lio/realm/internal/Collection$e;-><init>(Lio/realm/o;)V

    invoke-virtual {p0, p1, v0}, Lio/realm/internal/Collection;->addListener(Ljava/lang/Object;Lio/realm/h;)V

    .line 474
    return-void
.end method

.method public aggregateDate(Lio/realm/internal/Collection$Aggregate;J)Ljava/util/Date;
    .locals 4

    .prologue
    .line 419
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/Collection$Aggregate;->getValue()B

    move-result v2

    invoke-static {v0, v1, p2, p3, v2}, Lio/realm/internal/Collection;->nativeAggregate(JJB)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public aggregateNumber(Lio/realm/internal/Collection$Aggregate;J)Ljava/lang/Number;
    .locals 4

    .prologue
    .line 415
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/Collection$Aggregate;->getValue()B

    move-result v2

    invoke-static {v0, v1, p2, p3, v2}, Lio/realm/internal/Collection;->nativeAggregate(JJB)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 427
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeClear(J)V

    .line 428
    return-void
.end method

.method public contains(Lio/realm/internal/UncheckedRow;)Z
    .locals 4

    .prologue
    .line 439
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Collection;->nativeContains(JJ)Z

    move-result v0

    return v0
.end method

.method public createSnapshot()Lio/realm/internal/Collection;
    .locals 6

    .prologue
    .line 367
    iget-boolean v0, p0, Lio/realm/internal/Collection;->isSnapshot:Z

    if-eqz v0, :cond_0

    .line 372
    :goto_0
    return-object p0

    .line 370
    :cond_0
    new-instance v0, Lio/realm/internal/Collection;

    iget-object v1, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v2, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    iget-wide v4, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v4, v5}, Lio/realm/internal/Collection;->nativeCreateSnapshot(J)J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Table;J)V

    .line 371
    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/realm/internal/Collection;->isSnapshot:Z

    move-object p0, v0

    .line 372
    goto :goto_0
.end method

.method public delete(J)V
    .locals 3

    .prologue
    .line 453
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/Collection;->nativeDelete(JJ)V

    .line 454
    return-void
.end method

.method public deleteFirst()Z
    .locals 2

    .prologue
    .line 457
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeDeleteFirst(J)Z

    move-result v0

    return v0
.end method

.method public deleteLast()Z
    .locals 2

    .prologue
    .line 461
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeDeleteLast(J)Z

    move-result v0

    return v0
.end method

.method public distinct(Lio/realm/internal/SortDescriptor;)Lio/realm/internal/Collection;
    .locals 6

    .prologue
    .line 435
    new-instance v0, Lio/realm/internal/Collection;

    iget-object v1, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v2, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    iget-wide v4, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v4, v5, p1}, Lio/realm/internal/Collection;->nativeDistinct(JLio/realm/internal/SortDescriptor;)J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method public firstUncheckedRow()Lio/realm/internal/UncheckedRow;
    .locals 4

    .prologue
    .line 390
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeFirstRow(J)J

    move-result-wide v0

    .line 391
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->g(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMode()Lio/realm/internal/Collection$Mode;
    .locals 2

    .prologue
    .line 512
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeGetMode(J)B

    move-result v0

    invoke-static {v0}, Lio/realm/internal/Collection$Mode;->a(B)Lio/realm/internal/Collection$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .prologue
    .line 382
    sget-wide v0, Lio/realm/internal/Collection;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 377
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    return-wide v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    return-object v0
.end method

.method public getUncheckedRow(I)Lio/realm/internal/UncheckedRow;
    .locals 4

    .prologue
    .line 386
    iget-object v0, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    iget-wide v2, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v2, v3, p1}, Lio/realm/internal/Collection;->nativeGetRow(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->g(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(J)I
    .locals 5

    .prologue
    .line 448
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/Collection;->nativeIndexOfBySourceRowIndex(JJ)J

    move-result-wide v0

    .line 449
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public indexOf(Lio/realm/internal/UncheckedRow;)I
    .locals 4

    .prologue
    .line 443
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Collection;->nativeIndexOf(JJ)J

    move-result-wide v0

    .line 444
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    long-to-int v0, v0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lio/realm/internal/Collection;->loaded:Z

    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 493
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeIsValid(J)Z

    move-result v0

    return v0
.end method

.method public lastUncheckedRow()Lio/realm/internal/UncheckedRow;
    .locals 4

    .prologue
    .line 398
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeLastRow(J)J

    move-result-wide v0

    .line 399
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->g(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 531
    iget-boolean v0, p0, Lio/realm/internal/Collection;->loaded:Z

    if-eqz v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 534
    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Collection;->notifyChangeListeners(J)V

    goto :goto_0
.end method

.method public removeAllListeners()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/i;

    invoke-virtual {v0}, Lio/realm/internal/i;->b()V

    .line 489
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Collection;->nativeStopListening(J)V

    .line 490
    return-void
.end method

.method public removeListener(Ljava/lang/Object;Lio/realm/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/h",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/i;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lio/realm/internal/Collection;->observerPairs:Lio/realm/internal/i;

    invoke-virtual {v0}, Lio/realm/internal/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/Collection;->nativeStopListening(J)V

    .line 481
    :cond_0
    return-void
.end method

.method public removeListener(Ljava/lang/Object;Lio/realm/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 484
    new-instance v0, Lio/realm/internal/Collection$e;

    invoke-direct {v0, p2}, Lio/realm/internal/Collection$e;-><init>(Lio/realm/o;)V

    invoke-virtual {p0, p1, v0}, Lio/realm/internal/Collection;->removeListener(Ljava/lang/Object;Lio/realm/h;)V

    .line 485
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 423
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public sort(Lio/realm/internal/SortDescriptor;)Lio/realm/internal/Collection;
    .locals 6

    .prologue
    .line 431
    new-instance v0, Lio/realm/internal/Collection;

    iget-object v1, p0, Lio/realm/internal/Collection;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v2, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    iget-wide v4, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v4, v5, p1}, Lio/realm/internal/Collection;->nativeSort(JLio/realm/internal/SortDescriptor;)J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lio/realm/internal/Collection;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method public where()Lio/realm/internal/TableQuery;
    .locals 5

    .prologue
    .line 410
    iget-wide v0, p0, Lio/realm/internal/Collection;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/Collection;->nativeWhere(J)J

    move-result-wide v0

    .line 411
    new-instance v2, Lio/realm/internal/TableQuery;

    iget-object v3, p0, Lio/realm/internal/Collection;->context:Lio/realm/internal/d;

    iget-object v4, p0, Lio/realm/internal/Collection;->table:Lio/realm/internal/Table;

    invoke-direct {v2, v3, v4, v0, v1}, Lio/realm/internal/TableQuery;-><init>(Lio/realm/internal/d;Lio/realm/internal/Table;J)V

    return-object v2
.end method
