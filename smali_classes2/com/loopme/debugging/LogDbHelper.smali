.class public Lcom/loopme/debugging/LogDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LogDbHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "LoopMeLogs.db"

.field public static final DATABASE_VERSION:I = 0x1

.field static final ID:Ljava/lang/String; = "id"

.field static final LOG:Ljava/lang/String; = "log"

.field private static final MAX_ROW_COUNT:I = 0x3e8

.field private static final TABLE_CREATE:Ljava/lang/String; = "create table loopme_logs (id integer primary key autoincrement,log text not null);"

.field private static final TABLE_NAME:Ljava/lang/String; = "loopme_logs"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 29
    const-string v0, "LoopMeLogs.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/loopme/debugging/LogDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 81
    const-string v1, "loopme_logs"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public getCount(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2

    .prologue
    .line 56
    const-string v0, "SELECT  * FROM loopme_logs"

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 60
    return v1
.end method

.method public getLogs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const-string v1, "SELECT  * FROM loopme_logs"

    .line 67
    invoke-virtual {p0}, Lcom/loopme/debugging/LogDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 68
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 76
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 34
    const-string v0, "create table loopme_logs (id integer primary key autoincrement,log text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 39
    const-string v0, "DROP TABLE IF EXISTS loopme_logs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/loopme/debugging/LogDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    return-void
.end method

.method public putLog(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/loopme/debugging/LogDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/loopme/debugging/LogDbHelper;->getCount(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 47
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 48
    const-string v2, "log"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "loopme_logs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/loopme/debugging/LogDbHelper;->clear()V

    goto :goto_0
.end method
