.class public Lcom/facebook/ads/internal/e/c;
.super Lcom/facebook/ads/internal/e/g;


# static fields
.field public static final a:Lcom/facebook/ads/internal/e/b;

.field public static final b:Lcom/facebook/ads/internal/e/b;

.field public static final c:Lcom/facebook/ads/internal/e/b;

.field public static final d:Lcom/facebook/ads/internal/e/b;

.field public static final e:Lcom/facebook/ads/internal/e/b;

.field public static final f:Lcom/facebook/ads/internal/e/b;

.field public static final g:Lcom/facebook/ads/internal/e/b;

.field public static final h:Lcom/facebook/ads/internal/e/b;

.field public static final i:[Lcom/facebook/ads/internal/e/b;

.field private static final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/facebook/ads/internal/e/b;

    const-string v1, "event_id"

    const-string v2, "TEXT PRIMARY KEY"

    invoke-direct {v0, v4, v1, v2}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/c;->a:Lcom/facebook/ads/internal/e/b;

    new-instance v0, Lcom/facebook/ads/internal/e/b;

    const-string v1, "token_id"

    const-string v2, "TEXT REFERENCES tokens ON UPDATE CASCADE ON DELETE RESTRICT"

    invoke-direct {v0, v5, v1, v2}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/c;->b:Lcom/facebook/ads/internal/e/b;

    new-instance v0, Lcom/facebook/ads/internal/e/b;

    const-string v1, "priority"

    const-string v2, "INTEGER"

    invoke-direct {v0, v6, v1, v2}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/c;->c:Lcom/facebook/ads/internal/e/b;

    new-instance v0, Lcom/facebook/ads/internal/e/b;

    const-string v1, "type"

    const-string v2, "TEXT"

    invoke-direct {v0, v7, v1, v2}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/c;->d:Lcom/facebook/ads/internal/e/b;

    new-instance v0, Lcom/facebook/ads/internal/e/b;

    const-string v1, "time"

    const-string v2, "REAL"

    invoke-direct {v0, v8, v1, v2}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/c;->e:Lcom/facebook/ads/internal/e/b;

    new-instance v0, Lcom/facebook/ads/internal/e/b;

    const/4 v1, 0x5

    const-string v2, "session_time"

    const-string v3, "REAL"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/c;->f:Lcom/facebook/ads/internal/e/b;

    new-instance v0, Lcom/facebook/ads/internal/e/b;

    const/4 v1, 0x6

    const-string v2, "session_id"

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/c;->g:Lcom/facebook/ads/internal/e/b;

    new-instance v0, Lcom/facebook/ads/internal/e/b;

    const/4 v1, 0x7

    const-string v2, "data"

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/c;->h:Lcom/facebook/ads/internal/e/b;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/facebook/ads/internal/e/b;

    sget-object v1, Lcom/facebook/ads/internal/e/c;->a:Lcom/facebook/ads/internal/e/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/e/c;->b:Lcom/facebook/ads/internal/e/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/e/c;->c:Lcom/facebook/ads/internal/e/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/internal/e/c;->d:Lcom/facebook/ads/internal/e/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/internal/e/c;->e:Lcom/facebook/ads/internal/e/b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/ads/internal/e/c;->f:Lcom/facebook/ads/internal/e/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/ads/internal/e/c;->g:Lcom/facebook/ads/internal/e/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/ads/internal/e/c;->h:Lcom/facebook/ads/internal/e/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/internal/e/c;->i:[Lcom/facebook/ads/internal/e/b;

    const-string v0, "events"

    sget-object v1, Lcom/facebook/ads/internal/e/c;->i:[Lcom/facebook/ads/internal/e/b;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/e/c;->a(Ljava/lang/String;[Lcom/facebook/ads/internal/e/b;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/e/c;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/e/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/e/g;-><init>(Lcom/facebook/ads/internal/e/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "events"

    return-object v0
.end method

.method a(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    sget-object v0, Lcom/facebook/ads/internal/e/c;->a:Lcom/facebook/ads/internal/e/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/ads/internal/e/c;->b:Lcom/facebook/ads/internal/e/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/ads/internal/e/c;->c:Lcom/facebook/ads/internal/e/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/facebook/ads/internal/e/c;->d:Lcom/facebook/ads/internal/e/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/ads/internal/e/c;->e:Lcom/facebook/ads/internal/e/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    sget-object v0, Lcom/facebook/ads/internal/e/c;->f:Lcom/facebook/ads/internal/e/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    sget-object v0, Lcom/facebook/ads/internal/e/c;->g:Lcom/facebook/ads/internal/e/b;

    iget-object v0, v0, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/ads/internal/e/c;->h:Lcom/facebook/ads/internal/e/b;

    iget-object v4, v0, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    if-eqz p9, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p9}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "events"

    invoke-virtual {v0, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-object v2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "events"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/facebook/ads/internal/e/c;->a:Lcom/facebook/ads/internal/e/b;

    iget-object v5, v5, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b()[Lcom/facebook/ads/internal/e/b;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/e/c;->i:[Lcom/facebook/ads/internal/e/b;

    return-object v0
.end method

.method c()Landroid/database/Cursor;
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/c;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/c;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
