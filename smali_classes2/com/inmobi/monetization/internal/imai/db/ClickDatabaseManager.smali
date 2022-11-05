.class public Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;
.super Lcom/inmobi/commons/db/DatabaseHandler;
.source "ClickDatabaseManager.java"


# static fields
.field public static final COLUMN_CLICK_ID:Ljava/lang/String; = "clickid"

.field public static final COLUMN_CLICK_URL:Ljava/lang/String; = "clickurl"

.field public static final COLUMN_FOLLOW_REDIRECT:Ljava/lang/String; = "followredirect"

.field public static final COLUMN_PINGWV:Ljava/lang/String; = "pingwv"

.field public static final COLUMN_RETRY_COUNT:Ljava/lang/String; = "retrycount"

.field public static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TABLE_CLICK:Ljava/lang/String; = "clickevent"

.field private static a:Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;


# instance fields
.field private b:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/commons/db/TableData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/inmobi/commons/db/DatabaseHandler;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 22
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->b:I

    .line 33
    return-void
.end method

.method private static a()Lcom/inmobi/commons/db/TableData;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 53
    new-instance v0, Lcom/inmobi/commons/db/TableData;

    invoke-direct {v0}, Lcom/inmobi/commons/db/TableData;-><init>()V

    .line 54
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    new-instance v2, Lcom/inmobi/commons/db/ColumnData;

    invoke-direct {v2}, Lcom/inmobi/commons/db/ColumnData;-><init>()V

    .line 57
    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setPrimaryKey(Z)V

    .line 58
    sget-object v3, Lcom/inmobi/commons/db/ColumnData$ColumnType;->INTEGER:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/db/ColumnData;->setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V

    .line 59
    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setMandatory(Z)V

    .line 60
    const-string v3, "clickid"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v2, Lcom/inmobi/commons/db/ColumnData;

    invoke-direct {v2}, Lcom/inmobi/commons/db/ColumnData;-><init>()V

    .line 64
    sget-object v3, Lcom/inmobi/commons/db/ColumnData$ColumnType;->VARCHAR:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/db/ColumnData;->setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V

    .line 65
    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setMandatory(Z)V

    .line 66
    const-string v3, "clickurl"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v2, Lcom/inmobi/commons/db/ColumnData;

    invoke-direct {v2}, Lcom/inmobi/commons/db/ColumnData;-><init>()V

    .line 70
    sget-object v3, Lcom/inmobi/commons/db/ColumnData$ColumnType;->INTEGER:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/db/ColumnData;->setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V

    .line 71
    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setMandatory(Z)V

    .line 72
    const-string v3, "pingwv"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v2, Lcom/inmobi/commons/db/ColumnData;

    invoke-direct {v2}, Lcom/inmobi/commons/db/ColumnData;-><init>()V

    .line 76
    sget-object v3, Lcom/inmobi/commons/db/ColumnData$ColumnType;->INTEGER:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/db/ColumnData;->setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V

    .line 77
    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setMandatory(Z)V

    .line 78
    const-string v3, "followredirect"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v2, Lcom/inmobi/commons/db/ColumnData;

    invoke-direct {v2}, Lcom/inmobi/commons/db/ColumnData;-><init>()V

    .line 82
    sget-object v3, Lcom/inmobi/commons/db/ColumnData$ColumnType;->INTEGER:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/db/ColumnData;->setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V

    .line 83
    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setMandatory(Z)V

    .line 84
    const-string v3, "retrycount"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v2, Lcom/inmobi/commons/db/ColumnData;

    invoke-direct {v2}, Lcom/inmobi/commons/db/ColumnData;-><init>()V

    .line 88
    sget-object v3, Lcom/inmobi/commons/db/ColumnData$ColumnType;->INTEGER:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/db/ColumnData;->setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V

    .line 89
    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setMandatory(Z)V

    .line 90
    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v0, v1}, Lcom/inmobi/commons/db/TableData;->setmColumns(Ljava/util/LinkedHashMap;)V

    .line 94
    const-string v1, "clickevent"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/db/TableData;->setmTableName(Ljava/lang/String;)V

    .line 95
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;
    .locals 4

    .prologue
    .line 37
    const-class v1, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->a:Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-static {}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->a()Lcom/inmobi/commons/db/TableData;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v2, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    sput-object v2, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->a:Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;

    .line 43
    :cond_0
    sget-object v0, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->a:Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :goto_0
    monitor-exit v1

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    :try_start_1
    const-string v2, "[InMobi]-[Monetization]"

    const-string v3, "Exception getting DB Manager Instance"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized deleteClickEvents(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 161
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->open()V

    .line 164
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 165
    const-string v0, "clickevent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clickid = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 175
    :try_start_1
    const-string v2, "[InMobi]-[Monetization]"

    const-string v3, "Exception deleting click events"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 176
    :goto_1
    monitor-exit p0

    return v0

    .line 168
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 171
    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClickEvents(I)Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 128
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    invoke-direct {v1}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->open()V

    .line 131
    const-string v0, "clickevent"

    const-string v2, "timestamp"

    invoke-virtual {p0, v0, v2, p1}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->getNRows(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    :cond_0
    new-instance v2, Lcom/inmobi/monetization/internal/imai/db/ClickData;

    invoke-direct {v2}, Lcom/inmobi/monetization/internal/imai/db/ClickData;-><init>()V

    .line 136
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setClickId(J)V

    .line 137
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setClickUrl(Ljava/lang/String;)V

    .line 138
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v6, v3, :cond_1

    .line 139
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setPingWv(Z)V

    .line 142
    :goto_0
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v6, v3, :cond_2

    .line 143
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setFollowRedirect(Z)V

    .line 146
    :goto_1
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setRetryCount(I)V

    .line 147
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setTimestamp(J)V

    .line 148
    invoke-virtual {v1, v2}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :goto_2
    monitor-exit p0

    return-object v1

    .line 141
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v2, v3}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setPingWv(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    :try_start_3
    const-string v2, "[InMobi]-[Monetization]"

    const-string v3, "Failed to get clicks from db"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    :cond_2
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v2, v3}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setFollowRedirect(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getNoOfEvents()I
    .locals 4

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->open()V

    .line 217
    invoke-static {}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->getInstance()Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;

    move-result-object v0

    const-string v1, "clickevent"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->getNoOfRows(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 218
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return v0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Exception getting no of click events"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized insertClick(Lcom/inmobi/monetization/internal/imai/db/ClickData;)V
    .locals 6

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->open()V

    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    const-string v1, "timestamp"

    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v1, "clickurl"

    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "pingwv"

    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->isPingWv()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 107
    const-string v1, "retrycount"

    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->getRetryCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "followredirect"

    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->isFollowRedirects()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 110
    const-string v1, "clickevent"

    invoke-virtual {p0, v1}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->getTableSize(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->b:I

    if-lt v1, v2, :cond_0

    .line 112
    const-string v1, "SELECT clickid FROM clickevent WHERE timestamp= (SELECT MIN(timestamp) FROM clickevent Limit 1);"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->executeQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    const-string v1, "clickevent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    :cond_0
    const-string v1, "clickevent"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 120
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 123
    :try_start_1
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Failed to insert click event to db"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDBLimit(I)V
    .locals 0

    .prologue
    .line 209
    if-lez p1, :cond_0

    .line 210
    iput p1, p0, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->b:I

    .line 211
    :cond_0
    return-void
.end method

.method public declared-synchronized updateRetryCount(Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/monetization/internal/imai/db/ClickData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->open()V

    .line 186
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/internal/imai/db/ClickData;

    .line 187
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 188
    const-string v5, "clickid"

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->getClickId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v5, "clickurl"

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->getClickUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v5, "followredirect"

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->isFollowRedirects()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 191
    const-string v5, "pingwv"

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->isPingWv()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 192
    const-string v5, "retrycount"

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->getRetryCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v5, "timestamp"

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    const-string v5, "clickevent"

    const-string v6, "clickid= ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->getClickId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-virtual {p0, v5, v4, v6, v7}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 203
    :try_start_1
    const-string v1, "[InMobi]-[Monetization]"

    const-string v3, "Exception updating retry count"

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 204
    :goto_1
    monitor-exit p0

    return v0

    .line 196
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 197
    goto :goto_1

    :cond_1
    move v0, v2

    .line 199
    goto :goto_1

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
