.class public Lcom/facebook/ads/internal/e/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private final a:Lcom/facebook/ads/internal/e/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/e/d;)V
    .locals 3

    const-string v0, "ads.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AdDatabaseHelper can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/internal/e/e;->a:Lcom/facebook/ads/internal/e/d;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/e/e;->a:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/d;->c()[Lcom/facebook/ads/internal/e/g;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/internal/e/g;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/e/e;->a:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/d;->c()[Lcom/facebook/ads/internal/e/g;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/internal/e/g;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v3, p1}, Lcom/facebook/ads/internal/e/g;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const-string v0, "DROP TABLE IF EXISTS \'crashes\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
