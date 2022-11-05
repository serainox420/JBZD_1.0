.class public Lcom/facebook/ads/internal/e/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/ads/internal/e/h;

.field private final c:Lcom/facebook/ads/internal/e/c;

.field private d:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/e/d;->a:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/internal/e/h;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/e/h;-><init>(Lcom/facebook/ads/internal/e/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/e/d;->b:Lcom/facebook/ads/internal/e/h;

    new-instance v0, Lcom/facebook/ads/internal/e/c;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/e/c;-><init>(Lcom/facebook/ads/internal/e/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/e/d;->c:Lcom/facebook/ads/internal/e/c;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/e/d;)Lcom/facebook/ads/internal/e/h;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->b:Lcom/facebook/ads/internal/e/h;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/e/d;)Lcom/facebook/ads/internal/e/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->c:Lcom/facebook/ads/internal/e/c;

    return-object v0
.end method

.method private declared-synchronized g()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/e/e;

    iget-object v1, p0, Lcom/facebook/ads/internal/e/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/internal/e/e;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/e/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/e/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call getDatabase from the UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/e/d;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/ads/internal/e/f;Lcom/facebook/ads/internal/e/a;)Landroid/os/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/ads/internal/e/f",
            "<TT;>;",
            "Lcom/facebook/ads/internal/e/a",
            "<TT;>;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/ads/internal/e/d$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/internal/e/d$1;-><init>(Lcom/facebook/ads/internal/e/d;Lcom/facebook/ads/internal/e/f;Lcom/facebook/ads/internal/e/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/h;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/ads/internal/g/d;Lcom/facebook/ads/internal/e/a;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/g/d;",
            "Lcom/facebook/ads/internal/e/a",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/ads/internal/e/d$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/e/d$2;-><init>(Lcom/facebook/ads/internal/e/d;Lcom/facebook/ads/internal/g/d;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/internal/e/d;->a(Lcom/facebook/ads/internal/e/f;Lcom/facebook/ads/internal/e/a;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->c:Lcom/facebook/ads/internal/e/c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/e/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/d;->c()[Lcom/facebook/ads/internal/e/g;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/facebook/ads/internal/e/g;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/e/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_1
    return-void
.end method

.method public c()[Lcom/facebook/ads/internal/e/g;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/internal/e/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d;->b:Lcom/facebook/ads/internal/e/h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d;->c:Lcom/facebook/ads/internal/e/c;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public d()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->c:Lcom/facebook/ads/internal/e/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/c;->c()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->b:Lcom/facebook/ads/internal/e/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/h;->c()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->b:Lcom/facebook/ads/internal/e/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/h;->f()V

    return-void
.end method
